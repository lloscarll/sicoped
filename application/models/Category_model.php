<?php
class Category_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function get_detail_by_id($id){
        $data = array();
        $this->db->select('*');
        $this->db->where('post_category.post_category_id', $id);
        $Q = $this->db->get('post_category');

        if($Q->num_rows()>0){
            $data = $Q->row_array();
        }

        $Q->free_result();
        return $data;
    }

    function add(){
        $data = array(
            'category_name' => $this->input->post('category_name'),
            'category_description' => $this->input->post('category_description'),
            );
        $action = $this->db->insert('post_category', $data);
        return $action;
    }

    function update($id){
        $data = array(
            'category_name' => $this->input->post('category_name'),
            'category_description' => $this->input->post('category_description'),
            );
        $this->db->where('post_category_id',$id);
        $action = $this->db->update('post_category', $data);
        return $action;
    }

    function delete($id){
        $this->db->where('post_category_id',$id);
        $action = $this->db->delete('post_category');
        return $action;
    }
}
?>