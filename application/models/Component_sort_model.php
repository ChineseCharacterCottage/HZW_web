<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/8/4
 * Time: 21:01
 */
class Component_sort_model extends CI_Model {
    public function insert_new_component($component_info){
        if(isset($component_info['component_shape'])&&isset($component_info['voice_or_shape'])){
            $component=$this->db
                ->where(array('shape'=>$component_info['component_shape'],'voice_or_shape'=>$component_info['voice_or_shape']))
                ->get('hzw_component')
                ->row_array();
            if(!empty($component)){
                $component_test=$this->db->get_where('hzw_test_component',['comp_id'=>$component['ID']])->row_array();
                if(!empty($component_test)){
                    $this->db->insert('hzw_comp_sort',['comp_id'=>$component['ID']]);
                    return true;
                }
            }
        }
        return false;
    }

    public function update_component($order,$component_info){
        if(isset($component_info['component_shape'])&&isset($component_info['voice_or_shape'])) {
            $component=$this->db
                ->where(array('shape'=>$component_info['component_shape'],'voice_or_shape'=>$component_info['voice_or_shape']))
                ->get('hzw_component')
                ->row_array();
            if(!empty($component)){
                $component_test=$this->db->get_where('hzw_test_component',['comp_id'=>$component['ID']])->row_array();
                if(!empty($component_test)) {
                    $this->db->where('c_order', $order)->set('comp_id', $component['ID'])->update('hzw_comp_sort');
                    return true;
                }
            }
        }
        return false;
    }

    public function get_component_by_order($order){
        $sql='SELECT ID, explanation, shape, voice_or_shape, c_order
            FROM hzw_component,hzw_comp_sort
            WHERE hzw_component.ID=hzw_comp_sort.comp_id AND c_order=?';
        return $this->db->query($sql,[$order])->row_array();
    }

    public function get_component_list_by_order($order,$number){
        $sql='SELECT ID, explanation, shape, voice_or_shape, c_order
            FROM hzw_component,hzw_comp_sort
            WHERE hzw_component.ID=hzw_comp_sort.comp_id AND c_order>=?
            LIMIT ?';
        return $this->db->query($sql,[$order,$number])->result_array();
    }
}