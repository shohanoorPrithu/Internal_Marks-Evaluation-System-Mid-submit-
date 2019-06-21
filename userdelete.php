<?php
	class userdelete
	{					
		var $template="adduser.tpl";
		
		function userdelete($params,$tpl)
		{
			extract($params);
			require_once("connect.php");
			$sql="delete from users where userid='$userId'";
			//echo "$sql";
			$rs_serve = $con->Execute($sql) or die("Database Error");
			if($rs_serve)
				echo "<center><h2><font color=green> Record Deleted Sucessfully</font></h2></center>";
			else
			    echo "<br><br><center><h2><font color=green>Cannot Delete User/Failed to Delete</font></h2></center>";
				
			$tpl->display($this->template);
			$con->Close();
		}
    }
?>
