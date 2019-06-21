<?php
require_once("adodb.inc.php");
	class edituser 
	{	   
		var $template="edituser.tpl";
		function edituser($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->assign("message","EDIT USER");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
