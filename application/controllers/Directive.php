<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Directive extends MY_Controller{

    public function modal(){
        $this->load->view('directive/modal');
    }

    public function dopcat(){
        //$this->load->view('directive/dopcat');
        $this->render('dopcat');
    }
}