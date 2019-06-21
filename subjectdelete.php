<?php
require_once("adodb.inc.php");

	class subjectdelete
	{	   
		var $template="deletesubject.tpl";
		function subjectdelete($params,$tpl)
		{				
				require_once("connect.php");
				//$tpl->assign("message","DELETE SUBJECT");
				extract($params);
				echo "<center><b><font color=green size=5>SUBJECT % $subject % DELETED</font></b></center>";
				$sql1="select *from subjects where subject='$subject';";
             	$rs1=$con->Execute($sql1) or die("<font color=red>Unable to retrieve $subject details</font>");
 				$yr=$rs1->fields[year];$sem=$rs1->fields[semester];
				$subname=$subject."_".$yr.$sem;
				$sql2="drop table $subname;";
             	$rs2=$con->Execute($sql2) or die("<font color=red>Unable to drop table $subname</font>");    
				$sql3="delete from subjects where subject='$subject';";
             	$rs3=$con->Execute($sql3) or die("<font color=red>Unable to delete subject details for $subject </font>");
				         
              /*while(!$rs->EOF)
              {
                      $subject=$rs->fields[subject];
                      echo "<option>$subject</option>";
                      
                      $rs->MoveNext();
               }
               require("disconnect.php");*/
				
				
				
				
				
				
				
				
				
				
				$tpl->display($this->template);
				$con->Close();
		}		
	}
?>
