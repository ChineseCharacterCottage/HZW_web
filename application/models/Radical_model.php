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
            $this->db->insert('hzw_radical',$data);
            return true;
        }
        else
            return false;
    }

    public function update_radical($id,$radical_info){
        if(isset($radical_info['radical_shape'])&&isset($radical_info['radical_name'])&&isset($radical_info['characters'])){
            $data['radical_shape']=$radical_info['radical_shape'];
            $data['radical_name']=$radical_info['radical_name'];
            $data['characters']=$radical_info['characters'];
            $this->db->where('ID',$id)->update('hzw_radical',$data);
            return true;
        }
        else
            return false;
    }

    public function get_radical_by_shape($radical_shape=-1){
        if($radical_shape==-1)
            return null;
        else
            return $this->db->get_where('hzw_radical',array('radical_shape'=>$radical_shape))->row_array();
    }

    public function get_radical_by_id($id){
        return $this->db->get_where('hzw_radical',array('ID'=>$id))->row_array();
    }

    public function get_radical_list_by_id($id,$number){
        return $this->db->limit($number)->where('ID>=',$id)->get('hzw_radical')->result_array();
    }

    public function delete($id){
        return $this->db->where('ID',$id)->delete('hzw_radical');
    }
}