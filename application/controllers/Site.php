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
}
