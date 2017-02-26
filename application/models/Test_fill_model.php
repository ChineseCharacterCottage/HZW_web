<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/26
 * Time: 13:31
 */
class Test_fill_model extends CI_Model
{
    /**
     * test_info:choice1-5、sentence1-5 、correct_answer
     * @param $test_info
     * @return bool|CI_DB_active_record|CI_DB_result
     */
    public function insert_new_test($test_info){
        if(isset($test_info['choice1'])&&isset($test_info['choice2'])&&isset($test_info['choice3'])&&isset($test_info['choice4'])
            &&isset($test_info['choice5'])&&isset($test_info['sentence1'])&&isset($test_info['sentence2'])
            &&isset($test_info['sentence3'])&&isset($test_info['sentence4']) &&isset($test_info['sentence5'])
            &&isset($test_info['correct_order'])){
            $data['choice1']=$test_info['choice1'];
            $data['choice2']=$test_info['choice2'];
            $data['choice3']=$test_info['choice3'];
            $data['choice4']=$test_info['choice4'];
            $data['choice5']=$test_info['choice5'];
            $data['sentence1']=$test_info['sentence1'];
            $data['sentence2']=$test_info['sentence2'];
            $data['sentence3']=$test_info['sentence3'];
            $data['sentence4']=$test_info['sentence4'];
            $data['sentence5']=$test_info['sentence5'];
            $data['correct_order']=$test_info['correct_order'];
            return $this->db->insert('hzw_test_fill',$data);
        }else
            return false;
    }
}