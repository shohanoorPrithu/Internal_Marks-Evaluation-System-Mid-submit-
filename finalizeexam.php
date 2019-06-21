<?php

require_once("adodb.inc.php");
   class finalizeexam
   {	 
            var $template="session.tpl";
		    function finalizeexam($params,$tpl)
		    {			
				extract($params);
				require_once("connect.php");
				
				//$userid=$_SESSION['USERNAME'];
				//if(isset($userid))	
				//{
				//	if(strcmp($sessionsave,"SAVE")==0)
					/*{
						$a=$params['cname'];
				  		$b=$params['tname'];
				  		$c=$params['sname'];
				  		$d=$params['tuname'];
                  		$e=$params['numday'];
				  		$f=$params['sesday'];*/
						$testno=$params['testno'];
						$paper=$params['paper'];
						$day=$params[dateDay];
						$mon=$params[dateMonth];
						$year=$params[dateYear];
						$shour=$params[sttimeHour];
						$smin=$params[sttimeMinute];
						$ssec=$params[sttimeSecond];
						$duration=$params['dura'];
						/*$ehour=$params[entimeHour];
						$emin=$params[entimeMinute];
						$esec=$params[entimeSecond];
						$g=$shour.":".$smin.":".$ssec;
						$h=$ehour.":".$emin.":".$esec;
						$i=$day."-".$mon."-".$year;*/
				  		
						 //echo " $paper , $day , $mon , $year , $shour ,$smin ,$ssec ,$duration ";
						 $sql = "update exams set examdate='$year-$mon-$day',examtime='$shour:$smin:$ssec',
						 activated='t',testno=$testno,duration=$duration  where qpname='$paper';";
						 $rs = $con->Execute($sql)or die("<center><font color=red><h3>Unable to activate exam!!!</h3></font></center>");
                		 
						 /// DYNAMIC TEST ADDITION IN SUBJECTS TABLE !!!
						 $counter=0;
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
						 
						 //echo $subj;
						 $test="test".$testno;
						 //echo $test;
						 /*$sql1="select * from $subj;";
						 $rs1= $con->Execute($sql1) or die("Unable 1 !!!");
						 $i=sizeof($rs1->fields);
						 $sql2="select count(*) from $subj;";
						 $rs2= $con->Execute($sql2) or die("Unable 2 !!!");
						 $div=$rs2->fields[0];
						 $temp=$i/$div;
						 $test="test".$temp;
						 echo " $i  ,,, $test ";*/
						 
						 $sql2="alter table $subj add $test integer;";
						 //echo $sql2;
						 $rs2=$con->Execute($sql2) or die("<center><font color=red><h3>Unable to alter table $subj !!!</h3></font></center>");
						 $sql3="update $subj set $test=-1;";
						 $rs3=$con->Execute($sql3) or die("<center><font color=red><h3>Unable to initialize column to -1 in $subj !!!</h3></font></center>");
						
						 if($rs && $rs2 && $rs3)
						 {
						 		echo "<br><br><br><br>";
								echo "<center><font color=green><h2>ACTIVATION SUCCESSFUL</h2></font></center>";
						 }
						 else
						 {
						 		echo "<br><br><br><br>";
								echo "<center><font color=red><h2>FATAL ERROR</h2></font></center>";
								echo "<center><font color=red><h5>Please contact the Administrator</h5></font></center>";
						 }	
						/*  //echo $sql;
                  		  $rs_schedule = $con->Execute($sql);
                   		$sql =
                  		if($rs_schedule)
								echo "<center><h2><font color=green> Record Inserted Sucessfully</font></h2></center>";
                  		else
			    				echo "<center><h2><font color=green>Unable to Insert Record/ Already Inserted</font></h2></center>";
                  		$tpl->display($this->template);	*/
					}
	}
?>
