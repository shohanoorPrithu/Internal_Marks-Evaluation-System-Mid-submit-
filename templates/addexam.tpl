<html>
<head>
  <title> </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>
{literal}

<script language=javascript>

function validateForm()
{
	var f=document.form;
    if(f.year.value=="0")
    {
    	alert("Please Enter year");
        f.year.focus();
        return false;
    }
    if(f.sem.value=="0" && f.year.value!=="1")
    {
        alert("please Enter semester");
        f.sem.focus();
        return false;
    }
	if(f.subject.value=="select")
    {
        alert("Please Enter subject");
        f.subject.focus();
        return false;
    }
	
	if(f.noofques.value=="")
    {
        alert("Please Enter no of Questions");
        f.noofques.focus();
        return false;
    }
	
	if(f.noofques.value!="")
    {
       if(isNaN(f.noofques.value))
	   {
	    	alert("Please Enter a proper number");
       		f.noofques.focus();
        	return false;
		}
	}
	return true;  
}
function submit_form()
{
	f.req.value=1;
	form.submit();
}
  </script>

{/literal}
<body>
<form name=form action="index.php?service=ADDEXAM" method="POST" onSubmit="return validateForm();">
<input type=hidden value=0 name=req>
<br><br>
	<font color="red"><h3 align="center"><b>{$mes1}</b> </h3></font><br>
   <h3 align="center"><b>{$message}</b> </h3><br>
   <table border="2" width="100%"><tr><td>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="left">&nbsp;&nbsp;Enter Year &nbsp;</th><td><select name=year onchange="submit_form()">
   <option value="0">-select-</option>
   {php}
     
   if($yr==1)
   echo "<option selected>1</option>";
   else echo "<option>1</option>";
   
   if($yr==2)
   echo "<option selected>2</option>";
   else echo "<option>2</option>";
   
   if($yr==3)
   echo "<option selected>3</option>";
   else echo "<option>3</option>";
   
   if($yr==4)
   echo "<option selected>4</option>";
   else echo "<option>4</option>";
   
   {/php}
   </select>
   </tr>
  <tr>
   <th align="left">&nbsp;&nbsp;Enter Semester &nbsp;</th><td><select name=sem onchange="submit_form()">
   <option value="0">-select-</option>
   {php}
   if($sem==1)
   echo "<option selected>1</option>";
   else echo "<option>1</option>";
   if($sem==2)
   echo "<option selected>2</option>";
   else echo "<option>2</option>";
   {/php}
   </tr>
  <tr>
   <th align="left">&nbsp;&nbsp;Enter Subject Name &nbsp;</th><td>
   <select name="subject">
   {php}
   require("connect.php");
   if($yr=="")
   $yr=0;
   if($sem=="")
   $sem=0;
  
   if($yr==1) 
   $sql="select * from subjects where year=$yr";
   else
   $sql="select * from subjects where year=$yr and semester=$sem;";

	  $rs=$con->Execute($sql) or die("Unable");
    while(!$rs->EOF)
   {
   		$sub=$rs->fields[subject];
   		echo "<option value=\"$sub\">$sub</option>";
		$rs->movenext();
	}
	echo "<option value=select>-select-</option>";
	{/php}
   </select>
   </td>
   </tr>
   <tr>
   <th align="left">&nbsp;&nbsp;Enter No of Questions &nbsp;</th><td><input type="text" name="noofques"></td>
   </tr>


<tr><td> </td></tr>
<tr align="right"><td><input type="submit" name="setpaper" value="SET PAPER"></td></tr>
</table>
</td></tr>
</table>
</form>
</body>
{literal}
<script language="javascript">
var f=document.form;
if(f.year.selectedIndex==1)
{
	f.sem.disabled=true;
}
	

</script>
{/literal}
</html>
