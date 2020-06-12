<?php  if(! defined ('BASEPATH'))
exit ('No direct script access allowed');

	class Calendar extends CI_Controller{

		public function __construct() {
        parent::__construct();
    }
 
		public function index($years = null, $month = null)
		{
			$calendar = array(
				'start_day'		  => 'monday',
		        'show_next_prev'  => TRUE,
		        'next_prev_url'   => base_url().'calendar/index'
			); 
			$this->load->library('calendar', $calendar);

			$data['calendar'] = $this->calendar->generate($years, $month);

			$this->load->view('kalender_view', $data);
			
		}
 
	}