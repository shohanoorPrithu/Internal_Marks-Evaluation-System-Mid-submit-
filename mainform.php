<?php
	class mainform
	{
		var $template="mainform.tpl";
		function mainform($params, $tpl)
		{
				$tpl->assign("message","WELCOME");
				$tpl->display($this->template);
		
		}
	}
?>
