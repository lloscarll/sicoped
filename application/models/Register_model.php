<?php
class Register_model extends CI_Model {
    function __construct() {
        parent::__construct();
    }

    function add($data)
    {
        if($this->db->insert('pengguna', $data))
        {
            return  $this->db->insert_id();
        }
        else
        {
            return false;
        }
    }

    //Mengecek apakah sudah ada email yang sama
    function checkDuplicate($email)
    {
        $this->db->select('email');
        $this->db->from('pengguna');
        $this->db->like('email', $email);
        return $this->db->count_all_results();
    }

    //cek apakah kode aktifasi where email ada
    function get_activation_value($username) {
       $data = array();
        $this->db->select('activation');
        $this->db->where('username', $username);
        $Q = $this->db->get('pengguna');

        if($Q->num_rows()>0){
            $data = $Q->row_array();
        }

        $Q->free_result();
        return $data;
    }

    function verify_user($username) {
        $data = array('activation' => NULL);
        $this->db->where('username', $username);
        $this->db->update('pengguna', $data);
    }
}
?>