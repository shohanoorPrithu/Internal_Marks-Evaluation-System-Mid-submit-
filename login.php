<?php
    class login
    {
        var $template="login.tpl";
        var $temp1="mainform.tpl";
        
        function login($params,$tpl)
        {
		    extract($_POST);
			//echo $params['userid'];
            if(!(isset($params['userid'])))
            {
				  //$tpl->assign("msg","The User Name is: Your HallTicket Number");
				  //$tpl->assign("msg1","The Default Password is : gec ");
				  $tpl->assign("message","<h2>Login Here </h2><br>");
                  $tpl->display($this->template);
            }
            else
            {     
                 $userid=$params['userid']; 
				 require_once("connect.php");	
                 $query="select * from users where userid='$userid'";
                 $rs=$con->Execute($query) or die("unable to exec");
          
                 $found=0; 
                 $uid="";
                 $pwd="";
                 while(!$rs->EOF)
                 {     
                      if(( $rs->fields[0]===$params['userid'])and($rs->fields[2]===$params['password']))
                      {  
		         		$uid=$rs->fields[0];
                        $pwd=$rs->fields[2];
                        $found=1; 
                        break; 
                       }
                      $rs->MoveNext();
                 }
				 
                 if($found)
                 {
					   $_SESSION['USERID']=$userid;
					   $tpl->display($this->temp1);
                 }
                 else
                 {
                      $tpl->assign("message","Invalid UserName or Password<br>Please Try Again..");
                      $tpl->display($this->template);
                 } 
                $con->close();  
            }
        } 
    }
?>
