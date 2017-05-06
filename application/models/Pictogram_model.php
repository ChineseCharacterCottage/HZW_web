<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 19:04
 */
class Pictogram_model extends CI_Model {
    public function insert_new_pictogram($pictogram_info){
        if(isset($pictogram_info['CID'])&&isset($pictogram_info['video'])){
            $data['CID']=$pictogram_info['CID'];
            $data['video']=$pictogram_info['video'];
            $this->db->insert('hzw_shape_character',$data);
            return true;
        }else
            return false;
    }
}