<?php
require_once("adodb.inc.php");

	class insertquestions
	{	   
		//var $template="addexam.tpl";
		//var $template1="noques.tpl";
		var $template2="editpaper.tpl";
		function insertquestions($params,$tpl)
		{				
				//require_once("connect.php");
				require_once("connection.php");
				
				extract($_POST);
				//echo " $qpname , $ques ,$q , $c1 ,$c2 , $c3 , $c4 ,$ans";
				$sql="update $qpname set ques='$q',ans1='$c1',ans2='$c2',ans3='$c3',
				ans4='$c4', cans=$ans where sno=$order ;";
				$rs = $conn->Execute($sql) or die("Unable to insert question");
				echo $ques--;
				$tpl->assign("qpname",$qpname);
				$tpl->assign("ques",$ques);
				$tpl->assign("qno",$qno);
				$tpl->display($this->template2);
		}
	}
?>
