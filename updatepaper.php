<?php
class updatepaper
{
	function updatepaper($params,$tpl)
	{
		require_once("connection.php");
		extract($params);
		$i=1;
		//echo " $a1  ";
		while($i<=$count)
		{
			$a="ques_".$i;
			$ques=$$a;
			$a="opt1_".$i;
			$opt1=$$a;
			$a="opt2_".$i;
			$opt2=$$a;
			$a="opt3_".$i;
			$opt3=$$a;
			$a="opt4_".$i;
			$opt4=$$a;
			$a="ans_".$i;
			$ans1=$$a;
			$sql="update $papername set ques='$ques',ans1='$opt1',ans2='$opt2',
					ans3='$opt3',ans4='$opt4',cans=$ans1 where sno=$i;";
			$rs=$conn->Execute($sql);
			if($rs)
			echo "<br><font color=green>Question $i updated successfully</font>";
			else
			echo "<br><font color=red>Failed ot update Question $i </font>";
			$i++;
		}
	}
}


?>
