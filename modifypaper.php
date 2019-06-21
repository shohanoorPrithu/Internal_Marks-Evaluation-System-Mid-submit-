<?php
require_once("adodb.inc.php");
	class modifypaper
	{	   
		var $template="modifypaper.tpl";
		function modifypaper($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->assign("message","MODIFY PAPER");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
