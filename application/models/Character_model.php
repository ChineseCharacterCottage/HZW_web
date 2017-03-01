<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/11
 * Time: 11:56
 */
class Character_model extends CI_Model
{
    /**
     * $character_info:character_shape、pinyin、words、sentence、explanation、radical_id
     * @param $character_info
     * @return bool
     */
    public function insert_new_character($character_info){
        if(isset($character_info['character_shape'])&&isset($character_info['pinyin'])&&isset($character_info['words'])
            &&isset($character_info['sentence'])&&isset($character_info['explanation'])&&isset($character_info['radical_id'])){
            $data['character_shape']=$character_info['character_shape'];
            $data['pinyin']=$character_info['pinyin'];
            $data['words']=$character_info['words'];
            $data['sentence']=$character_info['sentence'];
            $data['explanation']=$character_info['explanation'];
            $data['radical_id']=$character_info['radical_id'];
            return $this->db->insert('hzw_character',$data);
        }
        else
            return false;
    }

    public function get_character_by_shape($char_shape=-1){
        if($char_shape==-1)
            return null;
        else
            return $this->db->get_where('hzw_character',array('character_shape'=>$char_shape))->row_array();
    }

    public function get_character_by_pinyin($char_pinyin=-1){
        if($char_pinyin==-1)
            return null;
        else
            return $this->db->get_where('hzw_character',array('pinyin'=>$char_pinyin))->row_array();
    }
}