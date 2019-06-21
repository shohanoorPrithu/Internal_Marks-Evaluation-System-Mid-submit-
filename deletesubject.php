<?php
require_once("adodb.inc.php");

	class deletesubjects
	{	   
		var $template="deletesubject.tpl";
		function deletesubjects($params,$tpl)
		{				
				require_once("connect.php");
				$tpl->assign("message","DELETE SUBJECT");
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
