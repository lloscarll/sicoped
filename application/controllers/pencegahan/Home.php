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
        $data['title'] = 'Pencegahan Covid-19';
        $data['contents'] = 'front/pencegahan/pencegahan_view';
        $jumlah_data = $this->Pencegahan_model->jumlah_data();
        $this->load->library('pagination');
        $config['base_url'] = base_url().'pencegahan/home/index';
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = 4;
        $this->pagination->initialize($config); 
        $this->load->library('calendar', $calendar);
        $data['calendar'] = $this->calendar->generate($years, $month);
        $data['hasil'] = $this->Pencegahan_model->get_all($config['per_page'],$page);
        $this->load->view('front/layout/template', $data);
    }
    public function detail($slug, $years = null, $month = null){
        $calendar = array(
                'start_day'       => 'monday',
                'show_next_prev'  => TRUE,
                'next_prev_url'   => base_url().'calendar/detail');
        $data['title'] = 'Detail Pencegahan Covid-19';
    	$data['detail'] = $this->Pencegahan_model->get_detail_by_slug($slug);
        $data['contents'] = 'front/pencegahan/pencegahan_detail';
        $this->load->library('calendar', $calendar);
        $data['calendar'] = $this->calendar->generate($years, $month);
        $this->load->view('front/layout/template', $data);
    }
   
}


