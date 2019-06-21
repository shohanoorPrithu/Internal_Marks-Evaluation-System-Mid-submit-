<html>
<head>
  <title>User Information </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>

<body>
<form action="index.php?mode=USER" method="POST">
{include file="usertemplate.tpl"}

{php}
              require("connect.php");
              $sql="select *from userinfo order by userid; ";
			  $sql1="select acctid from users order by userid";
              $rs=$con->Execute($sql);
			  $rs1=$con->Execute($sql1);
              echo "<center><h3>Users Details</h3></center><br>";
              echo "<table border=0 align=center><tr><th bgcolor=> User ID </th><th bgcolor=> Account ID </th>
			  <th bgcolor=> User Name </th><th bgcolor=> Father's Name </th><th bgcolor=> E-mail ID </th>
			  <th bgcolor=>Telephone</th><th bgcolor=>  Address  </th><th bgcolor=> Gender </th>
			  <th bgcolor=> Year </th><th bgcolor=> Sem </th></tr>";
              while(!$rs->EOF || !$rs1->EOF)
              {
                   echo "<tr>";
                      $a=$rs->fields[userid];
					  $b=$rs1->fields[acctid];
                      $c=$rs->fields[username];
					  $d=$rs->fields[fathername];
					  $e=$rs->fields[email];
					  $f=$rs->fields[phoneno];
					  $g=$rs->fields[address];
					  $h=$rs->fields[gender];
					  $i=$rs->fields[year];
					  $j=$rs->fields[semester];
                      echo "<td bgcolor=fedcba>$a</td><td bgcolor=abcdef>$b</td><td bgcolor=fedcba>$c</td>
					  <td bgcolor=abcdef>$d</td><td bgcolor=fedcba>$e</td><td bgcolor=abcdef>$f</td>
					  <td bgcolor=fedcba>$g</td><td bgcolor=abcdef>$h</td><td bgcolor=fedfed>$i</td>
					  <td bgcolor=fedfed>$j</td>";
                      echo "</tr>";
                      $rs->MoveNext();
					  $rs1->MoveNext();
               }
              echo "</table>";
			  require("disconnect.php");
			   
{/php}
     
</form>
<hr> {include file="./footer.tpl"}
</body>
</html>
