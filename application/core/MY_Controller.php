<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	public $title;
	public $sideBar;
	public $adminBar = false;
	
	public function render($page, $data = false){
		if(Ci::user() && Ci::user()['role'] == 'admin')
			$tmp['adminBar'] = $this->load->view('site/_adminbar', false, true);
			//$this->adminBar = true;

		$tmp['header'] = $this->load->view('site/header', false, true);
        $tmp['footer'] = $this->load->view('site/footer', false, true);

		$controller_name = $this->router->fetch_class().'/'.$page;
		$tmp['content']	= $this->load->view($controller_name, $data, true);

		$tmp['menu']  = json_encode(Model::readAll('menu', ['orderBy' => 'id ASC']), JSON_NUMERIC_CHECK);
		$tmp['items'] = json_encode(Model::readAll('items', ['orderBy' => 'sort ASC']), JSON_NUMERIC_CHECK);

		$this->load->view('main', $tmp);
	}
}
