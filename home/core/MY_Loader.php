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
	
    public function database($params = '', $return = FALSE, $active_record = NULL)
    {
        $CI =& get_instance();
        if (class_exists('CI_DB') AND 
            $return == FALSE AND 
            $active_record == NULL AND 
            isset($CI->db) AND 
            is_object($CI->db))
        {
            return FALSE;
        }
        if (file_exists(APPPATH.'core/database/DB.php')) 
        {
            require_once(APPPATH.'core/database/DB.php');
        }
        else
        {
            require_once(BASEPATH.'database/DB.php');
        }
        if ($return === TRUE) 
        {
            return DB($params, $active_record);
        }
        $CI->db = '';
        $CI->db =& DB($params, $active_record);
    }  
    	
}