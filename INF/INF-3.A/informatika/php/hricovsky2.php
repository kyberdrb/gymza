<html>
<head><title>php</title></head>
<body>

<?php

$a = 5;
if ($a==4)
	echo("4");
	elseif ($a<4)
		echo("mensie ako 4");
	else{
		if($a>4 && $a<6){
			echo("èíslo je vacsie ako 4 a mensie ako 6");
		}
		else echo($a);
		}

?>



</body>
</html>