<?php
defined('BASEPATH') OR exit('No direct script access allowed');

abstract class Base_Controller extends CI_Controller {
    
	public function __construct()
	{
		parent::__construct();
        //下面这段为关闭CI超级对象中的数据库对象和数据库链接，db的对象Codeigniter.php中会关闭
        register_shutdown_function(function()
        {
            foreach(get_object_vars($this) as $key => $val)
            {
                if (substr($key, 0, 3) == 'db_' && is_object($this->{$key}) && method_exists($this->{$key}, 'close')) 
                {
                    $this->{$key}->close();
                }
                if (substr($key, 0, 5) == 'conn_'  && is_resource($this->{$key}))
                {
                    $this->db->_close($val);
                    unset($this->{$key});
                }
            }
        });
	}
    
}