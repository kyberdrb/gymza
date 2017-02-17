<html>
<head>
<title>Font</title>
</head>
 
<body>

<?PHP
$a=2;
$b=3;
$c=$a+$b;
echo"$a+$b=$c\n";
?> 

<h1> Stránka plná nadpisov</H1>
<?php
for($i=1; $i<=7; $i++):?>
<P><FONT SIZE="<?php echo $i?>">Text</font>

<?php endfor; ?>

<?php
$vek=5;
if ($vek<10)
echo "dieta";
else echo "dospely";
?>

 
</body>
</html>
