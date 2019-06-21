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
          if(f.topicname.value=="Select")
      {
            alert("Please Select User Name");
            f.topicname.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}


<body>
<form name=valid action="index.php?mode=USER" method="POST" onSubmit="return validateForm();">
{include file="usertemplate.tpl"}
<br><br>
<h3 align="center"><b>{$message}</b> </h3><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">User ID&nbsp;</th><td><select name=userId>

{php}
              require("connect.php");
              $sql="select *from users order by userid";
              $rs=$con->Execute($sql);
              echo "<option>Select</option>";
              while(!$rs->EOF)
              {
                      $userId=$rs->fields[userid];
                      echo "<option>$userId</option>";
                      
                      $rs->MoveNext();
               }
               require("disconnect.php");
{/php}
     
           </select> </td>
<tr><td><br></td><td><br></td></tr>
<tr><td align=center colspan="4"><input type=submit value="DELETE"> </td></tr></table>
<input name=service type=hidden value="USERDELETE" />
<br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
