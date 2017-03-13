<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends MY_Controller {
	
	public function reg(){
		$this->title = 'Регистрация пользователя';
		//$this->sideBar = true;

		$error = false;
		$arr = $this->input->post();
		if(isset($arr['g-recaptcha-response'])){
			if(self::recaptha($arr['g-recaptcha-response'])['success'] != 1)
				$error = 'captcha error';
		}

		$this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email|is_unique[users.email]');
		if ($this->form_validation->run() == FALSE || $error){

			if(empty($error))
				$error = trim(validation_errors());

			$this->render('reg', ['error' => $error]);
		}else{
			Model::save('users', ['email' => $arr['email'], 'password' => substr(md5(generate_password(8)), 0, 8), 'dataC' => time()]);
			$this->render('regsuccess');
		};
	}

	public function login(){
		$this->title = 'Авторизация';

		$error = false;
		$arr = $this->input->post();
		if(isset($arr['g-recaptcha-response'])){
			if(self::recaptha($arr['g-recaptcha-response'])['success'] != 1)
				$error = 'captcha error';
		}

		$this->load->library('form_validation');
		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email');
		if ($this->form_validation->run() == FALSE || $error) {
			if(empty($error))
				$error = trim(validation_errors());

			$this->render('login', ['error' => $error]);
		}else{
			$model = Model::read('users', ['where' => ['email' => $arr['email']]]);
			$this->session->set_userdata('usId', $model['id']);
			redirect('/');
		}

	}

	public function logout(){
		//$this->session->sess_destroy();
		$this->session->unset_userdata('usId');
		Model::save('users', ['onoff' => 0], ['id' => Ci::user()['id']]);
		redirect('/');
	}

	private function recaptha($response){
		$secret = '6LeGHAcUAAAAADwLZ4bItKu7XC6Ud_bjT0CkJIIb';
		$remoteIp = $_SERVER['REMOTE_ADDR'];
		$url = file_get_contents('https://www.google.com/recaptcha/api/siteverify?secret='.$secret.'&response='.$response.'&remoteip='.$remoteIp);
		return json_decode($url, true);
	}
}
