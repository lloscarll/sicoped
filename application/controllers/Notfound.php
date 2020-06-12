<?php

class Notfound extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        $data['title'] = 'Not Found';
        $this->load->view('front/page/404', $data);
    }  
}
