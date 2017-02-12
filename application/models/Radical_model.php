<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/11
 * Time: 13:08
 */
class Radical_model extends CI_Model
{
    /**
     * $radical_info:radical_shape、radical_name、characters
     * @param $radical_info
     * @return bool|CI_DB_active_record|CI_DB_result
     */
    public function insert_new_radical($radical_info){
        if(isset($radical_info['radical_shape'])&&isset($radical_info['radical_name'])&&isset($radical_info['characters'])){
            $data['radical_shape']=$radical_info['radical_shape'];
            $data['radical_name']=$radical_info['radical_name'];
            $data['characters']=$radical_info['characters'];
            return $this->db->insert('radical_learning',$data);
        }
        else
            return false;
    }

    public function get_radical_by_shape($radical_shape=-1){
        if($radical_shape==-1)
            return null;
        else
            return $this->db->get_where('radical_learning',array('radical_shape'=>$radical_shape))->row_array();
    }
}