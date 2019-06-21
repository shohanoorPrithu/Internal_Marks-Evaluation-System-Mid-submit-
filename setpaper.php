<?php
require_once("adodb.inc.php");

	class setpaper
	{	   
		var $template="addexam.tpl";
		function setpaper($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->assign("message","ADD EXAM");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
