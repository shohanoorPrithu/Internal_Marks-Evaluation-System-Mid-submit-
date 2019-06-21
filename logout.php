<?php
     class logout
	 {
	     function logout($params,$tpl)
		 {
		    session_destroy();
			echo "<br><br><br>";
			echo "<body><font color=green size=6><center><b>You Have Successfully Logged Out</b></font><br>";
			echo "<p align=center><a href=index.php ><font color=green size=4><b>Return to Home</b></font></a></center></body>";
			echo "<br>(You Need to login again)</p>";
		 }
	 }
