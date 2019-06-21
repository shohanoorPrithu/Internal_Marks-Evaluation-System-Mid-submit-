<html>
<head>
  <title>Adding new Users</title>
  </head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.adduser;
          if(f.UserId.value=="")
      {
            alert("Please Enter UserId");
            f.UserId.focus();
            return false;
      }
      if(f.Password.value=="")
      {
            alert("please Enter Password");
            f.Password.focus();
            return false;
      }
      return true;
        }
  </script>
  {/literal}

<body>
<form name="adduser" action="index.php?service=ADDUSER" method="POST" onSubmit="return validateForm();">
<!--<br><br><br><br><br><br>
<a href="index.php?service=ADDUSER">Add</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="controler.php?mode=edituser">Edit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="controler.php?mode=deleteuser">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="controler.php?mode=viewuser">View</a>-->
{include file="usertemplate.tpl"}
<br><br>

<center><b>{$message}</b></center> <br><br>
  <table width="100%" align="left" bgcolor=lightgray cellspacing="2">
   <tr><td><td></td></td></tr>
   <tr>
   <th align="right">User Id&nbsp;</th><td><input type="text"   name="UserId" value=""></td>
   <th align="right">Password&nbsp;</th><td><input type="password" name="Password" value=""></td>
   <th align="right">Account Type&nbsp;</th><td><select name="acctid" value="">
   <option value=1>Administrator</option><option value=2>Staff</option><option selected value=3>Student</option>
   </select></td>
   </tr><tr><td></td></tr><tr><td></td></tr><tr><td></td></tr>
   <tr><td align="center" colspan="5">
     <input type=submit value=SAVE name="addusersave">
   </td>
</table>
</form>
 <input name=service type=hidden value="ADDUSER" />
 <br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
