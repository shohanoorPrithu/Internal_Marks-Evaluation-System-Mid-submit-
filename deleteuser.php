<?php
require_once("adodb.inc.php");

	class deleteuser
	{	   
		var $template="deleteuser.tpl";
		function deleteuser($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->assign("message","DELETE USER");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
