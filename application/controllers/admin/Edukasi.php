<?php
class Edukasi extends CI_Controller {
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
        $data['hasil'] = $this->Postedukasi_model->get_all();

        $data['contents'] = 'admin/edukasi/view';
        $this->load->view('admin/layout/template', $data);
    }

    public function add(){
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $this->form_validation->set_rules('edukasi_judul', 'Title', 'trim|required|xss_clean');
            $this->form_validation->set_rules('edukasi_deskripsi', 'Content', 'trim|required|xss_clean');

        if($this->form_validation->run() == FALSE){
            $data['err'] = error_admin(validation_errors());
            $tmp['contents'] = $this->load->view("admin/edukasi/add", $data, TRUE);
        }else{
            $aksi = $this->Postedukasi_model->add();
            if($aksi){
                $this->session->set_flashdata("message", valid_admin("data berhasil di simpan"));
                redirect('admin/edukasi','refresh');
            }else{
                $this->session->set_flashdata("message", valid_admin("gagal menyimpan data baru"));
                redirect('admin/edukasi/add','refresh');
            }
        }
    }
    $data['judul'] = "Edukasi Covid";
    $data['sub_judul'] = "Tambah Data";
    $data['contents'] = 'admin/edukasi/add';
    $data['hasil'] = $this->Postedukasi_model->get_category();
    $this->load->view('admin/layout/template', $data);
}

    public function edit($id=0){
        if($_SERVER['REQUEST_METHOD'] == "POST"){
            $data_post = $this->Postedukasi_model->get_detail_by_id($id);
            if(count($data_post)>0){
                $aksi = $this->Postedukasi_model->update($id);
                if($aksi){
                    $this->session->set_flashdata("message",valid_admin("data berhasil di simpan"));
                    redirect('admin/edukasi','refresh');
                }
            }else{
                    $this->session->set_flashdata("message",error_admin("data gagal di simpan"));
                    redirect('admin/edukasi/edit/'.$id,'refresh');
            }
        }else{
            $data_post = $this->Postedukasi_model->get_detail_by_id($id);
            $data['judul'] = "Posting";
            $data['sub_judul'] = "Edit Data";
            $data['old_value'] = $this->Postedukasi_model->get_detail_by_id($id);
            $data['hasil'] = $this->Postedukasi_model->get_category();
            $data['contents'] = 'admin/edukasi/edit';
            $this->load->view('admin/layout/template', $data);
        }
    }

     public function delete($id=0){
            $data_post = $this->Postedukasi_model->get_detail_by_id($id);
            if(count($data_post)>0){
                $aksi = $this->Postedukasi_model->delete($id);
                if($aksi){
                    $this->session->set_flashdata("message",valid_admin("data berhasil di hapus"));
                    redirect('admin/edukasi','refresh');
                }else{
                    $this->session->set_flashdata("message",error_admin("data gagal di simpan karna salah query"));
                    redirect('admin/edukasi/','refresh');
            }
            }else{
                $this->session->set_flashdata("message",error_admin("data gagal di hapus karna tidak ada data"));
                    redirect('admin/edukasi/','refresh');
            }
    }
}
?>