<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/8/4
 * Time: 20:58
 */
class Main_learning extends CI_Controller{

    public function __construct(){
        parent::__construct();
        $this->load->model('Component_sort_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }


    public function insert(){
        $this->form_validation->set_rules('component_shape', 'component_shape', 'trim|required', array('required' => '请输入偏旁字形'));
        $this->form_validation->set_rules('voice_or_shape', 'voice_or_shape', 'trim|required', array('required' => '请选择偏旁类型'));
        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result= $this->Component_sort_model->insert_new_component($this->input->post());
            if($result)
                $result_msg="上传成功";
            else
                $result_msg='上传失败，请确定该部件及其测试题已经被录入';
        }
        $this->load->view('template/header',['title'=>'偏旁学习顺序输入']);
        $this->load->view('main_learning/order_input',['controller'=>'Main_learning/insert','result'=>$result,'result_msg'=>$result_msg]);
        $this->load->view('template/footer');
    }

    public function search(){
        $this->form_validation->set_rules('order', 'order', 'trim|required', array('required' => '请输入序号'));
        $this->form_validation->set_rules('model', 'model', 'trim|required', array('required' => '请选择模式'));

        $this->load->view('template/header',['title'=>'偏旁学习顺序搜索']);
        $this->load->view('main_learning/search_form',['controller'=>'Main_learning/search']);

        if($this->form_validation->run()) {
            $number = 1;
            $component_id=$this->input->post('order');
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
            $components =$this->Component_sort_model->get_component_list_by_order($component_id, $number);
            $this->load->view('main_learning/search_result',['components'=>$components]);
        }

        $this->load->view('template/footer');

    }
    public function update($order){
        $this->form_validation->set_rules('component_shape', 'component_shape', 'trim|required', array('required' => '请输入偏旁字形'));
        $this->form_validation->set_rules('voice_or_shape', 'voice_or_shape', 'trim|required', array('required' => '请选择偏旁类型'));
        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            $result= $this->Component_sort_model->update_component($order,$this->input->post());
            if($result)
                $result_msg="上传成功";
            else
                $result_msg='上传失败，请确定该部件及其测试题已经被录入';
        }

        $component_shape=null;
        $component=$this->Component_sort_model->get_component_by_order($order);
        if(!empty($component['shape']))
            $component_shape = $component['shape'];
        $this->load->view('template/header',['title'=>'重新输入部件学习顺序']);
        $this->load->view('main_learning/order_input',['component_shape'=>$component_shape,'controller'=>'Main_learning/update/'.$order,
            'result'=>$result,'result_msg'=>$result_msg]);
        $this->load->view('template/footer');
    }

}