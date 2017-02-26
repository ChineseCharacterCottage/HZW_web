<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/26
 * Time: 13:31
 */
class Test_hear_chose_model extends CI_Model
{
    /**
     * test_info:choice_a-d、correct_choice
     * @param $test_info
     * @return bool|CI_DB_active_record|CI_DB_result
     */
    public function insert_new_test($test_info){
        if(isset($test_info['choice_a'])&&isset($test_info['choice_b'])&&isset($test_info['choice_c'])
            &&isset($test_info['choice_d']) &&isset($test_info['correct_choice'])){
            $this->load->model('Character_model');
            $data['correct_choice']=strtolower($test_info['correct_choice']);
            $picture_char_a=$this->Character_model->get_character_by_shape($test_info['choice_a']);
            $picture_char_b=$this->Character_model->get_character_by_shape($test_info['choice_b']);
            $picture_char_c=$this->Character_model->get_character_by_shape($test_info['choice_c']);
            $picture_char_d=$this->Character_model->get_character_by_shape($test_info['choice_d']);
            if(isset($picture_char_a)&&isset($picture_char_b)&&isset($picture_char_c)&&isset($picture_char_d)){
                switch ($data['correct_choice']){
                    case 'a':$relation_char=$picture_char_a;break;
                    case 'b':$relation_char=$picture_char_b;break;
                    case 'c':$relation_char=$picture_char_c;break;
                    case 'd':$relation_char=$picture_char_d;break;
                    default: $relation_char=$picture_char_a;
                }
                $data['picture_a']=$picture_char_a['ID'].'.jpg';
                $data['picture_b']=$picture_char_b['ID'].'.jpg';
                $data['picture_c']=$picture_char_c['ID'].'.jpg';
                $data['picture_d']=$picture_char_d['ID'].'.jpg';
                $data['pronunciation']=$relation_char['pinyin'].'.mp3';
                $data['relation_character_id']=$relation_char['ID'];
                return $this->db->insert('hzw_test_hear_choice',$data);
            }
        }
        return false;
    }

}