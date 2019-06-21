<html>
<head>
  <title>College Information Page</title>
  <link rel="stylesheet" href="mystyle.css">
</head>
                                                                                              
{literal}
  <script language=javascript>
        function validateForm()
        {
     	     var f=document.form;
      
			 if(f.testno.value=="")
    		  {
        		    alert("Please Enter Test No :");
        		    f.testno.focus();
        		    return false;
      			}
				
				if(f.paper.value=="")
    		  {
        		    alert("Please Select a Question Paper to Activate");
        		    f.paper.focus();
        		    return false;
      			}
				
				if(f.dura.value=="")
    		  {
        		    alert("Please Enter Duration");
        		    f.dura.focus();
        		    return false;
      			}
     		 return true;
        }
  </script>
  {/literal}

<body>
<form name=form action="index.php?service=FINALIZEEXAM" method="POST" onSubmit="return validateForm();">

<br><br>
  <h3 align="center"> {$message} </h3>
   <table bgcolor=lightgray width=100%>
   
   <tr><th align="left">    Test No :</th><td><input type=text name="testno" maxlength=2 size=2></td></tr>
   <tr><th align="left">    Paper Name :</th><td><select name=paper ><option selected=""></option>
   {php}
    	require_once("connect.php");
		$user=$_SESSION['USERID'];
		$sql1="select qpname from exams where activated='f' and qpsetby='$user';";
		$rs1=$con->Execute($sql1) or die("Unable to retrieve paperlist");
		while(!$rs1->EOF)
		{
			$opt=$rs1->fields[0];
			echo "<option value='{$opt}'>{$opt}</option>";
			$rs1->Movenext();
		}
   {/php}
   </select>

    </th></tr>

<tr><th align="left">    Date			    :</td><td>{html_select_date prefix="date"}</td>

<tr><th align="left">    Start Time      :</th><td>{html_select_time prefix="sttime" start_time="+24"}<!--<input type=text name=sttime>--></td>
<tr><th align="left">    Duration(in minutes) :</th><td><input type="text" name="dura" size="3" maxlength="3" value="20"></td></tr>
<!--<td>      End Time(HH:MM):</td><td>{html_select_time prefix="entime" start_time="+24"}--><!--<input type=text name=entime>-->
<!--<input type=text name=date>-->
 
<tr><td><td></td></td></tr>
<tr><td colspan="2" align=center><input type=submit value=ACTIVATE name="active" ></td> </tr>
</table>
</form>
 <br><br><br><hr> {include file="./footer.tpl"}
</body>
</html>
