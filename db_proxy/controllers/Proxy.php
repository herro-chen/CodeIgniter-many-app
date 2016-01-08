<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Proxy extends Base_Controller {
    
    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    
	public function index()
	{
        $news = $this->db->get('news')->result_array();
        print_r($news);
	}
    
    public function add()
    {
        $rand_id = rand(0, 100);
        $news = array(
            'title' => "title {$rand_id}",
            'content' => "content {$rand_id}",
        );
        echo $this->db->insert('news', $news);
    }
    
    public function edit($id = 1)
    {
        $news = array(
            'c_time' => NULL
        );
        echo $this->db->set($news)->where('id', $id)->update('news');
    }
    
    public function remove($id = 0)
    {
        echo $this->db->delete('news', array('id' => $id));
    }
    
}
