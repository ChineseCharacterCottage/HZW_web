<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 17:43
 */
class Component_model extends CI_Model {

    /**
     * @param $component_info:shape、characters、voice_or_shape、explanation
     * @return bool
     */
    public function insert_new_component($component_info){
        if(isset($component_info['shape'])&&isset($component_info['characters'])
            &&isset($component_info['voice_or_shape'])&&isset($component_info['explanation'])){
            $data['shape']=$component_info['shape'];
            $data['characters']=$component_info['characters'];
            $data['voice_or_shape']=$component_info['voice_or_shape'];
            $data['explanation']=$component_info['explanation'];
            $this->db->insert('hzw_component',$data);
            return true;
        }else
            return false;
    }

    public function update_component($id,$component_info){
        if(isset($component_info['shape'])&&isset($component_info['characters'])
            &&isset($component_info['voice_or_shape'])&&isset($component_info['explanation'])){
            $data['shape']=$component_info['shape'];
            $data['characters']=$component_info['characters'];
            $data['voice_or_shape']=$component_info['voice_or_shape'];
            $data['explanation']=$component_info['explanation'];
            $this->db->where('ID',$id)->update('hzw_component',$data);
            return true;
        }else
            return false;
    }

    public function get_component_by_id($id){
        return $this->db->get_where('hzw_component',array('ID'=>$id))->row_array();
    }

    public function get_component_by_shape($component_shape){
        return $this->db->get_where('hzw_component',array('shape'=>$component_shape))->result_array();
    }

    public function get_component_list_by_id($id,$number){
        return $this->db->limit($number)->where('ID>=',$id)->get('hzw_component')->result_array();
    }

    public function delete($id){
        return $this->db->where('ID',$id)->delete('hzw_component');
    }

}