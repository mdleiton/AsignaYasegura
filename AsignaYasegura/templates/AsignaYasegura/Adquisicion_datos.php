{% extends "AsignaYasegura/base_digitadores.html" %}
{% load static %}
{% block title %} Adquisición de datos {% endblock %} 

{% block menu%}
  <li ><a href="{% url 'AsignaYasegura:Menu' %}">Información general</a></li>
  <li class="active" class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Instituciones <b class="caret"></b></a>
    <ul class="dropdown-menu">
       <li class="active"><a href="{% url 'AsignaYasegura:Adquisicion_datos' %}">Registrar Instituciones</a></li>
       <li><a href="{% url 'AsignaYasegura:Instituciones' %}">Ver Informacion Instituciones</a></li>
      <li><a href="{% url 'AsignaYasegura:Institucion_eliminar' %}">Eliminar Instituciones</a></li>
    </ul>
  </li>
  <li class="dropdown">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Estudiantes <b class="caret"></b></a>
    <ul class="dropdown-menu">
       <li><a href="{% url 'AsignaYasegura:Registrar_PPFF' %}">Registrar Representante</a></li>
		<li><a href="{% url 'AsignaYasegura:Registrar_estudiante' %}">Registrar estudiantes</a></li>
    </ul>
  </li>	
{% endblock %}

{% block content %} 
<script>
	function controla(f){
		if(f.checked==false){
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
    <form action="{% url 'AsignaYasegura:Adquisicion_datos' %}" method=post>
    	 {% csrf_token %}
		<div class="row">
			<div class="col-md-5 col-md-offset-1 "  id=izquierda style="float:left">
				<div>
					<div id=institucion>
						<br><font color="#CC0000"><strong>Información general de la Institución Educativa</strong></font><br><br>
				        <table>
							<tr>
								<td>Nombre de la Institución:</td>
								<td><input type=text name=nombreescuela size="37"></td>
							</tr>
				        	<tr>
				        		<td>Distrito:</td>
				        		<td><select id="optionlist" name=distrito class="text-left">
				        		{% for distrito in distritos%}
				        			<option value="{{distrito.codigo}}-{{distrito.nombre}}">{{distrito.codigo}} - {{distrito.nombre}}</option>
				        		{% empty %}
						        	<option value=" No existe distritos registrados en la base de datos."> No existe informacion que presentar.</option>
						     	{% endfor %}
						        </select>
						    	</td>
						    </tr>
							<tr><td>Dirección:</td><td><input type=text name=direccion size="37"></td></tr>
				            <tr><td>Tipo de instrucción:</td><td>Primaria <input id="primaria" type="checkbox" name="tipo[]" value="primaria"  >
				            	Secundaria <input id="secundaria" type="checkbox" name="tipo[]" value="secundaria" onClick="controla(this)" ></td></tr>
				        </table>
				    </div>
				    <div id=oferta>
				    	<br><font color="#CC0000"><strong>Oferta académica</strong></font><br><br>
				        <table>
				        	<tr><td><strong>Bachillerato General Unificado</strong></td><td></td><td><input type="checkbox" id="contr1" name="tipob[]" value="Bachillerato General Unificado" disabled></td></tr>
				        	<tr><td><strong>Bachillerato Internacional</strong></td><td></td><td><input type="checkbox" id="contr2" name="tipob[]" value="Bachillerato Internacional" disabled></td></tr>
				        	<tr><td><strong>Bachillerato Técnico</strong></td><td></td><td><input type="checkbox" id="contr3" name="tipob[]" value="Bachillerato Técnico" disabled onClick="controlb(this)"></td></tr>
				        	{% for registro in carreras %}
				        		 <tr><td>{{registro.nombre}}</td><td><input type="checkbox" id="contr{{forloop.counter|add:3}}" name="especializacion[]" value="{{registro.nombre}}" disabled></td></tr>
				        	{% endfor %}
				            
				        </table>
				    </div>
				</div>
			</div>
		    <div class="col-md-6"  id=derecha  style="float:right">
		      	<div id=rector>
		        	<br><font color="#CC0000"><strong>Datos del representante legal de la Institución</strong></font><br><br>
		            <table>
		            	<tr><td>Nombres de el/la director/a:</td><td><input type=text name=nombrerector size="40" required></td></tr>
		            	<tr><td>Apellidos de el/la director/a:</td><td><input type=text name=apellidorector size="40" required></td></tr>
		                <tr><td>Número de cédula:</td><td><input type=text name=cedularector required></td></tr>
		                <tr><td>Número de teléfono:</td><td><input type=text name=numerorector required></td></tr>
		                <tr><td>Correo electrónico:</td><td><input type=text name=correorector size="40" required></td></tr>
		            </table>
		        </div> 
	        	<div id=complementaria>
			    	<br><font color="#CC0000"><strong>Información complementaria</strong></font><br><br>
			        <table>
			        	<tr><td>Número de aulas disponibles:</td><td><input type=value name=aulas required></td></tr>
			            <tr><td>Jornadas</td><td>Matutina<input id="matutina" type="checkbox" name="jornadas" value="matutina" >
				            	Vespertina <input id="vespertina" type="checkbox" name="jornadas" value="vespertina"></td></tr>
			        </table>
			        <br><br>
			    </div>
	        </div>
	        <div class="center-block">
	            <input class="btn btn-primary" type=submit value=Aceptar>     
	            <input class="btn btn-danger" type=reset value=Cancelar>
	        </div>
	    </div>
	</form>
{% if error %}
    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog" role="document">
          <div class="modal-content">
             <div class="modal-header">
            	<button href="/login/" type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Error registro información general institución</h3>
        	</div>
         	<div class="modal-body">
              	<h4> {{error}}</h4>   
         	</div>
         	<div class="modal-footer">
            	<a data-dismiss="modal" class="btn btn-danger">Intentar de nuevo</a>
         	</div>
         </div>
       </div>
    </div>
{% endif %}  


<script>
$(document).ready(function(){
    $("#mostrarmodal").modal("show");
	$(".modal-dialog").attr("style","height: 378px; z-index: 2;")

});
</script>
{% endblock %} 