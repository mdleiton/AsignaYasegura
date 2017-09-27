{% extends "AsignaYasegura/base_digitadores.html" %}
{% load static %}
{% block title %} Adquisición de datos {% endblock %} 

{% block menu%}
      <li ><a href="{% url 'AsignaYasegura:Menu' %}">Información general</a></li>
      <li class="active" class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Instituciones <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li class="active"><a href="{% url 'AsignaYasegura:Adquisicion_datos' %}">Registrar Instituciones</a></li>
           <li><a href="#">Editar Informacion Instituciones</a></li>
          <li><a href="#">Eliminar Instituciones</a></li>
        </ul>
      </li>
      <li><a href="#">Registrar capacidad institución</a></li>
      <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Estudiantes <b class="caret"></b></a>
        <ul class="dropdown-menu">
           <li><a href="{% url 'AsignaYasegura:Registrar_PPFF' %}">Registrar Padres de Familia</a></li>
           <li><a href="#">Registrar estudiantes</a></li>
        </ul>
      </li>
{% endblock %}

{% block content %} 
<script>
	function agregar(f){
		var primaria=document.getElementById("primaria").value;
		var secundaria=document.getElementById("secundaria").value;
		if(f.checked==false){
			document.getElementById("primaria").value = secundaria;
		}else{
			document.getElementById("primaria").value = primaria+","+secundaria;
		}
	}

	function controla(f){
		var primaria=document.getElementById("primaria").value;
		var secundaria=document.getElementById("secundaria").value;
		if(f.checked==false){
			document.getElementById("primaria").value = primaria;
			document.getElementById('contr1').checked=false;
			document.getElementById('contr1').disabled=true;
			document.getElementById('contr2').checked=false;
			document.getElementById('contr2').disabled=true;
			document.getElementById('contr3').checked=false;
			document.getElementById('contr3').disabled=true;
			document.getElementById('contr4').checked=false;
			document.getElementById('contr4').disabled=true;
			document.getElementById('contr5').checked=false;
			document.getElementById('contr5').disabled=true;
			document.getElementById('contr6').checked=false;
			document.getElementById('contr6').disabled=true;
			document.getElementById('contr7').checked=false;
			document.getElementById('contr7').disabled=true;
			document.getElementById('contr8').checked=false;
			document.getElementById('contr8').disabled=true;
			document.getElementById('contr9').checked=false;
			document.getElementById('contr9').disabled=true;
			document.getElementById('contr10').checked=false;
			document.getElementById('contr10').disabled=true;
			document.getElementById('contr11').checked=false;
			document.getElementById('contr11').disabled=true;
			document.getElementById('contr12').checked=false;
			document.getElementById('contr12').disabled=true;
			document.getElementById('contr13').checked=false;
			document.getElementById('contr13').disabled=true;
			document.getElementById('contr14').checked=false;
			document.getElementById('contr14').disabled=true;
			document.getElementById('contr15').checked=false;
			document.getElementById('contr15').disabled=true;
			document.getElementById('contr16').checked=false;
			document.getElementById('contr16').disabled=true;
			document.getElementById('contr17').checked=false;
			document.getElementById('contr17').disabled=true;
			document.getElementById('contr18').checked=false;
			document.getElementById('contr18').disabled=true;
		}else{
			document.getElementById("primaria").value = primaria+","+secundaria;	
			document.getElementById('contr1').disabled=false;
			document.getElementById('contr2').disabled=false;
			document.getElementById('contr3').disabled=false;
		}
	}
	function controlb(f){
		if(f.checked==false){
			document.getElementById('contr4').checked=false;
			document.getElementById('contr4').disabled=true;
			document.getElementById('contr5').checked=false;
			document.getElementById('contr5').disabled=true;
			document.getElementById('contr6').checked=false;
			document.getElementById('contr6').disabled=true;
			document.getElementById('contr7').checked=false;
			document.getElementById('contr7').disabled=true;
			document.getElementById('contr8').checked=false;
			document.getElementById('contr8').disabled=true;
			document.getElementById('contr9').checked=false;
			document.getElementById('contr9').disabled=true;
			document.getElementById('contr10').checked=false;
			document.getElementById('contr10').disabled=true;
			document.getElementById('contr11').checked=false;
			document.getElementById('contr11').disabled=true;
			document.getElementById('contr12').checked=false;
			document.getElementById('contr12').disabled=true;
			document.getElementById('contr13').checked=false;
			document.getElementById('contr13').disabled=true;
			document.getElementById('contr14').checked=false;
			document.getElementById('contr14').disabled=true;
			document.getElementById('contr15').checked=false;
			document.getElementById('contr15').disabled=true;
			document.getElementById('contr16').checked=false;
			document.getElementById('contr16').disabled=true;
			document.getElementById('contr17').checked=false;
			document.getElementById('contr17').disabled=true;
			document.getElementById('contr18').checked=false;
			document.getElementById('contr18').disabled=true;
		}else{
			document.getElementById('contr4').disabled=false;
			document.getElementById('contr5').disabled=false;
			document.getElementById('contr6').disabled=false;
			document.getElementById('contr7').disabled=false;
			document.getElementById('contr8').disabled=false;
			document.getElementById('contr9').disabled=false;
			document.getElementById('contr10').disabled=false;
			document.getElementById('contr11').disabled=false;
			document.getElementById('contr12').disabled=false;
			document.getElementById('contr13').disabled=false;
			document.getElementById('contr14').disabled=false;
			document.getElementById('contr15').disabled=false;
			document.getElementById('contr16').disabled=false;
			document.getElementById('contr17').disabled=false;
			document.getElementById('contr18').disabled=false;
		}
	}
</script>    
    <br>
    <form action="{% url 'AsignaYasegura:calcular_capacidad' %}" method=post>
    	 {% csrf_token %}
		<div class="row">
			<div class="col-md-5 col-md-offset-1 "  id=izquierda style="float:left">
				<div>
					<div id=institucion>
						<br><font color="#CC0000"><strong>Información general de la Institución Educativa</strong></font><br><br>
				        <table>
							<tr>
								<td>Nombre de la Institución:</td>
								<td><input type=text name=nombreescuela size="35"></td>
							</tr>
				        	<tr>
				        		<td>Distrito:</td>
				        		<td><select id="optionlist" name=distrito>
				        		{% for distrito in distritos%}
				        			<option value="{{distrito.codigo}} - {{distrito.nombre}}">{{distrito.codigo}} - {{distrito.nombre}}</option>
				        		{% empty %}
						        	<option value=" No existe distritos registrados en la base de datos."> No existe informacion que presentar.</option>
						     	{% endfor %}
						        </select>
						    	</td>
						    </tr>
							<tr><td>Dirección:</td><td><input type=text name=direccion size="35"></td></tr>
				            <tr><td>Tipo de instrucción:</td><td>Primaria <input id="primaria" type="checkbox" name="tipo[]" value="primaria" onClick="agregar(this)"  >
				            	Secundaria <input id="secundaria" type="checkbox" name="tipo[]" value="secundaria" onClick="controla(this)" ></td></tr>
				        </table>
				    </div>
				    <div id=oferta>
				    	<br><font color="#CC0000"><strong>Oferta académica</strong></font><br><br>
				        <table>
				        	<tr><td><strong>Bachillerato General Unificado</strong></td><td></td><td><input type="checkbox" id="contr1" name="tipob[]" value="Bachillerato General Unificado" disabled></td></tr>
				        	<tr><td><strong>Bachillerato Internacional</strong></td><td></td><td><input type="checkbox" id="contr2" name="tipob[]" value="Bachillerato Internacional" disabled></td></tr>
				        	<tr><td><strong>Bachillerato Técnico</strong></td><td></td><td><input type="checkbox" id="contr3" name="tipob[]" value="Bachillerato Técnico" disabled onClick="controlb(this)"></td></tr>
				            <tr><td>Producción agropecuaria</td><td><input type="checkbox" id="contr4" name="especializacion[]" value="Producción agropecuaria" disabled></td></tr>
				            <tr><td>Conservación y manejo de recursos naturales</td><td><input type="checkbox" id="contr5" name="especializacion[]" value="Conservación y manejo de recursos naturales" disabled></td></tr>
				            <tr><td>Industrialización de productos alimenticios</td><td><input type="checkbox" id="contr6" name="especializacion[]" value="Industrialización de productos alimenticios" disabled></td></tr>
				            <tr><td>Promotor en recreación y deportes</td><td><input type="checkbox" id="contr7" name="especializacion[]" value="Promotor en recreación y deportes" disabled></td></tr>
				            <tr><td>Electromecánica automotriz</td><td><input type="checkbox" id="contr8" name="especializacion[]" value="Electromecánica automotriz" disabled></td></tr>
				            <tr><td>Chapisteria y pintura</td><td><input type="checkbox" id="contr9" name="especializacion[]" value="Chapisteria y pintura" disabled></td></tr>
				            <tr><td>Climatización</td><td><input type="checkbox" id="contr10" name="especializacion[]" value="Climatización" disabled></td></tr>
				            <tr><td>Electrónica de consumo</td><td><input type="checkbox" id="contr11" name="especializacion[]" value="Electrónica de consumo" disabled></td></tr>
				            <tr><td>Aplicación de proyectos de producción</td><td><input type="checkbox" id="contr12" name="especializacion[]" value="Aplicación de proyectos de producción" disabled></td></tr>
				            <tr><td>Fabricación y montaje de muebles</td><td><input type="checkbox" id="contr13" name="especializacion[]" value="Fabricación y montaje de muebles" disabled></td></tr>
				            <tr><td>Industria de la confección</td><td><input type="checkbox" id="contr14" name="especializacion[]" value="Industria de la confección" disabled></td></tr>
				            <tr><td>Calzado y marroquinería</td><td><input type="checkbox" id="contr15" name="especializacion[]" value="Calzado y marroquinería" disabled></td></tr>
				            <tr><td>Mecanizado y construcciones metálicas</td><td><input type="checkbox" id="contr16" name="especializacion[]" value="Mecanizado y construcciones metálicas" disabled></td></tr>
				            <tr><td>Instalaciones, equipos y máquinas eléctricas</td><td><input type="checkbox" id="contr17" name="especializacion[]" value="Instalaciones, equipos y máquinas eléctricas" disabled></td></tr>
				            <tr><td>Industria textil</td><td><input type="checkbox" id="contr18" name="especializacion[]" value="Industria textil" disabled></td></tr>	
				        </table>
				    </div>
				</div>
			</div>
		    <div class="col-md-6"  id=derecha  style="float:right">
		      	<div id=rector>
		        	<br><font color="#CC0000"><strong>Datos del representante legal de la Institución</strong></font><br><br>
		            <table>
		            	<tr><td>Nombre de el/la director/a:</td><td><input type=text name=nombrerector size="40" required></td></tr>
		                <tr><td>Número de cédula:</td><td><input type=text name=cedularector required></td></tr>
		                <tr><td>Número de teléfono:</td><td><input type=text name=numerorector required></td></tr>
		                <tr><td>Correo electrónico:</td><td><input type=text name=correorector size="40" required></td></tr>
		            </table>
		        </div> 
	        	<div id=complementaria>
			    	<br><font color="#CC0000"><strong>Información complementaria</strong></font><br><br>
			        <table>
			        	<tr><td>Número de aulas disponibles:</td><td><input type=value name=aulas required></td></tr>
			            <tr><td>Jornada vespertina:</td><td>Sí<input type="radio" name="jornada" value="si" ></td><td>No<input type="radio" name="jornada" value="No"></td></tr>
			        </table>
			        <br><br>
			    </div>
	            <input type=submit value=Aceptar>     <input type=reset value=Cancelar>
	        </div>
	    </div>
	</form>
{% endblock %} 