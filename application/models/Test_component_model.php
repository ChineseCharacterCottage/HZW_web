<?php
/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/8/4
 * Time: 19:32
 */

class Test_component_model extends CI_Model{
    public function insert_new_test($test_info){
        if(isset($test_info['choice_a'])&&isset($test_info['choice_b'])
            &&isset($test_info['choice_c'])&&isset($test_info['choice_d'])
            &&isset($test_info['correct_choice'])&&isset($test_info['component_shape'])&&isset($test_info['voice_or_shape'])){
            $this->load->model('Component_model');
            $relation_component=$this->db
                ->where(array('shape'=>$test_info['component_shape'],'voice_or_shape'=>$test_info['voice_or_shape']))
                ->get('hzw_component')
                ->row_array();
            if(!empty($relation_component)){
                $data['comp_id']=$relation_component['ID'];
                $data['choice_a']=$test_info['choice_a'];
                $data['choice_b']=$test_info['choice_b'];
                $data['choice_c']=$test_info['choice_c'];
                $data['choice_d']=$test_info['choice_d'];
                $data['correct_ans']=$test_info['correct_choice'];
                $this->db->insert('hzw_test_component',$data);
                return true;
            }
        }

        return false;
    }

}