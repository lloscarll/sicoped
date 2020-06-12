<?php
class Post extends CI_Controller {
    public function __construct() {
        parent::__construct();
        if(!isset($this->session->login['username'])) {
            $this->session->sess_destroy();
            $this->session->set_userdata('message', error("Access Denied!"));
                redirect('admin/login');
        }
        
    }

    public function index(){
        $data['judul'] = "Posting";
        $data['sub_judul'] = "Daftar Posting";
        $data['hasil'] = $this->Post_model->get_all();

        $data['contents'] = 'admin/post/view';
        $this->load->view('admin/layout/template', $data);
    }

    public function add(){
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $this->form_validation->set_rules('post_title', 'judul', 'trim|required|xss_clean');
            $this->form_validation->set_rules('post_description', 'isi', 'trim|required|xss_clean');

        if($this->form_validation->run() == FALSE){
            $data['err'] = error_admin(validation_errors());
            $tmp['contents'] = $this->load->view("admin/post/add", $data, TRUE);
        }else{
            $aksi = $this->Post_model->add();
            if($aksi){
                $this->session->set_flashdata("message", valid_admin("data berhasil di simpan"));
                redirect('admin/post','refresh');
            }else{
                $this->session->set_flashdata("message", valid_admin("gagal menyimpan data baru"));
                redirect('admin/post/add','refresh');
            }
        }
    }
    $data['judul'] = "Berita";
    $data['sub_judul'] = "Tambah Data Berita";
    $data['contents'] = 'admin/post/add';
    $data['hasil'] = $this->Post_model->get_category();
    $this->load->view('admin/layout/template', $data);
}

    public function edit($id=0){
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data_post = $this->Post_model->get_detail_by_id($id);
            if(count($data_post)>0){
                $aksi = $this->Post_model->update($id);
                if($aksi){
                    $this->session->set_flashdata("message",valid_admin("data berhasil di simpan"));
                    redirect('admin/post','refresh');
                }
            }else{
                    $this->session->set_flashdata("message",error_admin("data gagal di simpan"));
                    redirect('admin/post/edit/'.$id,'refresh');
            }
        }else{
            $data_post = $this->Post_model->get_detail_by_id($id);
            $data['judul'] = "Posting";
            $data['sub_judul'] = "Edit Data Post";
            $data['old_value'] = $this->Post_model->get_detail_by_id($id);
            $data['hasil'] = $this->Post_model->get_category();
            $data['contents'] = 'admin/post/edit';
            $this->load->view('admin/layout/template', $data);
        }
    }

     public function delete($id=0){
            $data_post = $this->Post_model->get_detail_by_id($id);
            if(count($data_post)>0){
                $aksi = $this->Post_model->delete($id);
                if($aksi){
                    $this->session->set_flashdata("message",valid_admin("data berhasil di hapus"));
                    redirect('admin/post','refresh');
                }else{
                    $this->session->set_flashdata("message",error_admin("data gagal di simpan karna salah query"));
                    redirect('admin/post/','refresh');
            }
            }else{
                $this->session->set_flashdata("message",error_admin("data gagal di hapus karna tidak ada data"));
                    redirect('admin/post/','refresh');
            }
    }
}
?>