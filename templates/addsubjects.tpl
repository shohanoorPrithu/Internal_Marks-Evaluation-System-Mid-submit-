<html>
<head>
  <title> </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>
{literal}
<script language="javascript">
function validateForm()
{
	
	if(document.valid.noofsub.value=="")
	{
		alert ("Enter No of Subjects");
		document.valid.noofsub.focus();
		return false;
	}
	return true;
	
}
function disable1()
{
	if(document.valid.year.value=="1")
	{
		document.valid.semester.disabled=true;
	}
	else 
	{
		document.valid.semester.disabled=false;
	}
}
</script>


{/literal}
<body>
{include file="footer.tpl"}
<form name=valid action="index.php?service=SUBJECTADD" method="POST" onSubmit="return validateForm();">

<br><br>
   <h3 align="center"><b>{$mess}</b> </h3><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="left">&nbsp;&nbsp;Enter Year &nbsp;</th><td>
   <select name=year onChange="disable1()">
   <option value=1>First</option><option value=2>Second</option><option value=3>Third</option>
   <option value=4>Final</option>
   </select> </td>
   </tr>
  <tr>
   <th align="left">&nbsp;&nbsp;Enter Semester &nbsp;</th>
   <td><select name=semester>
   <option value=1>First</option><option value=2>Second</option>
   </select> </td>
   </tr>
   <th align="left">&nbsp;&nbsp;Enter No. of Subjects &nbsp;</th>
   <td><input type="text" name="noofsub"></td>
   </tr>
   
   <tr><td align=center colspan="4"><input type=submit value=" Next Step "> </td></tr>
  
  </table>
{include file="footer.tpl"}
{literal}
<script language="javascript">
document.valid.semester.disabled=true;
</script>
{/literal}
</body>
</html>
