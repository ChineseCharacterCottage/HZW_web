<?php

/**
 * Created by PhpStorm.
 * User: huge
 * Date: 2017/5/6
 * Time: 20:16
 */
class Input_chose extends CI_Controller {

    public function __construct(){
        parent::__construct();
        $this->load->helper('url');
    }

    public function index(){
        $this->load->view('input_chose');
    }

}