<html>
<head>
  <title>Subject Information </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>

<body>
<form action="index.php?mode=USER" method="POST">
{include file="usertemplate.tpl"}

{php}
              require("connect.php");
              $sql="select *from subjects order by year;";
			  $rs=$con->Execute($sql);
			  
              echo "<center><h3>Subject Details</h3></center><br>";
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
              echo "</table>";
			  require("disconnect.php");
			   
{/php}
     
</form>
<hr> {include file="./footer.tpl"}
</body>
</html>
