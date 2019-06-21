<?php
require_once("adodb.inc.php");

	class viewresult
	{	   
		var $template="viewresult.tpl";
		function viewresult($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
