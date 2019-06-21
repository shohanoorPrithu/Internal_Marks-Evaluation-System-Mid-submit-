<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
 </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.adduser;
          if(f.oldpasswd.value=="")
      {
            alert("Please Enter Old Password");
            f.oldpasswd.focus();
            return false;
      }
      if(f.newpasswd.value=="")
      {
            alert("please Enter New Password");
            f.newpasswd.focus();
            return false;
      }

      if(f.newpasswd1.value=="")
      {
            alert("please Enter Re-Type Password");
            f.newpasswd1.focus();
            return false;
      }  
 
      if(f.newpasswd.value != f.newpasswd1.value)
       {
            alert("please Enter New Password And Re-Type Password Are Same");
            f.newpasswd1.value="";
            f.newpasswd.value="";
            f.newpasswd.focus();
            return false;
       }
      return true;
        }
  </script>
  {/literal}

<body>
<form name="adduser" action="index.php?service=CHANGEPASSWORD" method="POST" onSubmit="return validateForm();">
<br><br><br>
     <table width="100%" bgcolor="#aabbcc" ><tr><td><H3 align="center">{$message}</h3></td></tr></table> 
  <hr><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">Old Password&nbsp;</th><td><input type="password"   name="oldpasswd" value=""></td>
   </tr><tr>
   <th align="right">New Password&nbsp;</th><td><input type="password" name="newpasswd" value=""></td>
   </tr>
   <th align="right">Re-Type Password&nbsp;</th><td><input type="password" name="newpasswd1" value=""></td>
   </tr><tr>
   <tr><td align="center" colspan="4">
     <input type=submit value=SAVE name="changepassword">
   </td>
</table>
</form>
<br><br><br><br><br><br><br><br><br><hr>{include file="./footer.tpl"}
</body>
</html>
