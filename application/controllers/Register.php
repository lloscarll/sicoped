<?php
class Register extends CI_Controller {
    public function __construct() {
        parent::__construct();
        $this->load->model('Register_model'); 
    }

    public function index(){
       $data['title'] = 'Create New Account';
        $data['contents'] = 'front/page/register';
        $this->load->view('front/layout/template_no_sidebar', $data);
    }

    public function add(){
        $data['title'] = 'Create New Account';
        $data['contents'] = 'front/page/register';

        $this->form_validation->set_rules('fname', 'First Name', 'trim|required|regex_match[/^[a-z]{1,20}$/]');
        $this->form_validation->set_rules('lname', 'Last Name', 'trim|required|regex_match[/^[a-z]{1,20}$/]');
        $this->form_validation->set_rules('gender', 'Gender', 'trim|required');
        $this->form_validation->set_rules('username', 'Username', 'trim|required|regex_match[/^[A-Za-z]{4,11}[A-Za-z0-9]{0,4}$/]');
        $this->form_validation->set_rules('password', 'Password', 'trim|required|regex_match[/^[a-z]{1,20}/i]');
        
        $this->form_validation->set_error_delimiters('<div class="alert alert-error">
                  <button type="button" class="close" data-dismiss="alert">&times;</button>
                  <strong>Oh snap!</strong> ', '</div>');
        
        if ($this->form_validation->run() == FALSE)
        {
            $this->load->view('front/layout/template_no_sidebar', $data);
        }
        else
        {
            $fname = $this->security->xss_clean($this->input->post('fname'));
            $lname = $this->security->xss_clean($this->input->post('lname'));
            $gender = $this->security->xss_clean($this->input->post('gender'));
            $username = $this->security->xss_clean($this->input->post('username'));
            $email = $this->security->xss_clean($this->input->post('email'));
            $password = $this->security->xss_clean($this->input->post('password'));
            $options = array("cost"=>4);
            $hashPassword = password_hash($password,PASSWORD_BCRYPT,$options);

            date_default_timezone_set('Asia/Jakarta');
            $tgl_sekarang = date('Y-m-d H:i:s');
            $activation = md5(rand(0, 1000));
            
            $insertData = array('fname'=>$fname,
                                'lname'=>$lname,
                                'gender'=>$gender,
                                'username'=>$username,
                                'email'=>$email,
                                'pass'=>$hashPassword,
                                'tgl_daftar' => $tgl_sekarang,
                                'activation' => $activation
                                );
                                
            
            $checkDuplicate = $this->Register_model->checkDuplicate($email);
            
            if($checkDuplicate == 0)
            {
                $insertUser = $this->Register_model->add($insertData);
            
                if($insertUser)
                {
                    $data['successMsg'] = 'Success registration. Click activation link that we have send to your email to activate your account';
                    $this->load->view('front/layout/template_no_sidebar', $data);
                    $this->send_confirmation($email,$fname,$username,$activation);
                }
                else
                {
                    $data['errorMsg'] = 'Unable to save user. Please try again';
                    $this->load->view('front/layout/template_no_sidebar', $data);
                }
            }
            else
            {
                $data['errorMsg'] = 'User email alreary exists';
                $this->load->view('front/layout/template_no_sidebar', $data);
            }
        }
    }

    function send_confirmation($email,$fname,$username,$activation) {
      $this->load->library('email'); 
      $this->email->from('admin@zivicode.com', 'Admin'); //sender's email
      $address = $email;   //receiver's email
      $subject="Welcome to Zivicode!";    //subject
      $message=
        'Thanks for signing up, '.$fname.'!
      
        Your account has been created.
        Please click this link to activate your account:
            
        ' . base_url() . 'register/verify/'. $username . '/' . $activation ;

      $this->email->to($address);
      $this->email->subject($subject);
      $this->email->message($message);
      $this->email->send();
    }

    function verify($username='',$activation='') {
        $data['title'] = 'Create New Account';
        $data['contents'] = 'front/page/register';

         $result = $this->Register_model->get_activation_value($username); 
         if($result){ 
            if($result['activation']==$activation){
                $this->Register_model->verify_user($username);
                redirect('login','refresh');
            }else{
                $data['errorMsg'] = 'Your activation link is wrong';
                $this->load->view('front/layout/template_no_sidebar', $data);
            }
         }else{
                $data['errorMsg'] = 'Your activation link is wrong';
                $this->load->view('front/layout/template_no_sidebar', $data);
            }
    }


     public function edit($id=0){
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data_post = $this->Category_model->get_detail_by_id($id);
            if(count($data_post)>0){
                $aksi = $this->Category_model->update($id);
                if($aksi){
                    $this->session->set_flashdata("message",valid_admin("data berhasil di simpan"));
                    redirect('admin/post_category','refresh');
                }
            }else{
                    $this->session->set_flashdata("message",error_admin("data gagal di simpan"));
                    redirect('admin/post_category/edit/'.$id,'refresh');
            }
        }else{
            $data_post = $this->Category_model->get_detail_by_id($id);
            $data['judul'] = "Category";
            $data['sub_judul'] = "Edit Data Category";
            $data['old_value'] = $this->Category_model->get_detail_by_id($id);
            $data['contents'] = 'admin/category/edit';
            $this->load->view('admin/layout/template', $data);
        }
    }
}
?>