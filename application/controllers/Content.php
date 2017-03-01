<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Content extends MY_Controller {

    public function index(){
        $this->title = 'Менеджер статей';
        $data['content'] = json_encode(Model::readAll('content', ['column' => ['id', 'title', 'menuId', 'itemId', 'status'], 'orderBy' => 'id Desc']), JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_NUMERIC_CHECK);
        $this->render('index', $data);
    }

    public function edit(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        echo json_encode(Model::read('content', ['where' => ['id' => $arr['id']], 'column' => ['id', 'title', 'text', 'menuId', 'itemId']]), JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_NUMERIC_CHECK);
    }

    public function save(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        if(isset($arr['form']['id'])){
            $id = $arr['form']['id'];
            unset($arr['form']['id']);
            Model::save('content', $arr['form'], ['id' => $id]);
        }else{
            Model::save('content', $arr['form']);
            echo $this->db->insert_id();
        }
        //print_r($arr);

    }

    public function del(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        $this->db->delete('content', array('id' => $arr['id']));
    }
}
