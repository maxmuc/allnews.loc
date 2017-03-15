<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends MY_Controller {
	
	public function index(){
		$this->title = 'Allnews';

        //slider
        $arr['slider'] = Model::readAll('content', ['where' => ['slider' => 1], 'orderBy' => 'id Desc', 'limit' => 5, 'column' => ['title', 'url', 'imgSlider']]);
        $data['slider'] = $this->load->view('site/slider', $arr, true);

        //peace
        $data['peace'] = Model::readAll('content', ['where' => ['itemId' => 11], 'limit' => '2', 'orderBy' => 'id DESC']);

		//curious
		$data['curious'] = Model::readAll('content', ['where' => ['itemId' => 6], 'orderBy' => 'id DESC', 'limit' => '4']);

        $data['politics'] = Model::read('content', ['where' => ['itemId' => 2], 'orderBy' => 'id DESC']);

        $this->load->helper('simple_html_dom');
        $html = str_get_html($data['politics']['text']);
        $e = $html->find('img', 0)->src;
        preg_match('|.*/(.*)$|', $e, $nameImg);
        $data['politics']['img'] = '<img src="img/content/thumb/'.$nameImg[1].'">';

        /***********/
        $data['sport'] = Model::read('content', ['where' => ['itemId' => 4], 'orderBy' => 'id DESC']);

        $html = str_get_html($data['sport']['text']);
        $e = $html->find('img', 0)->src;
        preg_match('|.*/(.*)$|', $e, $nameImg);
        $data['sport']['img'] = '<img src="img/content/thumb/'.$nameImg[1].'">';

        /***********/
        $data['it'] = Model::read('content', ['where' => ['itemId' => 5], 'orderBy' => 'id DESC']);
        $html = str_get_html($data['it']['text']);
        $e = $html->find('img', 0)->src;
        preg_match('|.*/(.*)$|', $e, $nameImg);
        $data['it']['img'] = '<img src="img/content/thumb/'.$nameImg[1].'">';

		$this->render('index', $data);
	}

	public function section($url){
		$this->sideBar = true;
		$item = Model::read('items', ['where' => ['url' => $url]]);
		$this->title = 'Рубрика "'.$item['name'].'"';
		$data['contents'] = Model::readAll('content', ['where' => ['itemId' => $item['id']], 'orderBy' => 'dataU desc']);
		$this->render('section', $data);
	}

    public function view($url){
        $this->sideBar = true;
        $data['content'] = Model::read('content', ['where' => ['url' => $url]]);
        $this->title = $data['content']['title'];
        $this->render('view', $data);
    }

    public function search(){
        $this->title = 'Поиск по сайту';
        $this->sideBar = true;

        if($_GET){
            $search = $this->input->get('search');
            //print_r($search);
            if(empty($search))
                $model = 'Ошибка! Поиск не задан. В Вашем запросе не указаны данные.';
            else
                $model = Model::readAll('content', ['or_like' => ['title' => $search, 'textnotag' => $search]]);

            if(!$model)
                $model = 'По Вашему запросу "<span class="text-danger">'.$search.'</span>" данных нет. Попробуйте изменить или сократить Ваш запрос.';
        }else
            $model = false;

        $data['model'] = $model;
        $this->render('search', $data);
    }

    public function test(){
        /*foreach(Model::readAll('content') as $row){
            echo strip_tags($row['text']);
            Model::save('content', ['textnotag' => strip_tags($row['text'])], ['id' => $row['id']]);
        }*/
    }
}
