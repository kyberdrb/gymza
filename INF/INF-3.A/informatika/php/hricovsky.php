<html>
<head><title>S��tanie</title></head>
<body>
<H1>S��tanie</H1>

<?php
$a = 2;
$b = 3;
$c = $a + $b;

echo "$a + $b = $c\n";
?>



<H1>Velkost P�sma</H1>




<?
for($i=1; $i<=7; $i++):
?>
<P><font size="<?echo $i?>">Pr�zdniny</font>

<H7>Pr�zdniny</H7>
<H6>Pr�zdniny</H6>
<H5>Pr�zdniny</H5>
<H4>Pr�zdniny</H4>
<H3>Pr�zdniny</H3>
<H2>Pr�zdniny</H2>
<H1>Pr�zdniny</H1>


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