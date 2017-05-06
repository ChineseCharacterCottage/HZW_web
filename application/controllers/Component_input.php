<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 17:48
 */
class Component_input extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Component_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function index(){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入偏旁字形'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));
        $this->form_validation->set_rules('voice_or_shape', 'voice_or_shape', 'trim|required', array('required' => '请选择偏旁类型'));
        $this->form_validation->set_rules('explanation', 'explanation', 'trim|required', array('required' => '请输入偏旁说明'));
        $result=false;
        if($this->form_validation->run()){
            $result= $this->Component_model->insert_new_component($this->input->post());
            //$result=true;
        }
        $this->load->view('character_input/component_input',array('result'=>$result));
    }
}