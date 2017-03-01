<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Menu extends MY_Controller {

    public function admin(){
        $this->title    = 'Менеджер меню/пунктов';
        //$data['menu'] = Model::readAll('menu', ['orderBy' => 'id ASC']);
        //$data['items'] = Model::readAll('items', ['orderBy' => 'sort ASC']);
        //echo json_encode($data, JSON_NUMERIC_CHECK);
        $this->render('admin');
    }

    public function http(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);

        //print_r($arr);

        if($arr['table'] == 'items'){
            if($arr['form']['static'] == 0){
                $arr['form']['url'] = translit($arr['form']['name']);
            }
            //$arr['form']['url'] = translit($arr['form']['name']);
        }

        switch($arr['status']){
            case 'insupd':
                if(isset($arr['id']))
                    Model::save($arr['table'], $arr['form'], ['id' => $arr['id']]);
                else{
                    Model::save($arr['table'], $arr['form']);
                    echo $this->db->insert_id();
                }
                break;
            case 'del':
                $this->db->delete($arr['table'], array('id' => $arr['id']));
                break;
        }
    }

    public function sort(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);

        $tt = explode(',', $arr['sort']);

        if(is_array($tt))
            foreach ($tt as $key => $value) {
                Model::save('items', ['sort' => $key], ['id' => $value]);
            }

        $data['items'] = Model::readAll('items', ['orderBy' => 'sort ASC']);

        echo json_encode($data, JSON_NUMERIC_CHECK);
    }
}

