<?php
class welcome
 {
    function welcome($params,$tpl)
	{
	    extract($params);
		$userid=$_SESSION['USERID'];
		require_once("connect.php");
		$sql="select  username  from userinfo where userid='$userid'";
		$res=$con->Execute($sql);
		$userid=$res->fields[0];
		//$acctid=$res->fields[1];
	//if($id==111)
	$msg="  *  $userid  * ";
	$tpl->assign("msg",$msg);
	$tpl->display("welcome.tpl");
	
	
	}
 
 }

?>
