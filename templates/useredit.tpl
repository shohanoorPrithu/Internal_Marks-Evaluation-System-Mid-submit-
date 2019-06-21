<html>
<head>
  <title>Student Information </title>
  <link rel="stylesheet" href="mystyle.css">
 
</head>
{literal}
  <script language=javascript>
        function validateForm()
        {
          var f=document.valid;
		  
          
   		   if(f.username.value=="")
           {
             alert("Please Enter Name");
             f.username.focus();
             return false;
           }

           if(f.address.value=="")
           {
             alert("please Enter Address");
             f.address.focus();
             return false;
           }
           
		   if(f.phoneno.value=="")
           {
             alert("Please Enter Phone Number");
             f.phoneno.focus();
             return false;
           }

           if(f.phoneno.value!="")
           {
             var arr=f.phoneno.value;
             for(var i=0;i<arr.length;i++)
             {
               var c=arr.substring(i,i+1);
               if(c==' ')
               {
                 alert("There Is Not Space Between Given PhoneNumber");
                 f.phoneno.focus();
                 return false;
               }
               else if( (c == 0)||(c == 1)||(c == 2)||(c == 3)||(c == 4)||(c == 5)||(c == 6)||(c == 7)||(c == 8)||(c == 9) )
               {
               }
               else
               {
                 alert("There Is Must Be Only Numbers");
                 f.phoneno.focus();
                 return false;
               }
              } //end of for
            }  //end of if
  

            if(f.email.value=="")
            {
              alert("Please Enter UserEmail");
              f.email.focus();
              return false;
            }

            if(f.email.value!="")
            {
              var v=f.email.value;
              var ll=v.length;
              var x=new String(v);
              var index = x.indexOf("@")
              if(index > 0)
              {
                var pindex = x.indexOf(".");
                if ((pindex > index+1) && (x.length > pindex+1))
                {
                }
                else
                {
                  alert("Please enter a complete email address in the form: yourname@yourdomain.com");
                  f.email.focus();
                  return false;
                }
               }
               else
               {
                 alert("Please enter a complete email address in the form: yourname@yourdomain.com");
                 f.email.focus();
                 return false;
               }
             }
 
             if(f.gender.value=="")
             {
               alert("Please Enter Gender");
               f.gender.focus();
               return false;
             }
			 
			 if(f.fathername.value=="")
             {
               alert("Please Enter your Father's Name");
               f.fathername.focus();
               return false;
             }

     
          return true;
        }
  </script>
  {/literal}


<body> 
<form name=valid  action="index.php?service=USERUPDATE" method="POST" onSubmit="return validateForm();" enctype="multipart/form-data">

<input type="hidden" name="MAX_FILE_SIZE" value="100000" />
  <h3 align="center">{$message}</h3>
  <table  width="100%" align="left" bgcolor="lightgray" cellspacing="2">
   <tr><th > </th></tr><tr><th>  </th></tr>
  <tr>
 <th colspan="4" align="center">UserId&nbsp;&nbsp;<font color="blue"><input type="text" name="userid" readonly value="{$ui}"></font></th>
 </tr>
 <tr><th > </th></tr><tr><th>  </th></tr>
  <tr> 
   <th align="left">Name&nbsp;</th><td><input type="text" name="username" value="{$nm}"></td> 
   <th align="left">Father's Name&nbsp;</th><td><input type="text" name="fathername" value="{$fn}"></td>
 </tr>
 
 <tr>
     <th align="left"> Year </th><td><input type="text"   name="year" value="{$yr}"></td>
  	 <th align="left"> Sem </th><td><input type="text" name="semester" value="{$sem}"></td>
 </tr>
 <!--<tr>
   <th align="right">UserId&nbsp;</th><td><input type="text" name="userid" value="{$ee}" readonly=""></td> 
   <th align="right">Password&nbsp;</th><td><input type="password"   name="password" value="{$ff}"></td>
 </tr>-->
 <tr>
   <th align="left">Address&nbsp;</th><td><input type="text" name="address" value="{$ad}"></td>
   <th align="left">Phone No &nbsp;</th><td><input type="text"   name="phoneno" value="{$ph}"></td>
</tr>
<tr>
  
   <th align="left">Email&nbsp;</th><td><input type="text"   name="email" value="{$em}"></td>



   <th align="left">Gender&nbsp;</th><td><select name="gender">Select
   <option selected="{$gg}">{$gg}</option><option>Male</option><option>Female</option>
   </select>
   
<tr>
    <td align="center" colspan="4"> <input type=submit value=UPDATE> </td>
</tr>
</table>
 <input name=service type=hidden value="USERUPDATE" />
</form><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<hr> {include file="./footer.tpl"}
</body>
</html>
