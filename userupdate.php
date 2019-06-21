<?php
	class userupdate
	{					
		var $template="adduser.tpl";
		
		function userupdate($params, $tpl)
		{
			extract($params);
			extract($_POST);
			
			//echo "email::::".$imgpath;
  			require_once("connect.php");
            /*  
			$imgpath="";
			move_uploaded_file($_FILES['imgpath']['tmp_name'],"images/".$userid.$_FILES['imgpath']['name']);
                            //or die("Could not Upload photo.......");

			$path=$userid.$_FILES['imgpath']['name'];
			
			//echo "imgpath:::".$imgpath; 
			//echo "path:::".$path;
        	*/
			$sql="update userinfo set username='$username', fathername='$fathername',
			email='$email', gender='$gender', address='$address', phoneno=$phoneno , 
			year='$year' , semester='$semester'
			where userid='$userid' ";


            echo $sql;
			$rs_serve = $con->Execute($sql) or die (" Unable to update user info ");
			if($rs_serve)
				echo "<center><h2><font color=green> Record Updated Sucessfully</font></h2></center>";
			else
			    echo "<center><h2><font color=green> Unable to Update a row</font></h2></center>";
			$tpl->display($this->template);
			$con->Close();
		}
    }
?>
