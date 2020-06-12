<?php

class User extends CI_Controller {

    public function __construct() {
        parent::__construct();

        if(!isset($this->session->login['username'])) {
            $this->session->sess_destroy();
            redirect('admin/login');
        }
        
    }

    public function index() {
        $tmp['title'] = 'Dashboard';
        $tmp['contents'] = 'admin/user/user_view';
        $this->load->view('admin/layout/template', $tmp);
    }
   
}


