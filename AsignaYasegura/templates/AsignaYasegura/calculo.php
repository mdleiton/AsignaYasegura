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
		if(empty($_GET['distrito']) || empty($_GET['tipo']) || empty($_GET['jornada']))
		{
 			echo"</br>Faltan datos<br>";
 			echo"<a href=javascript:history.back()>Regresar</a>";
		}
		else
		{
			$tipo=$_GET['tipo'];
			$control=count($tipo);
 			$nombreescuela=$_GET['nombreescuela'];
 			$distrito=$_GET['distrito'];
 			$direccion=$_GET['direccion'];
 			$aulas=$_GET['aulas'];
			$jornada=$_GET['jornada'];
			echo "<font color=red> *Nota: Es necesario ingresar todas las medidas en metros </font><br><br>";
			echo "<div id=aulas align=\"center\">";
			if($tipo[0]=="primaria" && $control==1)
			{
				if ($jornada==1)
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
						echo "</select></td>";
						echo "<td><select name=nivel2[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"1\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				else
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"2\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				echo "</div>";
			}
			elseif($tipo[0]=="secundaria" && $control==1)
			{
				$especializacion=$_GET['especializacion'];
				if ($jornada==1)
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td>";
						echo "<td><select name=nivel2[]>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"3\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				else
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"4\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				echo "</div>";
			}
			elseif($control==2)
			{
				$especializacion=$_GET['especializacion'];
				if ($jornada==1)
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td>";
						echo "<td><select name=nivel2[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"5\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				else
				{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++)
					{
						echo "<tr><td>",$i+1; echo"</td>";
						echo "<td><input type=text name=longitud[] required></td>";
						echo "<td><input type=text name=amplitud[] required></td>";
						echo "<td><select name=nivel1[]>";
								echo "<option value=\"1\">Preparatoria</option>";
								echo "<option value=\"2\">Básica elemental</option>";
								echo "<option value=\"3\">Básica media</option>";
								echo "<option value=\"4\">Básica superior</option>";
								echo "<option value=\"5\">Bachillerato</option>";
						echo "</select></td></tr>";
					}
					echo "</table>";
					echo "<input type=hidden name=op value=\"6\">";
					echo"<br><input type=submit value=Aceptar>
					<input type=reset value=Cancelar>
					</form> ";
				}
				echo "</div>";
			}
		}
		?>
    	<div id=pdp>
    		
    	</div>
	</body>
</html>