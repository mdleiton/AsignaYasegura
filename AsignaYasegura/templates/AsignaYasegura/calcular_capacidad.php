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
	<font color=red> *Nota: Es necesario ingresar todas las medidas en metros </font><br><br> 
	<div id=aulas align=\"center\">		
	{%for i in instituto.instruccion.all %}
		{% ifequal i.tipo "primaria" %}
			{{i}}
		{% endifequal %}

	{% endfor %}	
	</div>
		<?php
			$tipo=$_GET['tipo'];
			$control=count($tipo);
 			$nombreescuela=$_GET['nombreescuela'];
 			$distrito=$_GET['distrito'];
 			$direccion=$_GET['direccion'];
 			$aulas=$_GET['aulas'];
			$jornada=$_GET['jornada'];

			if($tipo[0]=="primaria" && $control==1){
				if ($jornada==1){
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
				}else{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
			}elseif($tipo[0]=="secundaria" && $control==1){
				$especializacion=$_GET['especializacion'];
				if ($jornada==1){
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
				}else{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
			elseif($control==2){
				$especializacion=$_GET['especializacion'];
				if ($jornada==1){
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
						echo "<td><strong>Horario vespertino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
				}else{
					echo "<form action=calculo2.php method=get>";
					echo "<table border=5 align=center>";
					echo "<tr>";
						echo "<td><strong>Aula</strong></td>";
						echo "<td><strong>Longitud</strong></td>";
						echo "<td><strong>Amplitud</strong></td>";
						echo "<td><strong>Horario matutino</strong></td>";
					echo "</tr>";
					for($i=0;$i<$aulas;$i++){
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
		
		?>
    	<div id=pdp>
    		
    	</div>

{% if mjsregistroinfinstituto %}
    <div class="modal fade" id="mjsregistroinfinstituto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog" role="document">
          <div class="modal-content">
             <div class="modal-header">
            	<button href="/login/" type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Estadoregistro de información general institución</h3>
        	</div>
         	<div class="modal-body">
              	<h4> {{mjsregistroinfinstituto}}</h4>   
         	</div>
         	<div class="modal-footer">
            	<a data-dismiss="modal" class="btn btn-danger">Ingresar información para determinar capacidad</a>
         	</div>
         </div>
       </div>
    </div>
{% endif %}           
<script>
$(document).ready(function(){
    $("#mjsregistroinfinstituto").modal("show");
	$(".modal-dialog").attr("style","height: 378px; z-index: 2;")

});
</script>
{% endblock %}