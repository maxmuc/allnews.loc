<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Content extends MY_Controller {

    public function index(){
        $this->title = 'Менеджер статей';
        $data['content'] = json_encode(Model::readAll('content', ['column' => ['id', 'title', 'menuId', 'itemId', 'status', 'slider'], 'orderBy' => 'id Desc']), JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_NUMERIC_CHECK);
        $this->render('index', $data);
    }

    public function edit(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        echo json_encode(Model::read('content', ['where' => ['id' => $arr['id']], 'column' => ['id', 'title', 'text', 'menuId', 'itemId']]), JSON_UNESCAPED_UNICODE | JSON_HEX_TAG | JSON_NUMERIC_CHECK);
    }

    public function save(){
        //print_r($this->input->input_stream(NULL, true));
        //11<script>alert('fds');</script>
        //<p>1<br />2<img src="../img/fox.gif" /></p>
        $this->load->helper('security');
        //$arr = $this->input->raw_input_stream;
        $arr = json_decode($this->input->raw_input_stream, true);
        $arr = xss_clean($arr);
        //$arr = xss_clean($this->input->raw_input_stream);
        //$arr = json_decode(xss_clean($this->input->raw_input_stream), true);

        //$arr = json_decode($this->input->raw_input_stream(), true);

        //6-Курьёзы
        if($arr['form']['itemId'] == '6' && !empty($arr['form']['text'])){
            $this->load->helper('simple_html_dom');
            $html = str_get_html($arr['form']['text']);
            $e = $html->find('img', 0)->src;
            preg_match('|.*/(.*)$|', $e, $nameImg);
            $this->load->helper('resize_crop');
            //createThumbnail('img/content/'.$nameImg[1], 'img/content/thumb/'.$nameImg[1], 70, 70);
            thumb_create('img/content/'.$nameImg[1], 'img/content/thumb/'.$nameImg[1], 70, 70);
            $arr['form']['img'] = $nameImg[1];
            //$post = array_merge($arr['form'], ['img' => $nameImg[1]]);
        }

        $arr['form']['url'] = translit($arr['form']['title']);
        if(isset($arr['form']['id'])){
            $id = $arr['form']['id'];
            unset($arr['form']['id']);
            $arr['form']['dataU'] = time();
            Model::save('content', $arr['form'], ['id' => $id]);
        }else{
            $arr['form']['dataC'] = time();
            $arr['form']['dataU'] = $arr['form']['dataC'];
            $arr['form']['userId'] = Ci::user()['id'];
            Model::save('content', $arr['form']);
            echo $this->db->insert_id();
        }

        //print_r(xss_clean($arr['form']['text']));
        //print_r($arr);
        //echo 'ds';

    }

    public function del(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        $this->db->delete('content', array('id' => $arr['id']));
    }

    public function slider(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        $id = $arr['id'];
        $slider = $arr['slider'];

        /**************создаем thumb для главной**********************/
        $nameImg = [];
        if($slider == 1){
            $text = Model::read('content', ['where' => ['id' => $id], 'column' => ['text']])['text'];

            if(!empty($text)){
                $this->load->helper('simple_html_dom');
                $html = str_get_html($text);
                $e = $html->find('img', 0)->src;
                if($e){
                    preg_match('|.*/(.*)$|', $e, $nameImg);
                    $this->load->helper('resize_crop');
                    createThumbnail('img/content/'.$nameImg[1], 'img/slider/'.$nameImg[1], 630, 290);
                }
            }
        }
        /*if($slider == 0){

        }*/
        /**************создаем thumb для главной**********************/

        Model::save('content', ['slider' => $slider, 'imgSlider' => $nameImg[1]], ['id' => $id]);
        //echo json_encode(self::jquery(), JSON_NUMERIC_CHECK);
    }

    public function status(){
        $this->load->helper('security');
        $arr = json_decode(xss_clean($this->input->raw_input_stream), true);
        Model::save('content', ['status' => $arr['status']], ['id' => $arr['id']]);
    }
}
