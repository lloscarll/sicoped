<?php

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $data['title'] = 'Jasa Pembuatan Website';
        $this->load->view('front/page/home', $data);
    }  
}
