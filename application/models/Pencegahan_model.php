<?php
class Pencegahan_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function get_all($number,$offset){
        $data = array();
        $this->db->select('*');
        $this->db->where('pencegahan.pencegahan_posting_by = admin.id_user');
        $this->db->where('pencegahan.post_category_id = post_category.post_category_id');
        $this->db->where('pencegahan.pencegahan_status = "Publish"');
        $this->db->order_by('pencegahan.pencegahan_id desc');
        $Q = $this->db->get('pencegahan, admin, post_category',$number,$offset);

        if($Q->num_rows()>0){
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }

        $Q->free_result();
        return $data;
    }

    function jumlah_data(){
        return $this->db->get('pencegahan')->num_rows();
    }


    function get_detail_by_slug($slug){
        $data = array();
        $this->db->select('*');
        $this->db->where('pencegahan.pencegahan_posting_by = admin.id_user');
        $this->db->where('pencegahan.post_category_id = post_category.post_category_id');
        $this->db->where('pencegahan.pencegahan_slug', $slug);
        $Q = $this->db->get('pencegahan, admin, post_category');

        if($Q->num_rows()>0){
            $data = $Q->row_array();
        }

        $Q->free_result();
        return $data;
    }

}

?>