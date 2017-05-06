<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/12
 * Time: 14:03
 */
class Radical_input extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Radical_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function index(){
        $this->form_validation->set_rules('radical_shape', 'radical_shape', 'trim|callback_radical_check');
        $this->form_validation->set_rules('radical_name', 'radical_name', 'trim|required', array('required' => '请输入部首名'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));

        $result=false;
        if($this->form_validation->run()){
            $data=$this->input->post();
            $result=$this->Radical_model->insert_new_radical($data);
        }
        $this->load->view('character_input/radical_input',array('result'=>$result));
    }

    public function radical_check($radical_shape){
        if (empty($radical_shape)) {
            $this->form_validation->set_message('radical_check', '请输入部首字形');
            return false;
        }
        $radical=$this->Radical_model->get_radical_by_shape($radical_shape);
        if($radical!=null){
            $this->form_validation->set_message('radical_check', '该部首已经录入');
            return false;
        }else
            return true;
    }
}