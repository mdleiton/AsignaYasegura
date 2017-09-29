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
	<body style="text-align:center">
	<?php
	function  numeroalumnos($longitud,$amplitud)
		{
    		$longitud=$longitud-2;
    		$metros=$longitud*$amplitud;
			$numero=floor($metros);
    		return $numero;
		}
	$niveles=array("Preparatoria", "Básica elemental", "Básica media", "Básica superior", "Bachillerato");
	$capacidades=array();
	for($i=0;$i<5;$i++)
	{
		$capacidades[$i]=0;
	}
	$opcion=$_GET['op'];
	if ($opcion==1 || $opcion==3 || $opcion==5)
	{
		$longitud=$_GET['longitud'];
 		$amplitud=$_GET['amplitud'];
		$nivel1=$_GET['nivel1'];
		$nivel2=$_GET['nivel2'];	
		$i=count($longitud);
		$capacidad=0;
		$pupitres=0;
		echo "<br><br><br>";
		echo "<table border=10 align=center>";
		echo "<tr>";
			echo "<td><strong>Aula</strong></td>";
			echo "<td><strong>Longitud</strong></td>";
			echo "<td><strong>Amplitud</strong></td>";
			echo "<td><strong>Horario matutino</strong></td>";
			echo "<td><strong>Horario vespertino</strong></td>";
			echo "<td><strong>Capacidad Potencial</strong></td>";
			echo "<td><strong>Capacidad Matutina</strong></td>";
			echo "<td><strong>Capacidad Vespertina</strong></td>";
		echo "</tr>";
		for($k=0; $k<$i; $k++)
		{
			$numero=numeroalumnos($longitud[$k],$amplitud[$k]);
			$a=$longitud[$k];
			$b=$amplitud[$k];
			$n1=$nivel1[$k];
			$n2=$nivel2[$k];
			$numeroreal=$numero;
			$numeroreal2=$numero;
			if ($nivel1[$k]==1 && $numero>25)
			{
				$numeroreal=25;
			}
			elseif ($nivel1[$k]==2 && $numero>30)
			{
				$numeroreal=30;
			}
			elseif ($nivel1[$k]==3 && $numero>35)
			{
				$numeroreal=35;
			}
			elseif (($nivel1[$k]==4 || $nivel1[$k]==5) && $numero>45)
			{
				$numeroreal=45;
			}
			if ($nivel2[$k]==1 && $numero>25)
			{
				$numeroreal2=25;
			}
			elseif ($nivel2[$k]==2 && $numero>30)
			{
				$numeroreal2=30;
			}
			elseif ($nivel2[$k]==3 && $numero>35)
			{
				$numeroreal2=35;
			}
			elseif (($nivel2[$k]==4 || $nivel2[$k]==5) && $numero>45)
			{
				$numeroreal2=45;
			}
			if ($numeroreal>=$numeroreal2)
			{
				$pupitres=$pupitres+$numeroreal;
			}
			else
			{
				$pupitres=$pupitres+$numeroreal2;
			}
			$capacidad=$capacidad+$numeroreal+$numeroreal2;
			$capacidades[$n1-1]=$capacidades[$n1-1]+$numeroreal;
			$capacidades[$n2-1]=$capacidades[$n2-1]+$numeroreal2;
			echo "<tr>";
				echo "<td>",$k+1;echo "</td>";
				echo "<td>",$a;echo "</td>"; 
				echo "<td>",$b;echo "</td>";
				echo "<td>",$niveles[$n1-1];echo "</td>";
				echo "<td>",$niveles[$n2-1];echo "</td>"; 
				echo "<td>",$numero;echo "</td>";
				echo "<td>",$numeroreal;echo "</td>";
				echo "<td>",$numeroreal2;echo "</td>";
			echo "</tr>";  
		}
		echo "</table>";
		echo "<br><br>";
		echo "<table border=5 align=center>";
			for ($i=0;$i<5;$i++)
			{
				echo"<tr><td><font size=3><strong>Capacidad ",$niveles[$i]; echo":</td><td>",$capacidades[$i]; echo" estudiantes.</strong></font></td></tr>";
			}
			echo "<tr><td><font size=3 font color=\"red\"><strong>Capacidad total:</td><td>",$capacidad; echo" estudiantes.</strong></font></td></tr>";
			echo "<tr><td><font size=3 font color=\"red\"><strong>Pupitres necesarios:</td><td>",$pupitres; echo".</strong></font></td>";
		echo "</tr>";
		echo "</table>";
	}
	else
	{
		$longitud=$_GET['longitud'];
 		$amplitud=$_GET['amplitud'];
		$nivel1=$_GET['nivel1'];	
		$i=count($longitud);
		$capacidad=0;
		echo "<br><br><br>";
		echo "<table border=10 align=center>";
		echo "<tr>";
			echo "<td><strong>Aula</strong></td>";
			echo "<td><strong>Longitud</strong></td>";
			echo "<td><strong>Amplitud</strong></td>";
			echo "<td><strong>Horario matutino</strong></td>";
			echo "<td><strong>Capacidad Potencial</strong></td>";
			echo "<td><strong>Capacidad Ajustada</strong></td>";
		echo "</tr>";
		for($k=0; $k<$i; $k++)
		{
			$numero=numeroalumnos($longitud[$k],$amplitud[$k]);
			$a=$longitud[$k];
			$b=$amplitud[$k];
			$n1=$nivel1[$k];
			$numeroreal=$numero;
			if ($nivel1[$k]==1 && $numero>25)
			{
				$numeroreal=25;
			}
			elseif ($nivel1[$k]==2 && $numero>30)
			{
				$numeroreal=30;
			}
			elseif ($nivel1[$k]==3 && $numero>35)
			{
				$numeroreal=35;
			}
			elseif (($nivel1[$k]==4 || $nivel1[$k]==5) && $numero>45)
			{
				$numeroreal=45;
			}
			$capacidad=$capacidad+$numeroreal;
			$capacidades[$n1-1]=$capacidades[$n1-1]+$numeroreal;
			echo "<tr>";
				echo "<td>",$k+1;echo "</td>";
				echo "<td>",$a;echo "</td>"; 
				echo "<td>",$b;echo "</td>"; 
				echo "<td>",$niveles[$n1-1];echo "</td>";
				echo "<td>",$numero;echo "</td>";
				echo "<td>",$numeroreal;echo "</td>";
			echo "</tr>";  
		}
		echo "</table>";
		echo "<br><br>";
		echo "<table border=5 align=center>";
			for ($i=0;$i<5;$i++)
			{
				echo"<tr><td><font size=3><strong>Capacidad ",$niveles[$i]; echo":</td><td>",$capacidades[$i]; echo" estudiantes.</strong></font></td></tr>";
			}
			echo "<tr><td><font size=3 font color=\"red\"><strong>Capacidad total:</td><td>",$capacidad; echo" estudiantes.</strong></font></td></tr>";
			echo "<tr><td><font size=3 font color=\"red\"><strong>Pupitres necesarios:</td><td>",$capacidad; echo".</strong></font></td>";
		echo "</tr>";
		echo "</table>";
	}
	?>
    	<div id=pdp>
    	</div>
	</body>
</html>