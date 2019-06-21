<?php
	class editprofile
	{					
		var $template="profileedit.tpl";
		function editprofile($params, $tpl)
		{
			extract($params);
			require_once("connect.php");
			$user=$_SESSION['USERID'];
			
			$sql = "select *from userinfo where userid='$user';";
			
			$rs_serve = $con->Execute($sql);
                        if($rs_serve)
                         {
						 
						  
							$username=$rs_serve->fields[1];
							$fathername=$rs_serve->fields[2];
							
							$userid=$rs_serve->fields[0];
							
							$address=$rs_serve->fields[5];
							$phoneno=$rs_serve->fields[6];
							
							$email=$rs_serve->fields[3];
							
							$gender=$rs_serve->fields[4];
							$year=$rs_serve->fields[7];
							$semester=$rs_serve->fields[8];
						
                         }
                    
				        $tpl->assign("message","EDIT PROFILE");
                        
                       
                        $tpl->assign("nm",$username);
						$tpl->assign("fn",$fathername);
                    
                        $tpl->assign("ui",$userid);
                     
                        $tpl->assign("ad",$address);
                        $tpl->assign("ph",$phoneno);
                        
                        $tpl->assign("em",$email);
						$tpl->assign("yr",$year);
						$tpl->assign("sem",$semester);
                        
                        $tpl->assign("gg",$gender);
                        
                       
						$tpl->display($this->template);
						$con->Close();
		}
    }
?>
