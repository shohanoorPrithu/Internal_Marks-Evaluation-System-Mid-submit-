<?php
	class changepassword
	{	   
		var $template="password.tpl";
		function changepassword($params,$tpl)
		{			
			extract($_POST);extract($params);
			//echo $oldpasswd;
			//echo $newpasswd;
			//echo $newpasswd1;
			$uid= $_SESSION['USERID'];
			//echo $uid;
			require_once("connect.php");
			if(strcmp($changepassword,"SAVE")==0)
			{
			    $sql = "select password from users where userid='$uid';";
				//echo $sql;
				$rs= $con->Execute($sql);
				$pwd = $rs->fields[0];
				//echo $pwd;
				if ($pwd==$oldpasswd)
				{
					if($newpasswd == $newpasswd1)
					{
						$sql = "update users set password='$newpasswd' where userid='$uid';";
						//echo $sql;
						$rs= $con->Execute($sql) or die ("Unable to Update Password");
					    echo "<center><font color=green size=5>Successfully Updated the Password</font>";
					    $tpl->display($this->template);
					}
					else
					{
					   echo "<center><font color=green size=5>Re-Enter the Password</font>";
					   $tpl->display($this->template);
					}   
			    }
				else
				{
				   echo "<font color=green size=5>Invalid Password</font>";
				   $tpl->display($this->template);
				}   	
			}	
			else
			{	
				$tpl->assign("message","CHANGE PASSWORD");
				$tpl->display($this->template);
			}	
				$con->Close();
		}
}
?>
