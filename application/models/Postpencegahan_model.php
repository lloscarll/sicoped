<?php
class Postpencegahan_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function get_all(){
        $data = array();
        $this->db->select('*');
        $this->db->where('pencegahan.pencegahan_posting_by = admin.id_user');
        $this->db->where('pencegahan.post_category_id = post_category.post_category_id');
        $this->db->order_by('pencegahan.pencegahan_id desc');
        $Q = $this->db->get('pencegahan, admin, post_category');

        if($Q->num_rows()>0){
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }

        $Q->free_result();
        return $data;
    }

    function get_detail_by_id($id){
        $data = array();
        $this->db->select('*');
        $this->db->where('pencegahan.pencegahan_posting_by = admin.id_user');
        $this->db->where('pencegahan.pencegahan_id', $id);
        $Q = $this->db->get('pencegahan, admin');

        if($Q->num_rows()>0){
            $data = $Q->row_array();
        }

        $Q->free_result();
        return $data;
    }

     function get_category(){
        $data = array();
        $this->db->select('*');
        $Q = $this->db->get('post_category');

        if($Q->num_rows()>0){
            foreach ($Q->result_array() as $row) {
                $data[] = $row;
            }
        }

        $Q->free_result();
        return $data;
    }

    function add(){
        date_default_timezone_set('Asia/Jakarta');
        $tgl_sekarang = date('Y-m-d H:i:s');

        $data = array();
        $this->db->select('*');
        $this->db->where('admin.username', $this->session->userdata("username"));
        $Q = $this->db->get('admin');

        if($Q->num_rows()>0){
            $data = $Q->row_array(); 
        }

        $Q->free_result();

        $id_user = "1";

        $judul = $this->input->post('pencegahan_judul');
        $string=preg_replace('/[^a-zA-Z0-9 &%|{.}=,?!*()"-_+$@;<>]/', '', $judul);
        $trim=trim($string);
        $pre_slug=strtolower(str_replace(" ", "-", $trim));
        $slug=$pre_slug.'.html';

        $data = array(
            'pencegahan_judul' => "$judul",
            'pencegahan_slug' => "$slug",
            'pencegahan_deskripsi' => $this->input->post('pencegahan_deskripsi'),
            'post_category_id' => $this->input->post('post_category'),
            'pencegahan_posting_tgl' => "$tgl_sekarang",
            'pencegahan_posting_by' => "$id_user",
            'pencegahan_status' => $this->input->post('pencegahan_status'),
            );
        $action = $this->db->insert('pencegahan', $data);
        return $action;
    }

     function update($id){
        $data = array(
            'pencegahan_judul' => $this->input->post('pencegahan_judul'),
            'pencegahan_deskripsi' => $this->input->post('pencegahan_deskripsi'),
            'post_category_id' => $this->input->post('post_category'),
            'pencegahan_status' => $this->input->post('pencegahan_status'),
            );
        $this->db->where('pencegahan_id',$id);
        $action = $this->db->update('pencegahan', $data);
        return $action;
    }

    function delete($id){
        $this->db->where('pencegahan_id',$id);
        $action = $this->db->delete('pencegahan');
        return $action;
    }
}
?>