<?php

class Home extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index($page='', $years = null, $month = null) {
        $calendar = array(
                'start_day'       => 'monday',
                'show_next_prev'  => TRUE,
                'next_prev_url'   => base_url().'calendar/index'); 
        $data['title'] = 'Berita Terkini Covid-19';
        $data['contents'] = 'front/blog/blog_view';
        $jumlah_data = $this->Blog_model->jumlah_data();
        $this->load->library('pagination');
        $config['base_url'] = base_url().'blog/home/index';
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = 4;
        $this->pagination->initialize($config); 

        $this->load->library('calendar', $calendar);
        $data['calendar'] = $this->calendar->generate($years, $month);

        $data['hasil'] = $this->Blog_model->get_all($config['per_page'],$page);
        $this->load->view('front/layout/template', $data);
        
        
    }


    public function detail($slug, $years = null, $month = null){
        $data['title'] = 'Detail Berita Covid-19';
        $calendar = array(
                'start_day'       => 'monday',
                'show_next_prev'  => TRUE,
                'next_prev_url'   => base_url().'calendar/detail'); 
    	$data['detail'] = $this->Blog_model->get_detail_by_slug($slug);
        $data['contents'] = 'front/blog/blog_detail';

         $this->load->library('calendar', $calendar);
        $data['calendar'] = $this->calendar->generate($years, $month);

        $this->load->view('front/layout/template', $data);
    }
 
   
}


