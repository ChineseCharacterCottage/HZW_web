<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 19:04
 */
class Knowledge_model extends CI_Model {
    public function insert_new_knowledge($knowledge_info){
        if(isset($knowledge_info['title'])&&isset($knowledge_info['ktext'])&&isset($knowledge_info['video'])){
            $data['title']=$knowledge_info['title'];
            $data['ktext']=$knowledge_info['ktext'];
            $data['video']=$knowledge_info['video'];
            $this->db->insert('hzw_knowledge',$data);
            return true;
        }else
            return false;
    }
}