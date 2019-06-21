<html>
<body>
<br>&nbsp;
<h3 align="center">Todays Exam Schedule</h3>
<br>&nbsp;
<table width="70%" border="1" align="center">
<th>S No</th><th>Paper name</th><th>Exam Time</th><th>Duration (in min)</th>
<th>Test No</th><th>Paper Set by</th>
{php}
	for($i = 0 ; $i < $count ; $i++)
    {
		$j=$i+1;
       echo "<tr><td align=center>$j</td><td align=center>$qpaper[$i]</td>";
	   echo "<td align=center>$etime[$i]</td><td align=center>$dur[$i]</td>";
	   echo "<td align=center>$tno[$i]</td><td align=center>$setby[$i]</td></tr>";
     
    }
{/php}
</table>
<br><hr>{include file="./footer.tpl"}
</body>
</html>
