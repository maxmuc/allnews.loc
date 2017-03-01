<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Site extends MY_Controller {
	
	public function index(){
		$this->title = 'Allnews';
		$this->render('index');
	}

	public function section($url){
		$this->sideBar = true;

		$item = Model::read('items', ['where' => ['url' => $url]]);

		$this->title = 'Рубрика "'.$item['name'].'"';

		$data['contents'] = Model::readAll('content', ['where' => ['itemId' => $item['id']]]);

		$this->render('section', $data);
	}
}
