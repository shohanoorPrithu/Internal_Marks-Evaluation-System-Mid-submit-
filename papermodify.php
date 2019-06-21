<?php
	class papermodify
	{					
		var $template="papermodify.tpl";
		function papermodify($params, $tpl)
		{
			extract($params);
			require_once("connection.php");
			//$user=$_SESSION['USERID'];
			//$qpaper=$_POST['paper'];
			//echo " paper  is $paper";
			/*$sql = "select *from $paper;";
			
			$rs = $conn->Execute($sql);
                        if($rs)
                         {
						 
						  
							$sno=$rs->fields[0];
							$question=$rs->fields[1];
							
							$ch1=$rs->fields[2];
							
							$ch2=$rs->fields[3];
							$ch3=$rs->fields[4];
							
							$ch4=$rs->fields[5];
							
							$ans=$rs->fields[6];
							
						
                         }
                    
				        $tpl->assign("message","EDIT PAPER");
                        
                       
                        $tpl->assign("sno",$sno);
						$tpl->assign("ques",$question);
                    
                        $tpl->assign("ch1",$ch1);
                     
                        $tpl->assign("ch2",$ch2);
                        $tpl->assign("ch3",$ch3);
                        
                        $tpl->assign("ch4",$ch4);
						$tpl->assign("ans",$ans);*/
						$tpl->assign("message","EDIT PAPER");                      
                        $tpl->assign("paper",$paper);
						$tpl->display($this->template);
						$conn->Close();
		}
    }
?>
