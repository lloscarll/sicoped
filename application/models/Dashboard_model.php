<?php
class Dashboard_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function jml_post(){
        $data = array();
        $this->db->select('*');
        $Q = $this->db->get('post');

        $data = $Q->num_rows();
        return $data;
    }

    function jml_category(){
        $data = array();
        $this->db->select('*');
        $Q = $this->db->get('post_category');

        $data = $Q->num_rows();
        return $data;
    }

    function jml_post_publish(){
        $data = array();
        $this->db->select('*');
        $this->db->where('post.post_status = "Publish"');
        $Q = $this->db->get('post');

        $data = $Q->num_rows();
        return $data;
    }

}
?>