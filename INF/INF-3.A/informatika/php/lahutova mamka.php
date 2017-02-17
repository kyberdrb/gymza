<?PHP
$a = 5;
if ($a==4)
	echo("4");
	elseif ($a<4)
		echo("menší než 4");
	else{
		if($a>4 && $a<7){
			echo("èíslo je vìtsi nez 4 a mensí nez 6");
		}
		else echo($a);
		}
?>