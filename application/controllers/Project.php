<?php

class Project extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('Project_model');
    }

    public function index($page='') {
        $jumlah_data = $this->Project_model->jumlah_data();
        $this->load->library('pagination');
        $config['base_url'] = base_url().'project/home/index';
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = 8;
        $this->pagination->initialize($config);

        $data['title'] = 'Project';
        $data['contents'] = 'front/project/project_view'; 
        $data['hasil'] = $this->Project_model->get_all($config['per_page'],$page);
        $this->load->view('front/layout/template', $data);
    }
    public function detail($slug){
        $data['title'] = 'Project';
    	$data['detail'] = $this->Project_model->get_detail_by_slug($slug);
        $data['contents'] = 'front/project/project_detail';
        $this->load->view('front/layout/template', $data);
    }
}
