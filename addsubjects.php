<?php
class addsubjects
	{
	   var $temp1="addsubjects.tpl";
	   //var $temp2="subjectadd.tpl";
	   function addsubjects($params,$tpl)
	   {
	     	$tpl->assign("mess","ADD SUBJECTS");
			$tpl->display($this->temp1);
			/*extract($params);
			extract($_POST);
			require_once("connect.php");*/
			
			
			//$sql = "insert into subjects values ;";
			//$rs = $con->Execute($sql);
			
		}
	}
?>
