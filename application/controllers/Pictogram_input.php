<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 19:11
 */
class Pictogram_input extends CI_Controller {

    //视频文件地址
    var $file_path;
    //临时存储汉字
    var $character;

    public function __construct(){
        parent::__construct();
        $this->load->helper('url');
        $this->load->model('Character_model');
        $this->load->model('Pictogram_model');
        $this->load->library('form_validation');
        $this->file_path=FCPATH.'video/';
    }
    
    public function index(){
        $this->form_validation->set_rules('character', 'character', 'trim|callback_character_check');
        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            if($_FILES['video']['error']==0&&$_FILES['video']['type']=='video/3gpp'){
                move_uploaded_file($_FILES['video']['tmp_name'],$this->file_path.'pictogram_'.$this->character['id'].'.mp3');
                $this->Pictogram_model->insert_new_pictogram(array('CID'=>$this->character['id'],'video'=>'pictogram_'.$this->character['id'].'.mp3'));
                $result=true;
                $result_msg="上传成功";
            }else{
                $result_msg="请检查视频文件是否符合要求";
            }
        }

        $this->load->view('character_input/pictogram_input',array('result'=>$result,'result_msg'=>$result_msg));
    }

    public function character_check($character_shape){
        if(empty($character_shape)){
            $this->form_validation->set_message('character_check', '请输入字形');
            return false;
        }
        $character=$this->Character_model->get_character_by_shape($character_shape);
        if($character==null){
            $this->form_validation->set_message('character_check', '该字还没有录入库中');
            return false;
        }
        else{
            $this->character=$character;
            return true;
        }
    }
}