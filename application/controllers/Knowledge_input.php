<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 19:11
 */
class Knowledge_input extends CI_Controller {

    //视频文件地址
    var $file_path;

    public function __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Character_model');
        $this->load->model('Knowledge_model');
        $this->load->library('form_validation');
        $this->file_path=FCPATH.'video/';
    }
    
    public function index(){
        $this->form_validation->set_rules('title', 'title', 'trim|required',array('required'=>"请输入标题"));
        $this->form_validation->set_rules('ktext', 'ktext', 'trim|required',array('required'=>"请输入内容"));
        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            if($_FILES['video']['error']==0&&$_FILES['video']['type']=='video/3gpp'){
                move_uploaded_file($_FILES['video']['tmp_name'],$this->file_path.'knowledge_'.$_FILES['video']['name'].'.mp3');
                $data=$this->input->post();
                $data['video']='knowledge_'.$_FILES['video']['name'].'.mp3';
                $this->Knowledge_model->insert_new_knowledge($data);
                $result=true;
                $result_msg="上传成功";
            }else{
                $result_msg="请检查视频文件是否符合要求";
            }
        }

        $this->load->view('character_input/knowledge_input',array('result'=>$result,'result_msg'=>$result_msg));
    }
}