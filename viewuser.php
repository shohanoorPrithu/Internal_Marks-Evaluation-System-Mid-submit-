<?php
require_once("adodb.inc.php");

	class viewuser
	{	   
		var $template="viewuser.tpl";
		function viewuser($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
