<?php

class startexam
{
	function startexam($params,$tpl)
	{
			require_once("connect.php");
			require_once("connection.php");
			/*$sql1="select qpname from exams where activated='t';";
			$rs1=$con->Execute($sql1) or die("Unable to retrieve papername");
			while(!$rs1->EOF)
			{
				$paper=$rs1->fields[0];
				echo $paper;
				//echo substr($date,5,3);
				//echo " $date || " ;
				$rs1->MoveNext();
			}
			$sql2="select * from $paper;";
			$rs2=$conn->Execute($sql2) or die("Unable to display paper");
			echo "<table bgcolor='lightgray' width='100%'>";
			while(!$rs2->EOF)
			{
				$sno=$rs2->fields[0];
				$q=$rs2->fields[1];
				$c1=$rs2->fields[2];
				$c2=$rs2->fields[3];
				$c3=$rs2->fields[4];
				$c4=$rs2->fields[5];
				
				echo "<tr><td colspan=4 align=left><font color=blue>Q $sno : $q</td></tr>";
				echo "<tr><td>(1)  $c1</td><td>(2)  $c2</td><td>(3)  $c3</td><td>(4)  $c4</td></tr>";
				echo "<tr><td colspan=4><hr width='100%' size=3></td></tr>";
				echo "<tr><td></td></tr>";echo "<tr><td></td></tr>";
				//echo $paper;
				//echo substr($date,5,3);
				//echo " $date || " ;
				$rs2->MoveNext();
			}
			echo "</table>";*/
			$sql="select * from userinfo where userid='{$_SESSION['USERID']}'";
			$rs=$con->Execute($sql);
			$yr=$rs->fields[year];
			$sem=$rs->fields[semester];
			$sql1="select duration,qpname,(select localtime)-examtime from exams where examtime<(select localtime) and examtime>(select localtime-cast('00:'||duration as time)) and qpyear=$yr and qpsem=$sem;";
			$rs1=$con->Execute($sql1) or die("Unable to retrieve papername");
			if($rs1->EOF)
			echo "<br><br><center><h2>SORRY No Exam is Activated at this time</h2></center>";
			else
			{
				$paper=$rs1->fields[1];
				$time=$rs1->fields[2];
				$dura=$rs1->fields['duration'];
				echo $paper;
			}

echo "			
			
<frameset cols='75%,*'>


			<frame src='./index.php?service=QUESTIONPAPER&qpaper=$paper' noresize>
			<frame name='right' src='./index.php?service=ANSWERSHEET&qpaper=$paper&time=$time&dura=$dura' noresize>
		
</frameset> ";
	
	 



	}

	
	
}



?>
