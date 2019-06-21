<html>
<head>
  <title>Delete Subject</title>
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
<form name=valid action="index.php?service=SUBJECTDELETE" method="POST" onSubmit="return validateForm();">

<br><br>
<h3 align="center"><b>{$message}</b> </h3><br>
  <table width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr>
   <th align="right">Subject&nbsp;</th><td><select name=subject>

{php}
              require("connect.php");
              $sql="select *from subjects";
              $rs=$con->Execute($sql);
              echo "<option>Select</option>";
              while(!$rs->EOF)
              {
                      $subject=$rs->fields[subject];
					  $yr=$rs->fields[year];
					  $sem=$rs->fields[semester];
                      echo "<option value='$subject'>$subject ($yr , $sem)</option>";
                      
                      $rs->MoveNext();
               }
               require("disconnect.php");
{/php}
     
           </select> </td>
<tr><td><br></td><td><br></td></tr>
<tr><td align=center colspan="4"><input type=submit value="DELETE"> </td></tr></table>

<br><br><br><br><br><br><hr> {include file="./footer.tpl"}
</form>
</body>
</html>
