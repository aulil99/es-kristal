<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dashboard extends Admin_Controller {

	public function index()
	{
		$data['title'] = "DASHBOARD  | Repost by <a href='https://stokcoding.com/' title='StokCoding.com' target='_blank'>StokCoding.com</a>";
		
		$data['layout'] = "dashboard";
		
		$this->load->view('template',$data);
	}
}
