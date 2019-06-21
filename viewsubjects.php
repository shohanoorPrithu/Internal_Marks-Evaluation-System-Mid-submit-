<?php
require_once("adodb.inc.php");

	class viewsubjects
	{	   
		var $template="viewsubjects.tpl";
		function viewsubjects($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
