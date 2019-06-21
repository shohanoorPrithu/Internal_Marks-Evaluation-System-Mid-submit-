
<?php
require_once("adodb.inc.php");

	class adduser
	{	   
		var $template="adduser.tpl";
		function adduser($params,$tpl)
		{			
				extract($params);
				//echo $params['UserId'];
				require_once("connect.php");
				
				if($params['UserId']!="")
				{			
	  				//$sql="insert into add_users values(1,'sun','sun','sun','$UserId','".md5($Password)."','sun','sun','sun','sun',1,date(now()),'f',
					//									'sun','sun','f',7,'f','1111111111');"
				    //echo $acctid; Sami's code
					/*if($acctid==='Administrator') $acctid=1;
					else if($acctid==='Staff') $acctid=2;
					else if($acctid==='Student') $acctid=3;*/
					
					$sql="insert into users values('$UserId',$acctid,'$Password');";
					$sql1="insert into userinfo values('$UserId');";
					//echo $sql;
	  				$rs_adduser=$con->Execute($sql) or die("Unable to insert into users");
					$rs_userinfo=$con->Execute($sql1) or die("Unable to insert userid into userinfo table");
					if($rs_adduser and $rs_userinfo)
	  						echo "<center><h2><font color=green> Record Inserted Sucessfully</font></h2></center>";
					else
							echo "<center><h2><font color=green>  User Already Exists/Unable to Insert a row</font></h2></center>";
					$tpl->display($this->template);					
				}
     			else
             	{
					$tpl->assign("message","ADD USER");					
					$tpl->display($this->template);					
				}		
				$con->Close();
		}
	}	
	
?>
