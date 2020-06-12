<?php

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();

        if(!isset($this->session->login['username'])) {
            $this->session->sess_destroy();
            redirect('admin/login');
        }
        
    }

    public function index() {
        $data['title'] = 'Dashboard';
        $data['contents'] = 'admin/dashboard/home';
        $data['jml_post'] = $this->Dashboard_model->jml_post();
        $data['jml_category'] = $this->Dashboard_model->jml_category();
        $data['jml_post_publish'] = $this->Dashboard_model->jml_post_publish();
        $this->load->view('admin/layout/template', $data);
    }
   
}


