<{% extends "AsignaYasegura/base_digitadores.html" %}
{% load static %}
{% block title %} Calcular capacidad {% endblock %} 

{% block extra-style%}
	<link rel="stylesheet" href="{% static 'css/formulario.css'  %}" >
{% endblock %}

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
	<div class="row">
		<div clas="col-md-8 col-md-offset-2" >
			<font color=red class="text-center"> *Nota: Es necesario ingresar todas las medidas en metros </font><br><br>
			<form id="formulariop" action="{% url 'AsignaYasegura:calcular_capacidad' %}" method=post>
				{% csrf_token %}
				<table border=5 align=center>
					<tr>
						<td><strong>Aula  </strong></td>
						<td><strong>Longitud  </strong></td>
						<td><strong>Amplitud  </strong></td>
						{% if matutina %}
							<td><strong>Horario matutino  </strong></td>
							<td><strong>Curso matutino  </strong></td>
						{% endif %}
						{% if vespertina %}
							<td><strong>Horario vespertino  </strong></td>
							<td><strong>Curso vespertino  </strong></td>
						{% endif %}
					</tr>	
					{%for i in numaulas %}
						<tr>
							<td>{{i|add:1}}</td>
							<td><input type=text name="longitud{{i|add:1}}" size="10" required></td>
							<td><input type=text name="amplitud{{i|add:1}}" size="10" required></td>
							{% if matutina %}
								<td><select  name="nivel1-{{i|add:1}}">
									{%for i in niveles %}
										{%for j in instruccion %}
											{% ifequal j "primaria" %}
												{% if i.id_nivel == 1 or i.id_nivel == 2 or i.id_nivel == 3  or i.id_nivel == 4 %}
													<option value="{{i.id_nivel}}">{{i.nivel}}</option>
												{% endif %}
											{% endifequal %}
											{% ifequal j "secundaria" %}
												{% if i.id_nivel == 5 %}
													<option value="{{i.id_nivel}}">{{i.nivel}}</option>
												{% endif %}
											{% endifequal %}
										{% endfor %}
									{% endfor %}
								</select></td>
							{% endif %}
							{% if matutina %}
								<td><select  name="curso1-{{i|add:1}}">
									{%for j in instruccion %}
										{% ifequal j "primaria" %}
											{% for k in cp %}
												<option value="{{k.id_curso}}">{{k.curso}}</option>
											}
											{% endfor %}
										{% endifequal %}
										{% ifequal j "secundaria" %}
											{% for k in cs %}
												<option value="{{k.id_curso}}">{{k.curso}}</option>
											}
											{% endfor %}
										{% endifequal %}
									{% endfor %}
								</select></td>
							{% endif %}
							{% if vespertina %}
								<td><select name="nivel2-{{i|add:1}}">"
									{%for i in niveles %}
										{%for j in instruccion %}
											{% ifequal j "primaria" %}
												{% if i.id_nivel == 1 or i.id_nivel == 2 or i.id_nivel == 3 or i.id_nivel == 4 %}
													<option value="{{i.id_nivel}}">{{i.nivel}}</option>
												{% endif %}
											{% endifequal %}
											{% ifequal j "secundaria" %}
												{% if i.id_nivel == 5 %}
													<option value="{{i.id_nivel}}">{{i.nivel}}</option>
												{% endif %}
											{% endifequal %}
										{% endfor %}
									{% endfor %}
								</select></td>
							{% endif %}	
							{% if vespertina %}
								<td><select  name="curso2-{{i|add:1}}">
									{%for j in instruccion %}
										{% ifequal j "primaria" %}
											{% for k in cp %}
												<option value="{{k.id_curso}}">{{k.curso}}</option>
											}
											{% endfor %}
										{% endifequal %}
										{% ifequal j "secundaria" %}
											{% for k in cs %}
												<option value="{{k.id_curso}}">{{k.curso}}</option>
											}
											{% endfor %}
										{% endifequal %}
									{% endfor %}
								</select></td>
							{% endif %}					
						</tr>
					{% endfor %}
				</table>
				<br/>
				<div class="bock-center text-center">
            <center><input class="btn btn-primary" type="submit" value="Registrar" />
            <a type="button" href="{% url 'AsignaYasegura:Adquisicion_datos' %}" class="btn btn-primary btn-danger">Atrás</a>
            </center>
            <input name="infoadd"  value="{{infoadd}}" style="display: none" readonly >

        </div>
			</form>
		</div>
	</div>
{% if mjsregistroinfinstituto %}
    <div class="modal fade" id="mjsregistroinfinstituto" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog" role="document">
          <div class="modal-content">
             <div class="modal-header">
            	<button href="/login/" type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Estado registro de información general institución</h3>
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