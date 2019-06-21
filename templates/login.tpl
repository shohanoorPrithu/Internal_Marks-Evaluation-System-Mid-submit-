<html>

{literal}
  <script language=javascript>
	function validateForm()
	{
	  var f=document.log_in;
	  if(f.userid.value=="")  
      {
            alert("Please Enter UserID"); 
            f.userid.focus();
            return false;  
      }
      if(f.password.value=="")
      {
            alert("please Enter Password");
            f.password.focus();   
            return false;
      }  
      return true;
	}
  </script>
  {/literal}
<body>
    <table border="10" width="100%"><td>
	<form name="log_in" action="index.php" method=POST onSubmit="return validateForm();" >
    
	<table width="80%" height="100%"  >
	<td colspan="2"><img src="./top.jpg" width="" height="" ></td>
	<tr><!--<td width="25%"><img src="./right.jpg" ></td>--><td> </td>
	<td align="center"  valign="top" height="400">
	
	<table  width="40%" height="300" cellspacing="3" bgcolor="cabcab" >
	<!--<tr><th colspan="2" align="center">{$msg1}</th></tr>-->
	<tr><th colspan="2" align="center">{$message}</th>	</tr>
	<tr><th>User Name </th><td><input type=text name=userid value="" maxlength=20 size=20></td></tr>	
	<tr><th>Password </th><td><input type=password name=password value="" maxlength=20 size=20></td></tr>	
	<tr><td colspan="2" align="center"><input type=submit name=ln_submit value="submit"></td>	</tr>
	</table>			              
	
	</td></tr>	   
  	</table>	
	
	</form>
	</td>	</table>	
</body>
</html>
