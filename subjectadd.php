<?php
class subjectadd
	{
	   /*var $temp1="addsubjects.tpl";
	   var $temp2="subjectadd.tpl";*/
	   function subjectadd($params,$tpl)
	   {
	     	
			extract($params);
			extract($_POST);
			$yr=$_POST['year']; $sem=$_POST['semester'];
			require_once("connect.php");
			//$sql="insert into subjects values('$yr','$sem','$subj')";
			if($sem=="")
			{
				$sem=1;
			}
			$i=$_POST['noofsub'];
			$j=1;
			//echo $yr; echo $sem;  echo $i;
			echo "<center><h3>ENTER SUBJECTS HERE</h3></center><br><br>";
			echo "<form name=form method=POST action='index.php?service=INSERTSUBJECTS'>";
			echo "<table width=100% bgcolor=lightgray>";
			while($j<=$i)
			{
				//$subj=$_POST[$j];
				//$sql="insert into subjects values('$subj',$yr,$sem)";			
				//echo $sql;
				echo "<tr><th>Subject $j :</th><td><input type=text name=$j></td></tr>";
				
				
			$j++;	
			}
			echo "<tr><td colspan=2 align=center><input type=hidden value=$yr name=year></td></tr>";
			echo "<tr><td colspan=2 align=center><input type=hidden value=$sem name=semester></td></tr>";
			echo "<tr><td colspan=2 align=center><input type=hidden value=$i name=count></td></tr>";
			echo "<tr><td colspan=2 align=center><input type=submit value='INSERT SUBJECTS'></td></tr>";
			echo "</table>";
			echo "</form>";
			//$rs=$con->Execute($sql) or die (" Unable to insert: subjects");
				/*echo $rs;
				if($rs)
				{
					$i--; $j++;
				}
				else 
				{
					echo "One or more records cannot be inserted . Please Try again";
					break;
				}
			}
			if($i==0)
			{
				echo "<font color=green><h1> ALL SUBJECTS ENTERED SUCCESSFULLY </h1></font>";
			}
			else
			{
				//$tpl->assign("err","Error in inserting: Please Enter again");
				$tpl->display('subjectadd.tpl');
			}*/
			//$tpl->display('subjectadd.tpl');
		}
	}
?>
