<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/11
 * Time: 13:34
 */
class Character extends CI_Controller
{
    //用于临时存储部首信息
    var $radical = null;
    //文件存放地址
    var $file_path;

    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Radical_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
        $this->file_path= FCPATH . "../files/";
    }

    public function input_and_update($update_id=-1){
        $this->form_validation->set_rules('character_shape', 'character_shape', 'trim|required', array('required' => '请输入汉字字形'));
        $this->form_validation->set_rules('pinyin', 'pinyin', 'trim|required', array('required' => '请输入汉字拼音'));
        $this->form_validation->set_rules('words', 'words', 'trim|required', array('required' => '请输入例词'));
        $this->form_validation->set_rules('sentence', 'sentence', 'trim|required', array('required' => '请输入例句'));
        $this->form_validation->set_rules('explanation', 'explanation', 'trim|required', array('required' => '请输入汉字释义'));
        $this->form_validation->set_rules('radical', 'radical', 'trim|required|callback_radical_check');

        $result=false;
        $result_msg='';
        if($this->form_validation->run()){
            if($this->file_check("image","image/jpeg")&&$this->file_check("sentence_pronunciation","audio/mp3")&&$this->words_check()){
                $old_pinyin=$this->Character_model->get_character_by_pinyin($this->input->post('pinyin'));
                if(empty($old_pinyin)){
                    if($this->file_check("pronunciation","audio/mp3")){
                        move_uploaded_file($_FILES['pronunciation']['tmp_name'],$this->file_path.$this->input->post("pinyin").'.mp3');
                        $this->do_insert_or_update_and_upload($update_id);
                        $result=true;
                        $result_msg="上传成功";
                    }else{
                        $result_msg="服务器上还没有这个字的发音文件，请上传";
                    }
                }else{
                    $this->do_insert_or_update_and_upload($update_id);
                    $result=true;
                    $result_msg="上传成功";
                }
            }else{
                $result_msg="请确认上传文件是否满足要求";

            }
        }

        $data=['update_id'=>$update_id,'result'=>$result,'result_msg'=>$result_msg];
        if($update_id>0){
            $data['title']='重新输入汉字';
            if($result==false)
                $data['shape']=$this->Character_model->get_character_by_id($update_id)['character_shape'];
            else
                redirect(site_url('Character/search'));
        }else{
            $data['title']='汉字输入';
        }
        $this->load->view('template/header',$data);
        $this->load->view('character_input/character_input',$data);
        $this->load->view('template/footer');
    }

    public function search(){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入字形'));
        $this->form_validation->set_rules('model', 'model', 'trim|required', array('required' => '请选择模式'));

        $this->load->view('template/header',['title'=>'汉字搜索']);
        $this->load->view('template/search_form',['controller'=>'Character/search']);

        if($this->form_validation->run()) {
            $character = $this->Character_model->get_character_by_shape($this->input->post('shape'));
            if (!empty($character)) {
                $character_id = $character['ID'];
                $number = 1;
                switch ($this->input->post('model')) {
                    case 1:
                        $number = 1;
                        break;
                    case 2:
                        $character_id -= 10;
                        $number = 20;
                        break;
                    case 3:
                        $character_id -= 30;
                        $number = 60;
                        break;
                    case 4:
                        $number = 20;
                        break;
                    case 5:
                        $number = 50;
                        break;
                }
                $characters = $this->Character_model->get_character_list_by_id($character_id, $number);
                $this->load->view('search/character_search',['characters'=>$characters]);
            }else{
                $this->load->view('search/character_search');
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

    public function show_list($character_shape,$number){
        $character=$this->Character_model->get_character_by_shape($character_shape);
        $character_id=1;
        if(!empty($character))
            $character_id=$character['ID'];
        return $this->Character_model->get_character_list_by_id($character_id,$number);
    }


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

    private function file_check($file_name,$file_type){
        return $_FILES[$file_name]['type']==$file_type&&$_FILES[$file_name]['error']==0;
    }

    private function words_check(){
        $words_num=$this->input->post("words_num");
        for($i=0;$i<$words_num;$i++){
            if(!$this->file_check('words_pronunciation'.$i,'audio/mp3')) {
                return false;
            }
        }
        return true;
    }

    private function do_insert_or_update_and_upload($update_id){
        $data=$this->input->post();
        $data['radical_id']=$this->radical['ID'];

        if($update_id>0)
            $this->Character_model->update_character($update_id,$data);
        else
            $this->Character_model->insert_new_character($data);

        $insert_id=$this->db->insert_id();
        //例句发音文件
        move_uploaded_file($_FILES['sentence_pronunciation']['tmp_name'],$this->file_path.'s_'.$insert_id.'.mp3');
        //图片文件
        move_uploaded_file($_FILES['image']['tmp_name'],$this->file_path.$insert_id.'.jpg');
        //上传例词文件
        $words_num=$this->input->post("words_num");
        for($i=0;$i<$words_num;$i++) {
            move_uploaded_file($_FILES['words_pronunciation'.$i]['tmp_name'],$this->file_path.'w_'.$insert_id.'_'.$i.'.mp3');
        }
    }
}