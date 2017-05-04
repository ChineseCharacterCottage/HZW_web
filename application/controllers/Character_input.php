<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/11
 * Time: 13:34
 */
class Character_input extends CI_Controller
{
    //用于临时存储部首信息
    var $radical = null;

    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Radical_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function index(){
        $this->form_validation->set_rules('character_shape', 'character_shape', 'trim|required', array('required' => '请输入汉字字形'));
        $this->form_validation->set_rules('pinyin', 'pinyin', 'trim|required', array('required' => '请输入汉字拼音'));
        $this->form_validation->set_rules('words', 'words', 'trim|required', array('required' => '请输入例词'));
        $this->form_validation->set_rules('sentence', 'sentence', 'trim|required', array('required' => '请输入例句'));
        $this->form_validation->set_rules('explanation', 'explanation', 'trim|required', array('required' => '请输入汉字释义'));
        $this->form_validation->set_rules('radical', 'radical', 'trim|required|callback_radical_check');

        $result=false;
        $result_msg='';
        if($this->form_validation->run()&&$_FILES['pronunciation']['type']=='mp3'&&$_FILES['pronunciation']['error']==0){
            $old_pinyin=$this->Character_model->get_character_by_pinyin($this->input->post('pinyin'));
            if($old_pinyin!=null||($_FILES['sentence_pronunciation']['type']=='mp3'&&$_FILES['sentence_pronunciation']['error']==0)){
                $data=$this->input->post();
                $data['radical_id']=$this->radical['ID'];
                if($result=$this->Character_model->insert_new_character($data)){
                    move_uploaded_file($_FILES['pronunciation']['tmp_name'],FCPATH.'assets/s_'.$this->db->insert_id().'.mp3');
                    if($old_pinyin==null){
                        move_uploaded_file($_FILES['sentence_pronunciation']['tmp_name'],FCPATH.'assets/'.$this->input->post('pinyin').'mp3');
                    }
                    $result_msg='上传成功';
                }else{
                    $result_msg='上传失败';
                }
            }else{
                $result_msg='字库中还没有这个发音的读音文件，请上传';
            }
        }
        $this->load->view('character_input/character_input',array('result'=>$result,'result_msg'=>$result_msg));
    }

    /*未完成，也许以后会用到
    public function char_check($character_shape){
        $character=$this->Character_model->get_character_by_shape($character_shape);
        if($character==null){
            $this->form_validation->set_message('character','此汉字已经存在');
        }
    }*/

    public function radical_check($radical_shape){
        if(empty($radical_shape)){
            $this->form_validation->set_message('radical_check', '请输入部首');
            return false;
        }
        $radical=$this->Radical_model->get_radical_by_shape($radical_shape);
        if($radical==null){
            $this->form_validation->set_message('radical_check', '该部首还没有录入库中');
            return false;
        }
        else{
            $this->radical=$radical;
            return true;
        }
    }
}