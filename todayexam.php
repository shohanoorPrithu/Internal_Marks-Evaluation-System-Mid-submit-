<?php
  
    class todayexam
	{
	   function todayexam($params,$tpl)
	   {
	    if(isset($_SESSION['USERID']))
		{
			require("connect.php");
			$d=date('Y-m-d');
			$sql1="select * from exams where examdate='$d'";
			$result=$con->Execute($sql1) or die("unable");
			$count=0;
			while(!$result->EOF)
			{
				$etime[$count]=$result->fields['examtime'];
				$eduration[$count]=$result->fields['duration'];
				$eno[$count]=$result->fields['testno'];
				$setby[$count]=$result->fields['qpsetby'];
				$qpaper[$count]=$result->fields['qpname'];
				$yr[$count]=$result->fields['qpyear'];
				
				//$sql="select topicname from add_topic where topicid = (select topicid from addexam where examid=$exam[$count])";
				//$res=$con->Execute($sql) or die("unable");
				
				//$file[$count]=$res->fields['topicname'];
				
				$count++;
				$result->MoveNext();
			}
			//echo $count;
			//print_r($edate);
			$tpl->assign("year",$yr);
			$tpl->assign("qpaper",$qpaper);
			$tpl->assign("setby",$setby);
			$tpl->assign("etime",$etime);
			$tpl->assign("tno",$eno);
			$tpl->assign("dur",$eduration);
			//$tpl->assign("file",$file);
			$tpl->assign("count",$count);
						
			$tpl->display('todayexam.tpl');
		}
		else
			echo "<h1>Unauthorised Service</h1>";
	   }
	}
?>
