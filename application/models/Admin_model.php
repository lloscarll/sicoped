<?php

class Admin_model extends CI_Model {

    public function auth($username, $password) {
        
        $sql = "SELECT * 
                FROM admin 
                WHERE username = ?
                AND pass = ? ";

        $binding = [ $username, $password ];
        return $this->db->query($sql, $binding);
    }

}

