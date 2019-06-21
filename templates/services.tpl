<html>
<head>
<style>

</style>

</head> 
<body bgcolor=white leftmargin="0" topmargin="3">
<TABLE border=0 cellspacing=2 width='100%'>
{php}
		$i=1;
		$top=11;
	 	while(!$rs->EOF)
	 	{
	 		$code=$rs->fields[0];
			$mode=$rs->fields[1];
			$pcode=$code;
			if(strlen($code)>22)
			{
				$code=substr($code,0,17);
				$code.="...";
			}
			$ht=$top+4;
         	if ($mode === 'LOGOUT')
			echo "<tr><td><a href='./index.php?service=$mode' target=_parent title=\"$pcode\"  onmouseover=\"imgOn('image$i'); return true;\" onmouseout=\"imgOff('image$i'); return true;\" onfocus=\"imgOn('image$i'); return true;\" onblur=\"imgOff('image$i'); return true;\" onClick=\"imgClick('image$i'); return true;\"><span style=\"position:absolute; top:$ht ; left:15; width:160; height:20; z-index:2\">$code</span><img style=\"position:absolute; top:$top ; left:7; width:176; height:25; z-index:0\" src=\"1.png\" border=0 name=\"image$i\" ></a></td></tr>";
			else if($mode == 'STARTEXAM')
			   echo "<tr><td align=left><a href='./index.php?service=$mode' target=_newtitle=\"$pcode\"  onmouseover=\"imgOn('image$i'); return true;\" onmouseout=\"imgOff('image$i'); return true;\" onfocus=\"imgOn('image$i'); return true;\" onblur=\"imgOff('image$i'); return true;\" onClick=\"imgClick('image$i'); return true;\"><span style=\"position:absolute; top:$ht ; left:15; width:160; height:20; z-index:2\">$code</span><img style=\"position:absolute; top:$top ; left:7; width:176; height:25; z-index:0\" src=\"1.png\" border=0 name=\"image$i\" ></a></td></tr>";
			else 
			   echo "<tr><td><a href='./index.php?service=$mode' target=right title=\"$pcode\" onmouseover=\"imgOn('image$i'); return true;\" onmouseout=\"imgOff('image$i'); return true;\" onfocus=\"imgOn('image$i'); return true;\" onblur=\"imgOff('image$i'); return true;\" onClick=\"imgClick('image$i'); return true;\" ><span id=\"cd$i\" style=\"position:absolute; top:$ht ; left:15; width:160; height:20; z-index:2\"><a>$code</a></span><img style=\"position:absolute; top:$top ; left:7; width:176; height:25; z-index:0\" src=\"1.png\" border=0 name=\"image$i\"></a></td></tr>";
			   $i++;
			   $top=$top+28;
			$rs->MoveNext();
	 	}
{/php}	   
</TABLE>

{literal}
<style type="text/css">
A{text-decoration: none; color:03126c}
A:hover{text-decoration:none ;color:green; cursor: hand}
</style>
{/literal}
{literal}
<script language="javascript" >
var present="";
function imgOn(imgName) 
{
	if(imgName!=present)
    document[imgName].src = "2.png";
}
function imgOff(imgName) 
{
	if(imgName!=present)
    document[imgName].src = "1.png";
		
}
function imgClick(imgName)
{
	if(present!="")
	document[present].src= "1.png";
	present=imgName;
	document[imgName].src= "3.png";
}
</script>
{/literal}
</body>
</html>
