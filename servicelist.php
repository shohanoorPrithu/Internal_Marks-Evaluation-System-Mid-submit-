<?php
   class servicelist
    {
        function servicelist($params,$tpl)
        {
   		require("connect.php");
		$userid= $_SESSION['USERID']; 
		$sql = "select servicename,mode from services where serviceid IN (select serviceid from servicemap where acctid IN (select acctid from users where userid='$userid')) order by disporder;";  //$userid is cookie var.
		$rs=$con->Execute($sql) or die("Unable to execute");;
		$tpl->assign("rs",$rs);
		$tpl->display("services.tpl");
		$con->Close();
		}
	}	
?>

