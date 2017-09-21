<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Capacidad</title>
		<LINK rel=stylesheet type="text/css" href="nuevo.css">
        <div id=titulo>
        	<img src="imagenes/21769831_379017482518757_1986918513_n.png" align="left">
            <img src="imagenes/21850202_379017485852090_1048059339_n.png" align="right" width="250" height="125">
			<br><font color="#000066"><strong> Capacidad de la Institución</strong></font><br>
    	</div>  
	</head>
	<body>
	<?php
	function  numeroalumnos($longitud,$amplitud)
		{
    		$longitud=$longitud-60;
    		$i=1;
    		$fila=1;
    		while($i<=$longitud)
			{
        		if(($i%70)==0)
				{
            		$fila=$fila+1;
				}
        		$i=$i+1;
			}
    		$amplitud = $amplitud - 60;
    		$j = 1;
    		$columna = 1;
    		while ($j <= $amplitud)
			{
        		if (($j % 140) == 0)
				{
            		$columna = $columna + 1;
				}	
        		$j=$j+1;
			}
    		$numero=$fila*$columna;
			$datos[] = array();
    		$datos[0]=$numero;
    		$datos[1]=$fila;
    		$datos[2]=$columna;
    		return $datos;
		}
	if(empty($_GET['longitud']) || empty($_GET['amplitud']))
	{
 		echo"</br>Faltan datos<br>";
 		echo"<a href=javascript:history.back()>Regresar</a>";
	}
	else
	{
 		$longitud=$_GET['longitud'];
 		$amplitud=$_GET['amplitud'];
	}
	$i=count($longitud);
	$capacidad=0;
	$data[]=array();
	echo "<br><br><br>";
	echo "<table border=10 align=center>";
	echo "<tr>";
		echo "<td><strong>Aula</strong></td>";
		echo "<td><strong>Longitud</strong></td>";
		echo "<td><strong>Amplitud</strong></td>";
		echo "<td><strong>Capacidad</strong></td>";
		echo "<td><strong>Filas</strong></td>";
		echo "<td><strong>Columnas</strong></td>";
	echo "</tr>";
	for($k=0; $k<$i; $k++)
	{
		$data=numeroalumnos($longitud[$k],$amplitud[$k]);
		$a=$data[0];
		$b=$data[1];
		$c=$data[2];
		$d=$longitud[$k];
		$e=$amplitud[$k];
		$capacidad=$capacidad+$a;
		echo "<tr>";
			echo "<td>",$k+1;echo "</td>";
			echo "<td>",$d;echo "</td>"; 
			echo "<td>",$e;echo "</td>"; 
			echo "<td>",$a;echo "</td>";
			echo "<td>",$b;echo "</td>";
			echo "<td>",$c;echo "</td>";
		echo "</tr>";  
	}
	echo "</table>";
	echo "<br><br>";
	echo "<table border=5 align=center>";
	echo "<tr>";
		echo "<td><font size=3><strong>Capacidad total: ",$capacidad; echo" estudiantes.</strong></font></td>";
	echo "</tr>";
	echo "</table>";
	?>
    	<div id=pdp>
    	</div>
	</body>
</html>