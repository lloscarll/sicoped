<?php
class Postedukasi_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function get_all(){
        $data = array();
        $this->db->select('*');
        $this->db->where('edukasi.edukasi_posting_by = admin.id_user');
        $this->db->where('edukasi.post_category_id = post_category.post_category_id');
        $this->db->order_by('edukasi.edukasi_id desc');
        $Q = $this->db->get('edukasi, admin, post_category');

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
        $this->db->where('edukasi.edukasi_posting_by = admin.id_user');
        $this->db->where('edukasi.edukasi_id', $id);
        $Q = $this->db->get('edukasi, admin');

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

        $judul = $this->input->post('edukasi_judul');
        $string=preg_replace('/[^a-zA-Z0-9 &%|{.}=,?!*()"-_+$@;<>]/', '', $judul);
        $trim=trim($string);
        $pre_slug=strtolower(str_replace(" ", "-", $trim));
        $slug=$pre_slug.'.html';

        $data = array(
            'edukasi_judul' => "$judul",
            'edukasi_slug' => "$slug",
            'edukasi_deskripsi' => $this->input->post('edukasi_deskripsi'),
            'post_category_id' => $this->input->post('post_category'),
            'edukasi_posting_tgl' => "$tgl_sekarang",
            'edukasi_posting_by' => "$id_user",
            'edukasi_status' => $this->input->post('edukasi_status'),
            );
        $action = $this->db->insert('edukasi', $data);
        return $action;
    }

     function update($id){
        $data = array(
            'edukasi_judul' => $this->input->post('edukasi_judul'),
            'edukasi_deskripsi' => $this->input->post('edukasi_deskripsi'),
            'post_category_id' => $this->input->post('post_category'),
            'edukasi_status' => $this->input->post('edukasi_status'),
            );
        $this->db->where('edukasi_id',$id);
        $action = $this->db->update('edukasi', $data);
        return $action;
    }

    function delete($id){
        $this->db->where('edukasi_id',$id);
        $action = $this->db->delete('edukasi');
        return $action;
    }
}
?>