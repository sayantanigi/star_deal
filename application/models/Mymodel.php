<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Mymodel extends MY_Model {

	public function insert($table, $data)
	{

		if($this->db->insert($table, $data)) {

			return true;

		} else {

			return false;

		}
	}

	   

		
  
   
  


}//end model
