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
         if(f.UserId.value=="Select")
      {
            alert("Please Select User Name");
            f.UserId.focus();
            return false;
      }

     
      return true;
        }
  </script>
  {/literal}


<body>
<form name=valid action="index.php?service=USEREDIT" method="POST" onSubmit="return validateForm();">
{include file="usertemplate.tpl"}
<br><br>
   <h3 align="center"><b>{$message}</b> </h3><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">User Name&nbsp;</th><td><select name=UserId>

{php}
              require("connect.php");
              $sql="select *from users order by userid";
              $rs=$con->Execute($sql) or die(" Unable ");
              echo "<option>Select</option>";
              while(!$rs->EOF)
              {
                      $topicid=$rs->fields[0];
                      $topicname=$rs->fields[userid];
                      echo "<option>$topicname</option>";
                      
                      $rs->MoveNext();
               }
               require("disconnect.php");
{/php}
     
           </select> </td>
<tr><td><br></td><td><br></td></tr>
<tr><td align=center colspan="4"><input type=submit value="EDIT"> </td></tr></table>
 <!--<input name=service type=hidden value="USEREDIT" />-->
 
<br><br><br><br><br><br><hr> {include file="./footer.tpl"} 
</body>
</html>
