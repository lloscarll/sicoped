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
        $data['title'] = 'Deteksi Mandiri Covid-19';
        $data['contents'] = 'front/deteksi/deteksi_view';
        $this->load->library('pagination');
        $config['base_url'] = base_url().'deteksi/home/index';
        $config['per_page'] = 4;
        $this->pagination->initialize($config); 
        $this->load->library('calendar', $calendar);
        $data['calendar'] = $this->calendar->generate($years, $month);
        $this->load->view('front/layout/template', $data);
        
        
    }
}