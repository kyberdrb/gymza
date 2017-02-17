<html>
<head><title>Sèítanie</title></head>
<body>
<H1>Sèítanie</H1>

<?php
$a = 2;
$b = 3;
$c = $a + $b;

echo "$a + $b = $c\n";
?>



<H1>Velkost Písma</H1>




<?
for($i=1; $i<=7; $i++):
?>
<P><font size="<?echo $i?>">Prázdniny</font>

<H7>Prázdniny</H7>
<H6>Prázdniny</H6>
<H5>Prázdniny</H5>
<H4>Prázdniny</H4>
<H3>Prázdniny</H3>
<H2>Prázdniny</H2>
<H1>Prázdniny</H1>


<?endfor?>

<br>
<br>
<br>
<br>


<H1>Podmienka</H1>


<?php

$vek = 20;

if ($vek < 18) 
   {echo "Dieta";} 
 else 
   {echo "Dospely";}
?>













</body>
</html>