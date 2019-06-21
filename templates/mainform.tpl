<html>

<head>
  <title></title>
  <link rel="stylesheet" href="mystyle.css">
</head>

<frameset rows="20%,*">
<frame src="./templates/top.tpl" name=top scrolling="false" noresize="true"> 		
		<frameset COLS="20%,*">
			<frame src="./index.php?service=SERVICELIST" noresize>
			<frame name="right" src="./index.php?service=WELCOME" noresize>
		</frameset>
</frameset>		
	 <input  type="hidden" name="" value={$user} />


</html>
