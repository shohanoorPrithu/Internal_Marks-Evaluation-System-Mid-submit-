<html>
<head>
</head>
<body>
{php}
			require("connect.php");
			require("connection.php");
			// To display Ansersheet !!!
			echo "<center><font color=red><h3>Answer Sheet</h3></font></center>";
			echo "<br><h3 align=center><span id=minu>00</span>:<span id=sec>00</span></h3>";
			$sql2="select sno from $qpaper;";
			$rs2=$conn->Execute($sql2) or die("Unable to get number");
			echo "<form action=index.php?service=GETRESULT method=POST name=frm>";
			echo "<input type=hidden value=$time name=times>";
			echo "<input type=hidden value=$dura name=duration>";
			echo "<table width=100% bgcolor=lightgray >";
			
			while(!$rs2->EOF)
			{
				$sno=$rs2->fields[0];
				echo "<tr align=center><td>$sno : A <input type=radio name=$sno value=1>
				B <input type=radio name=$sno value=2>
				C <input type=radio name=$sno value=3>
				D <input type=radio name=$sno value=4></td></tr>";
				$rs2->MoveNext();
			}
			echo "<tr><td><input type=hidden value=$sno name=count></td></tr>";
			echo "<tr><td><input type=hidden value=$qpaper name=quespaper></td></tr>";
			echo "<tr><td  align=center><input type=submit value=SUBMIT></td></tr>";
			echo "</table></form>";
{/php}
{literal}
<script language='javascript'>
var a=window.setInterval("change()",1000);
var i=0;
var j=0;
var tmp;
var f=document.frm;
var tt=f.times.value;
var dura=f.duration.value;
j=parseInt(tt.substring(tt.indexOf(":")+1,tmp=tt.indexOf(":",tt.indexOf(":")+1)));
i=parseInt(tt.substring(tmp+1,tt.indexOf(".")));
change();
function change()
{
	i+=1;
	if(i==60)
	{
		i=0;
		j+=1;
	}
	if(i<10)
	sec.innerText="0"+i;
	else
	sec.innerText=i;
	if(j<10)
	minu.innerText="0"+j;
	else
	minu.innerText=j;
	if(j==dura && i==0)
	f.submit();	
}
</script>
{/literal}
</body>
</html>
