<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/25
 * Time: 21:16
 */
class Test_input extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function index(){
        $this->load->view('test_input/index');
    }

    public function hear_chose(){
        $this->load->model('Test_hear_chose_model');
        $this->form_validation->set_rules('choice_a', 'choice_a', 'trim|required', array('required' => '请输入选项A'));
        $this->form_validation->set_rules('choice_b', 'choice_b', 'trim|required', array('required' => '请输入选项B'));
        $this->form_validation->set_rules('choice_c', 'choice_c', 'trim|required', array('required' => '请输入选项C'));
        $this->form_validation->set_rules('choice_d', 'choice_d', 'trim|required', array('required' => '请输入选项D'));
        $this->form_validation->set_rules('correct_choice', 'correct_choice', 'trim|required', array('required' => '请选择正确选项'));

        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result=$this->Test_hear_chose_model->insert_new_test($this->input->post());
            if(!$result)
                $result_msg='请确认以上汉字已经被输入字库';
            else
                $result_msg='上传成功';
        }

        $this->load->view('test_input/hear_chose',array('result'=>$result,'result_msg'=>$result_msg));

    }

    public function hear_tof(){
        $this->load->model('Test_hear_tof_model');

        $this->form_validation->set_rules('pronunciation_char', 'pronunciation_char', 'trim|required', array('required' => '请输入发音字'));
        $this->form_validation->set_rules('picture_char', 'picture_char', 'trim|required', array('required' => '请输入图片对应字'));
        $this->form_validation->set_rules('tof', 'tof', 'trim|required', array('required' => '请选择是否正确'));

        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result=$this->Test_hear_tof_model->insert_new_test($this->input->post());
            if(!$result)
                $result_msg='请确认以上汉字已经被输入字库';
            else
                $result_msg='上传成功';
        }

        $this->load->view('test_input/hear_tof',array('result'=>$result,'result_msg'=>$result_msg));
    }

    public function tof(){
        $this->load->model('Test_tof_model');

        $this->form_validation->set_rules('character_shape', 'character_shape', 'trim|required', array('required' => '请输入发音字'));
        $this->form_validation->set_rules('picture_char', 'picture_char', 'trim|required', array('required' => '请输入图片对应字'));
        $this->form_validation->set_rules('tof', 'tof', 'trim|required', array('required' => '请选择是否正确'));

        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result=$this->Test_tof_model->insert_new_test($this->input->post());
            if(!$result)
                $result_msg='请确认以上汉字已经被输入字库';
            else
                $result_msg='上传成功';
        }

        $this->load->view('test_input/tof',array('result'=>$result,'result_msg'=>$result_msg));
    }

    public function fill(){
        $this->load->model('Test_fill_model');

        for($i=1;$i <= 5;$i++){
            $this->form_validation->set_rules('choice'.$i, 'choice'.$i, 'trim|required', array('required' => '请输入字'.$i));
            $this->form_validation->set_rules('sentence'.$i, 'sentence'.$i, 'trim|required', array('required' => '请输入题目'.$i));
        }

        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result=$this->Test_fill_model->insert_new_test($this->input->post());
            if(!$result)
                $result_msg='上传出现错误，请重试';
            else
                $result_msg='上传成功';
        }

        $this->load->view('test_input/fill',array('result'=>$result,'result_msg'=>$result_msg));

    }
}