<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>Medidas</title>
        <LINK rel=stylesheet type="text/css" href="nuevo.css">
        <div id=titulo>
        	<img src="imagenes/21769831_379017482518757_1986918513_n.png" align="left">
            <img src="imagenes/21850202_379017485852090_1048059339_n.png" align="right" width="250" height="125">
			<br><font color="#000066"><strong>Medidas de las aulas de la Institución</strong></font><br>
    	</div>       
	</head>
    <br><br>
    <body>
		<?php
		if(empty($_GET['nombreescuela']) || empty($_GET['distrito']) || empty($_GET['direccion']) || empty($_GET['aulas']) || empty($_GET['especializacion'])|| empty($_GET['tipo']) || empty($_GET['tipob']) || empty($_GET['nombrerector']) || empty($_GET['cedularector']) || empty($_GET['numerorector']) || empty($_GET['correorector']) || empty($_GET['jornada']))
		{
 			echo"</br>Faltan datos<br>";
 			echo"<a href=javascript:history.back()>Regresar</a>";
		}
		else
		{
 			$nombreescuela=$_GET['nombreescuela'];
 			$distrito=$_GET['distrito'];
 			$direccion=$_GET['direccion'];
 			$aulas=$_GET['aulas'];
			$especializacion=$_GET['especializacion'];
			$tipo=$_GET['tipo'];
			echo "<div id=contenido>";
				echo "<font color=red> Nombre: ",$nombreescuela; echo"</font><br>";
				echo "<font color=red> Distrito: ",$distrito; echo "</font><br>";
				echo "<font color=red> Dirección: ",$direccion; echo"</font><br>";
				$i=count($especializacion);
				$j=count($tipo);
				echo "<font color=red> Oferta Académica: </font><br>";
				echo "<font color=red> Tipos de bachillerato: </font><br>";
				for ($k=0;$k<$j;$k++)
				{
					echo "<font color=red>", $tipo[$k]; echo"</font><br>";
				}
				echo "<font color=red> Especializaciones: </font><br>";
				for ($k=0;$k<$i;$k++)
				{
					echo "<font color=red>", $especializacion[$k]; echo"</font><br>";
				}
				echo "<font color=red> *Nota: Es necesario ingresar todas las medidas en centímetros </font><br><br>";
			echo "</div>";
			echo "<div id=aulas align=\"center\">";
				echo "<form action=calculo2.php method=get>";
				echo "<table border=5 align=center>";
				echo "<tr>";
					echo "<td><strong>Aula</strong></td>";
					echo "<td><strong>Longitud</strong></td>";
					echo "<td><strong>Amplitud</strong></td>";
				echo "</tr>";
				for($i=0;$i<$aulas;$i++)
				{
					echo "<tr><td>",$i+1; echo"</td>";
					echo "<td><input type=text name=longitud[]></td>";
					echo "<td><input type=text name=amplitud[]></td></tr>";
				}
				echo "</table>";
				echo"<br><input type=submit value=Aceptar>
				<input type=reset value=Cancelar>
				</form> ";
			echo "</div>";
		}
		?>
    	<div id=pdp>
    		
    	</div>
	</body>
</html>