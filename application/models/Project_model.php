<?php
class Project_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function get_all($number,$offset){
        $data = array();
        $this->db->select('*');
        $this->db->where('project.project_posting_by = pengguna.id_pengguna');
        $this->db->order_by('project.project_id desc');
        $Q = $this->db->get('project, pengguna',$number,$offset);

        if($Q->num_rows()>0){
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }

        $Q->free_result();
        return $data;
    }

    function jumlah_data(){
        return $this->db->get('project')->num_rows();
    }


    function get_detail_by_slug($slug){
        $data = array();
        $this->db->select('*');
        $this->db->where('project.project_posting_by = pengguna.id_pengguna');
        $this->db->where('project.project_slug', $slug);
        $Q = $this->db->get('project, pengguna');

        if($Q->num_rows()>0){
            $data = $Q->row_array();
        }

        $Q->free_result();
        return $data;
    }

}

?>