<{% extends "AsignaYasegura/base_digitadores.html" %}
{% load static %}
{% block title %} Calcular capacidad {% endblock %} 

{% block menu%}
      <li ><a href="{% url 'AsignaYasegura:Menu' %}">Información general</a></li>
      <li  class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Instituciones <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li class="active"><a href="{% url 'AsignaYasegura:Adquisicion_datos' %}">Registrar Instituciones</a></li>
           <li><a href="#">Editar Informacion Instituciones</a></li>
          <li><a href="#">Eliminar Instituciones</a></li>
        </ul>
      </li>
      <li class="active"><a href="#">Registrar capacidad institución</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Estudiantes <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li><a href="{% url 'AsignaYasegura:Registrar_PPFF' %}">Registrar Padres de Familia</a></li>
           <li><a href="#">Registrar estudiantes</a></li>
        </ul>
      </li>
{% endblock %}
{% block contenttitle %} Calcular información {% endblock %}
{% block content %} 
		<?php
		if(empty($_GET['nombreescuela']) || empty($_GET['distrito']) || empty($_GET['direccion']) || empty($_GET['aulas']) || empty($_GET['especializacion'])|| empty($_GET['tipo']) || empty($_GET['tipob']) || empty($_GET['nombrerector']) || empty($_GET['cedularector']) || empty($_GET['numerorector']) || empty($_GET['correorector']) || empty($_GET['jornada'])){
 			echo"</br>Faltan datos<br>";
 			echo"<a href=javascript:history.back()>Regresar</a>";
		}else{
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
{% endblock %}