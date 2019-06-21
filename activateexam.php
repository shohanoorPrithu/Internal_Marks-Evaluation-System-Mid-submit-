<?php
class activateexam
{
	function activateexam($params,$tpl)
	{
		$tpl->assign("message","Activate Exam");
		$tpl->display("activateexam.tpl");
	}
}



?>
