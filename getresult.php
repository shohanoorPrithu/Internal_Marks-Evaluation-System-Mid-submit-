<?php

class getresult
{
	
	function getresult($params,$tpl)
	{
		require_once("connect.php");
		require_once("connection.php");
		$user=$_SESSION['USERID'];
		$i=$_POST['count'];
		$paper=$_POST['quespaper'];
		$j=1;
		$marks=0;
		//$sql="selec";
		$sql1="select cans from $paper";
		$rs1=$conn->Execute($sql1) or die(" Unable to get paper ");
		
		//echo array_count_values($rs->Fields);
		//echo "<table border=>";
		while(!$rs1->EOF)
		{
			
			$cans=$rs1->fields[0];
			//echo "<tr><td> $cans== $_POST[$j]</td></tr>";
			
			if($cans==$_POST[$j])
			{
				$marks++;
			}
			
			$rs1->MoveNext();
			$j++;
		}
		echo " : You scored : <br><font color=red size=7>* $marks *</font> ";
		//echo "</table>";
		// TO ENTER THE RESULT INTO THE DATABASE !!!
		$subj="";
		for($i=0;$i<strlen($paper);$i++)
		{
		 	if($paper[$i]=='_' )
			{ 
					if($counter==0)
					$counter++;
					else
					break;
			}
						
		$subj.=$paper[$i];
		}
		echo $subj;
		// Getting the TEST NO from the database !!!
		
		$sql2="select testno from exams where qpname='$paper';";
		//echo $sql2;
		$rs2=$con->Execute($sql2) or die("<h3>Unable to get testno </h3>");
		$testno=$rs2->fields[0];
		$test="test".$testno;
		$sql3="update $subj set $test=$marks where userid='$user';";
		echo $sql3;
		$rs3=$con->Execute($sql3) or die("<h3>Unable to insert marks </h3>");
		/*$sql2="update table $subj set";
		$rs1=$conn->Execute($sql2) or die(" Unable to get paper ");*/
	}
}

?>
