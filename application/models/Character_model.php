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
            $this->db->insert('hzw_character',$data);
            return true;
        }
        else
            return false;
    }

    public function update_character($update_id,$character_info){
        if(isset($character_info['character_shape'])&&isset($character_info['pinyin'])&&isset($character_info['words'])
            &&isset($character_info['sentence'])&&isset($character_info['explanation'])&&isset($character_info['radical_id'])){
            $data['character_shape']=$character_info['character_shape'];
            $data['pinyin']=$character_info['pinyin'];
            $data['words']=$character_info['words'];
            $data['sentence']=$character_info['sentence'];
            $data['explanation']=$character_info['explanation'];
            $data['radical_id']=$character_info['radical_id'];
            $this->db->where('ID',$update_id)->set($data)->update('hzw_character');
            return true;
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

    public function get_character_by_id($id=-1){
        if($id==-1)
            return null;
        else
            return $this->db->get_where('hzw_character',array('ID'=>$id))->row_array();
    }

    public function get_character_list_by_id($id,$number){
        $sql='SELECT hzw_character.ID as ID,character_shape,pinyin,words,sentence,explanation,radical_shape
            FROM hzw_character,hzw_radical
            WHERE hzw_character.ID>=? AND hzw_radical.ID=radical_id
            LIMIT ?';
        return $this->db->query($sql,[$id,$number])->result_array();
    }

    public function get_character_by_pinyin($char_pinyin=-1){
        if($char_pinyin==-1)
            return null;
        else
            return $this->db->get_where('hzw_character',array('pinyin'=>$char_pinyin))->row_array();
    }

    public function delete($id){
        return $this->db->where('ID',$id)->delete('hzw_character');
    }
}