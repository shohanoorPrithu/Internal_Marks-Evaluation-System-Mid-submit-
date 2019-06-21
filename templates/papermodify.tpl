<html>
<head>


</head>
<body>

<form method="POST" action="index.php?service=UPDATEPAPER" name="valid" >

{php}
	echo "<table bgcolor=lightgray width=100%>
			<tr><th colspan=6>{$message}</th></tr>";
	require("connection.php");
	$sql="select *from $paper;";
	$rs=$conn->Execute($sql) or die("Cannot get paper contents to modify");
	while(!$rs->EOF)
	{
		
		$sno=$rs->fields[0];
		$question=$rs->fields[1];
		$ch1=$rs->fields[2];
		$ch2=$rs->fields[3];
		$ch3=$rs->fields[4];
		$ch4=$rs->fields[5];
		$ans=$rs->fields[6];
		
		$ques="ques_".$sno;
		$opt1="opt1_".$sno;
		$opt2="opt2_".$sno;
		$opt3="opt3_".$sno;
		$opt4="opt4_".$sno;
		$ans1="ans_".$sno;
		
		echo "<tr><td>$sno</td><td colspan=5><textarea  name='$ques' rows=3 cols=120>$question</textarea></td></tr>";
		echo "<tr><td></td>
				<td>A: <input name=$opt1 type=text value=$ch1></td>
				<td>B: <input name=$opt2 type=text value=$ch2></td>
				<td>C: <input name=$opt3 type=text value=$ch3></td>
				<td>D: <input name=$opt4 type=text value=$ch4></td>
				<td>ANS:<select name=$ans1>";
				for($i=1;$i<=4;$i++)
				{
					if($ans==$i)
					echo "<option value=\"$ans\" selected>$ans</option>";
					else
					echo "<option value=$i>$i</option>";
				}
				echo "</select> </td></tr>";
		echo "<tr><td colspan=6><hr></td></tr>";
		$rs->MoveNext();
	}
	//require("disconnect.php");
	
	echo "</table>";	
	echo "<input type=hidden name=papername value=$paper>";
	echo "<input type=hidden name=count value=$sno>";
{/php}

<br><br>

<table width="100%"><tr align="center"><th><input type="submit" value="MODIFY"></th></tr>
</table>

</form>


</body>

</html>
