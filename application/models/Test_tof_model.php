<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/26
 * Time: 13:31
 */
class Test_tof_model extends CI_Model
{
    /**
     * test_info:character_shape、picture_char、tof
     * @param $test_info
     * @return bool|CI_DB_active_record|CI_DB_result
     */
    public function insert_new_test($test_info){
        if(isset($test_info['character_shape'])&&isset($test_info['picture_char'])&&isset($test_info['tof'])){
            $this->load->model('Character_model');
            $relation_char=$this->Character_model->get_character_by_shape($test_info['character']);
            $picture_char=$this->Character_model->get_character_by_shape($test_info['picture_char']);
            if($relation_char!=null&&$picture_char!=null){
                $data['tof']=$test_info['tof'];
                $data['relation_character_id']=$relation_char['ID'];
                $data['character_shape']=$relation_char['character_shape'];
                $data['picture']=$picture_char['ID'].'.jpg';
                return $this->db->insert('hzw_test_tof',$data);
            }
        }
        return false;
    }

}