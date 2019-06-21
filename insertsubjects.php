<?php
class insertsubjects
{
	function insertsubjects($params,$tpl)
	{
		require_once("connect.php");
		require_once("connection.php");
		extract($_POST);
		$year=$_POST['year'];
		$sem=$_POST['semester'];
		$i=$_POST['count'];
		$j=1;
		while($j<=$i)
		{
			$subj1=$_POST[$j];
			$subj=$_POST[$j]."_".$year.$sem;
			//echo $subj;
			$sql="insert into subjects values('$subj1',$year,$sem);";
			$sql2="create table $subj(userid varchar references users(userid) on update cascade on delete cascade,primary key(userid));";
			$sql3="select userid from userinfo where year=$year and semester=$sem;";
			
			
			
			//,test1 integer,test2 integer,test3 integer,test4 integer,
			//test5 integer,test6 integer,test7 integer);";
			//echo $sql;
			$rs=$con->Execute($sql);// or die("Unable to insert subjects");
			$rs2=$con->Execute($sql2);
			$rs3=$con->Execute($sql3) or die("Cannot retrieve userids ");
			
			while(!$rs3->EOF)
			{
				$uid=$rs3->fields[0];
				$sql4="insert into $subj values('$uid');";
				$rs4=$con->Execute($sql4) or die("Unable to insert $uid");
				$rs3->MoveNext();
			}
				
			if(!$rs)
			{
				echo "<center><font size=5 color=red> Error inserting subject $j</font></center>";
				break;
			}
			if(!$rs2)
			{
				echo "<center><font size=5 color=red> Error creating subject table  $j</font></center>";
				break;
			}
			if(!$rs4)
			{
				echo "<center><font size=5 color=red> Error inserting userids/Users not added for this category </font></center>";
				break;
			}
			
			++$j;
			
		}
		if($j==($i+1))echo "<center><font size=5 color=green>ALL SUBJECTS INSERTED SUCCESSFULLY </font></center>";
	}
}	
?>
