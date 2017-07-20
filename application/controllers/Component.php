<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 17:48
 */
class Component extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Component_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function input(){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入偏旁字形'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));
        $this->form_validation->set_rules('voice_or_shape', 'voice_or_shape', 'trim|required', array('required' => '请选择偏旁类型'));
        $this->form_validation->set_rules('explanation', 'explanation', 'trim|required', array('required' => '请输入偏旁说明'));
        $result=false;
        if($this->form_validation->run()){
            $result= $this->Component_model->insert_new_component($this->input->post());
        }
        $this->load->view('template/header',['title'=>'部件输入']);
        $this->load->view('character_input/component_input',['controller'=>'Component/input','result'=>$result]);
        $this->load->view('template/footer');
    }

    public function update($id){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入偏旁字形'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));
        $this->form_validation->set_rules('voice_or_shape', 'voice_or_shape', 'trim|required', array('required' => '请选择偏旁类型'));
        $this->form_validation->set_rules('explanation', 'explanation', 'trim|required', array('required' => '请输入偏旁说明'));
        $result=false;
        if($this->form_validation->run()){
            $result= $this->Component_model->update_component($id,$this->input->post());
        }

        $shape=$this->Component_model->get_component_by_id($id)['shape'];
        $this->load->view('template/header',['title'=>'重新输入部件']);
        $this->load->view('character_input/component_input',['shape'=>$shape,'controller'=>'Component/update/'.$id,'result'=>$result]);
        $this->load->view('template/footer');
    }

    public function search(){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入字形'));
        $this->form_validation->set_rules('model', 'model', 'trim|required', array('required' => '请选择模式'));

        $this->load->view('template/header',['title'=>'部件搜索']);
        $this->load->view('template/search_form',['controller'=>'Component/search']);

        if($this->form_validation->run()) {
            $component = $this->Component_model->get_component_by_shape($this->input->post('shape'));
            if (!empty($component)) {
                $component_id = $component['ID'];
                $number = 1;
                switch ($this->input->post('model')) {
                    case 1:
                        $number = 1;
                        break;
                    case 2:
                        $component_id -= 10;
                        $number = 20;
                        break;
                    case 3:
                        $component_id -= 30;
                        $number = 60;
                        break;
                    case 4:
                        $number = 20;
                        break;
                    case 5:
                        $number = 50;
                        break;
                }
                $components = $this->Component_model->get_component_list_by_id($component_id, $number);
                $this->load->view('search/component_search',['components'=>$components]);
            }else{
                $this->load->view('search/component_search');
            }
        }

        $this->load->view('template/footer');
    }

    public function delete($id){
        if($this->Character_model->delete($id)==false)
            echo 'fail';
        else
            echo 'success';
    }

}