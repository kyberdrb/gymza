<?PHP
 echo  4+10*2;
?>
<br>
<?PHP
 echo (4+10)*2;
?>
<p>
<?PHP
  $x=1;
  $x*=3;
  echo $x;
?><p>
<?PHP
  $a=2;
  $x=3;
  $b=3;
  $x-=$a+$b;
  echo$x;
?>
<p><?PHP
	$a=7;
	$b=1;
	if($b!=0)
	{
	 $p=$a/$b;
	 echo "$a/$b=$p";
	}
	 else
	{
	 echo "nema riešenie";
	 echo "delenie zakázané";
	}
    ?>
<p><?PHP
	$a=7;
	$b=1;
	if($a<$b)
	{
	echo "A je menšie než B";
	}
?>
