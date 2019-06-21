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
		  //var j=email;var c=username; var g=address; var h=phoneno; var j=email;
		  //var o=gender;
          
   		   if(f.q.value=="")
           {
             alert("Please Enter the Question");
             f.q.focus();
             return false;
           }

           if(f.c1.value=="")
           {
             alert("Enter Choice 1");
             f.c1.focus();
             return false;
           }
		   if(f.c2.value=="")
           {
             alert("Enter Choice 2");
             f.c2.focus();
             return false;
           }
		   if(f.c3.value=="")
           {
             alert("Enter Choice 3");
             f.c3.focus();
             return false;
           }
		   if(f.c4.value=="")
           {
             alert("Enter Choice 4");
             f.c4.focus();
             return false;
           }
		   if(f.ans.value=="-select-")
           {
             alert("Select the correct Choice");
             f.c1.focus();
             return false;
           }
           
			return true;
}
</script>
{/literal}
<body>
<font color="red"><h3 align="center"><b>{$mes1}</b> </h3></font><br>


<br><br>
	
   <!--<h3 align="center"><b>{$message}</b> </h3><br>
  	<table width="100%" align="left" bgcolor="lightgray" cellspacing="2">-->
	
	
	{php}
	$order=$qno-$ques;
	
		
		 
		if($ques>0)
		{
			echo "<form name=form action='index.php?service=INSERTQUESTIONS' method='POST' onSubmit=
					'return validateForm();'>";
			echo "<input type=hidden name=qno value={$qno}>";
			echo "<input type=hidden name=ques value={$ques}>";
			echo "	<h4>Question No :</h4>
			<input type=text name=order value={$order} readonly size=3> 
			<h4>Question will be saved in </h4>
			<h4><input type=text name=qpname value={$qpname} readonly></h4> ";
			echo "<table >";
			echo "<table width=100% align=left  bgcolor=lightgray cellspacing=2>";
			echo "<tr><th  valign=middle>Question </th><td colspan=4><textarea name=q  cols=120 rows=2></textarea> </td></tr>";
			echo"</table>";
			echo"<br><br><br>";
			echo "<table width=100% align=left  bgcolor=lightgray cellspacing=2>";
			echo "<tr><td>A  <input type='text' name=c1></td>
				      <td>B  <input type='text' name=c2></td>
					  <td>C  <input type='text' name=c3></td>
					  <td>D  <input type='text' name=c4></td>";
			echo "<td> Correct Choice<select name=ans>
			<option value='-select-' selected>-select-</option><option value=1>Ch 1</option>
			<option value=2>Ch 2</option><option value=3>Ch 3</option>
			<option value=4>Ch 4</option></select></td></tr>";
			echo "<tr><td>&nbsp;&nbsp;</td></tr>";
			echo "</table> </table>";
			echo "<hr align=center>";
			echo "<table width=100% align=left bgcolor=lightgray cellspacing=2>
				  	<tr align=center><td><input type=submit name=setpaper value='SUBMIT PAPER' ></td></tr>
				    </table>
					</form>";
			
		}
		else
		{
			echo "<h1 align=center><font color=green>All Questions Inserted Sucessfully 
					into the Database !!! </font></h1>";
			//echo "To edit a question immediately use forward and backward Buttons";
		}
		

	{/php}
    
	

<!--<tr><td> </td></tr>-->


</body>
</html>
