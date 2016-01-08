<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class MY_Loader extends CI_Loader {
    
    protected $_ci_library_paths =	array(SHAREPATH, BASEPATH);
    
    protected $_ci_model_paths =	array(SHAREPATH);
    
    protected $_ci_helper_paths =	array(SHAREPATH, BASEPATH);
    
	public function __construct()
	{
		parent::__construct();
	}
	    	
}