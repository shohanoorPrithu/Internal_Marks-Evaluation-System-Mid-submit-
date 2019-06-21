<html>
<head>
  <title> </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>
{literal}


{\literal}
<body>
{include file="footer.tpl"}
<form name=valid action="index.php?service=SUBJECTADD" method="POST" onSubmit="">

{php}
		extract($params);
		require("connect.php");
		$i=$_POST['noofsub'];
		$j=1;
		echo "<table width=100% align=left bgcolor=lightgray cellspacing=2>";
		while($i>0)
		{
			echo "<tr><th align=left>Subject </th><td><input type=text name=s ></td></tr>";
			$i=$i-1;
			$j=$j+1;
		}
		echo "<tr><td align=center colspan=4><input type=submit value= ADD ></td></tr>";
{\php}
</table>
</body>
</html>
