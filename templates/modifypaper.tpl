<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>

{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.valid;
         if(f.paper.value=="Select")
      {
            alert("Please Select Paper");
            f.paper.focus();
            return false;
      }

     
      return true;
        }
  </script>
  {/literal}


<body>
<form name=valid action="index.php?service=PAPERMODIFY" method="POST" onSubmit="return validateForm();">

<br><br>
   <h3 align="center"><b>{$message}</b> </h3><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">Paper Name&nbsp;</th><td><select name=paper>

{php}
              require("connect.php");
			  $user=$_SESSION['USERID'];
              $sql="select qpname from exams where qpsetby='$user';";
              $rs=$con->Execute($sql) or die(" Unable to get paper to modify");
              echo "<option>Select</option>";
              while(!$rs->EOF)
              {
                      $paper=$rs->fields[0];
                      
                      echo "<option>$paper</option>";
                      
                      $rs->MoveNext();
               }
               require("disconnect.php");
{/php}
     
           </select> </td>
<tr><td><br></td><td><br></td></tr>
<tr><td align=center colspan="4"><input type=submit value="MODIFY"> </td></tr></table>
 <!--<input name=service type=hidden value="USEREDIT" />-->
 
<br><br><br><br><br><br><hr> {include file="./footer.tpl"} 
</body>
</html>
