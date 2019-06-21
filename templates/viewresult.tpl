<html>
<head>
  <title>Complete Marks Information </title>
  <link rel="stylesheet" href="mystyle.css">
 	
</head>

<body>
<div align=center><font color=blue size="5">Complete Subjectwise Internal Record</font></div>
<br><br><br>

{php}
              require("connect.php");
			  $user=$_SESSION['USERID'];
			  $sql="select year,semester from userinfo where userid='$user';";
			  //echo $sql;
			  $rs=$con->Execute($sql) or die("Unable to get year/sem from userinfo");
			  $year=$rs->fields[year];
			  $sem=$rs->fields[semester];
              $sql1="select subject from subjects where year=$year and semester=$sem; ";
			  $rs1=$con->Execute($sql1);
			  //echo $sql1;
			  while(!$rs1->EOF)
              {
                      $subj=$rs1->fields[subject];
					  $sub=$rs1->fields[subject]."_".$year.$sem;
					  $sql2="select * from $sub where userid='$user'; ";
					  //$sql3="select count(*) from $sub where userid='$user';";
					  
					  //echo $sql2;
			  		  $rs2=$con->Execute($sql2) or die(" Unable to get marks from subject table");
					  echo "<table bgcolor='#daddad' width=100%><tr><td align=center><h2>$subj</h2></td></tr></table>";
					  // For getting the test number !!! Not the best WAY !!! Find other !!
					  $count=sizeof($rs2->fields)/2-1;
					  $temp="";
					  $i=1;
					  echo "<hr width=100%><table  border=2 align=center bgcolor='lightgray' width=50%><tr>";
					  //echo "count = $count";
					  while($i<=$count)
					  {
					  		$temp="test".$i;// echo $temp;
							$marks=$rs2->fields[$temp];
							echo "<th align=center>Test $i </th><th align=center>$marks</th></tr>";  
							$i++;
					 	    
							
							
					  }
					  
					  echo "</table><hr width=100%> ";
					$rs1->MoveNext();  
			   }
              
			  /*echo "<center><h3>Subject Details</h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor> SUBJECT NAME </th>
			  <th bgcolor=> YEAR </th>
			  <th bgcolor=>SEMESTER</th>";
			  
			  while(!$rs->EOF)
              {
                   echo "<tr>";
                      $a=$rs->fields[subject];
					  $b=$rs->fields[year];
                      $c=$rs->fields[semester];
					  echo "<td bgcolor=fedcba>$a</td><td bgcolor=abcdef>$b</td>
					  <td bgcolor=fedcba>$c</td>";
					  echo "</tr>";
                      $rs->MoveNext();
			   }
              echo "</table>";*/
			  require("disconnect.php");
			   
{/php}
     

 {include file="./footer.tpl"}
</body>
</html>
