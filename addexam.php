<?php
require_once("adodb.inc.php");

	class addexam
	{	   
		var $template="addexam.tpl";
		//var $template1="noques.tpl";
		var $template2="editpaper.tpl";
		function addexam($params,$tpl)
		{				
				require_once("connect.php");
				require_once("connection.php");
				extract($params);
				if($req==1)
				{
					$tpl->assign("yr",$year);
					$tpl->assign("sem",$sem);
					$tpl->assign("message","ADD EXAM");
					$tpl->display("addexam.tpl");
				}
				else
				{	
				if($sem=="")
				$sem=1;
				$user=$_SESSION['USERID'];
				$qpyear=$_POST['year'];
				$qpsem=$sem;
				$sub=$_POST['subject'];
				$ques=$_POST['noofques'];
				$dat=date("dFY");
				//$qpsetby=$_SESSION['UserId'];
				echo " $qpyear , $qpsem , $params , $dat , $sub ";
				$paper=$sub."_".$qpyear.$qpsem."_".date("Y")."_".date("m")."_".date("d");
				$sql1="insert into exams values('$paper',$qpyear,$qpsem,'$dat');";
				$sql4="update exams set activated='f',qpsetby='$user' where qpname='$paper';";
				$rs1 = $con->Execute($sql1);
				$rs4 = $con->Execute($sql4); //or die("Unable to update");
                if(!$rs1 || !$rs4)
				{
					//$tpl->assign("mes1","QP already exists <br> Please use a different name");	       
					//$tpl->assign("message","ADD EXAM");
					//$tpl->display($this->template2);
					echo "<font color='red'><h1>Question Paper already exists</h1></font>";
					echo "<center>";
					echo "<br><br><a href='index.php?service=MODIFYPAPER'>MODIFY PAPER</a>";
					echo "<br><br><a href='index.php?service=SETPAPER'>GO BACK</a>";
					echo "</center>";
				}
				else 
				{
					$qpname=$sub."_".$qpyear.$qpsem."_".date("Y")."_".date("m")."_".date("d");//echo $ques;
					$sql2="create table $qpname(sno integer,ques varchar,ans1 varchar,
					ans2 varchar,ans3 varchar,ans4 varchar,cans integer,primary key(sno));";
					
					$rs2 = $conn->Execute($sql2); //or die("Unable to create qp");
				    if(!$rs2)
					{
						echo "<font color='red'>Unable to create Question Paper/Already Exists</font>";
					}
					else
					{
						$i=1;
						while($i<=$ques)
						{
						    $sql3="insert into $qpname values($i);"; 
							$rs3 = $conn->Execute($sql3) or die("Unable to insert sno $i");
							$i++;
						}
						// Firing the Questio Paper editing Template !!!
						$qno=$ques+1;
						$tpl->assign("mes1","Type Your Questions");
						$tpl->assign("ques",$ques);
						$tpl->assign("qno",$qno);
						$tpl->assign("qpname",$qpname);
						$tpl->display($this->template2);	
					}
						
					//$tpl->display($this->template1);	
				}
				}
		}		
	}
?>
