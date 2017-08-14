<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/2/12
 * Time: 14:03
 */
class Radical extends CI_Controller
{
    public function __construct(){
        parent::__construct();
        $this->load->model('Character_model');
        $this->load->model('Radical_model');
        $this->load->helper('url');
        $this->load->library('form_validation');
    }

    public function input(){
        $this->form_validation->set_rules('radical_shape', 'radical_shape', 'trim|callback_radical_check');
        $this->form_validation->set_rules('radical_name', 'radical_name', 'trim|required', array('required' => '请输入部首名'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));

        $result=false;
        if($this->form_validation->run()){
            $data=$this->input->post();
            $result=$this->Radical_model->insert_new_radical($data);
        }
        $this->load->view('template/header',['title'=>'部首输入']);
        $this->load->view('character_input/radical_input',['controller'=>'Radical/input','result'=>$result]);
        $this->load->view('template/footer');
    }

    public function update($id){
        $this->form_validation->set_rules('radical_shape', 'radical_shape', 'trim|callback_radical_check');
        $this->form_validation->set_rules('radical_name', 'radical_name', 'trim|required', array('required' => '请输入部首名'));
        $this->form_validation->set_rules('characters', 'characters', 'trim|required', array('required' => '请输入例字'));

        $result=false;
        if($this->form_validation->run()){
            $data=$this->input->post();
            $result=$this->Radical_model->update_radical($id,$data);
        }

        $shape=$this->Radical_model->get_radical_by_id($id)['radical_shape'];
        $this->load->view('template/header',['title'=>'重新输入部首']);
        $this->load->view('character_input/radical_input',['shape'=>$shape,'controller'=>'Radical/update/'.$id,'result'=>$result]);
        $this->load->view('template/footer');
    }

    public function search(){
        $this->form_validation->set_rules('shape', 'shape', 'trim|required', array('required' => '请输入字形'));
        $this->form_validation->set_rules('model', 'model', 'trim|required', array('required' => '请选择模式'));

        $this->load->view('template/header',['title'=>'部首搜索']);
        $this->load->view('template/search_form',['controller'=>'Component/search']);

        if($this->form_validation->run()) {
            $target_radicals = $this->Radical_model->get_radical_by_shape($this->input->post('shape'));
            $radicals=array();
            foreach ($target_radicals as $radical) {
                $radical_id = $radical['ID'];
                $number = 1;
                switch ($this->input->post('model')) {
                    case 1:
                        $number = 1;
                        break;
                    case 2:
                        $radical_id -= 10;
                        $number = 20;
                        break;
                    case 3:
                        $radical_id -= 30;
                        $number = 60;
                        break;
                    case 4:
                        $number = 20;
                        break;
                    case 5:
                        $number = 50;
                        break;
                }
                $radicals = array_merge($radicals,$this->Radical_model->get_radical_list_by_id($radical_id, $number));
            }
            $this->load->view('search/radical_search',['radicals'=>$radicals]);
        }

        $this->load->view('template/footer');
    }

    public function delete($id){
        if($this->Radical_model->delete($id)==false)
            echo 'fail';
        else
            echo 'success';
    }

    public function radical_check($radical_shape){
        if (empty($radical_shape)) {
            $this->form_validation->set_message('radical_check', '请输入部首字形');
            return false;
        }
        $radicals=$this->Radical_model->get_radical_by_shape($radical_shape);
        if(empty($radicals)){
            $this->form_validation->set_message('radical_check', '该部首已经录入');
            return false;
        }else
            return true;
    }
}