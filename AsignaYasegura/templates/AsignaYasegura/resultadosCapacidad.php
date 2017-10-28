<{% extends "AsignaYasegura/base_digitadores.html" %}
{% load static %}

{% block title %} Resultados {% endblock %} 

{% block extra-style%}
	<link rel="stylesheet" href="{% static 'css/formulario.css'  %}" >
{% endblock %}

{% block menu%}
	<li ><a href="{% url 'AsignaYasegura:Menu' %}">Información general</a></li>
	<li  class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Instituciones <b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li class="active"><a href="{% url 'AsignaYasegura:Adquisicion_datos' %}">Registrar Instituciones</a></li>
			<li><a href="{% url 'AsignaYasegura:Instituciones' %}">Ver Informacion Instituciones</a></li>
			<li><a href="#">Eliminar Instituciones</a></li>
		</ul>
	</li>
	<li class="active"><a href="#">Registrar capacidad institución</a></li>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">Estudiantes <b class="caret"></b></a>
		<ul class="dropdown-menu">
			<li><a href="{% url 'AsignaYasegura:Registrar_PPFF' %}">Registrar Representante</a></li>
			<li><a href="{% url 'AsignaYasegura:Registrar_estudiante' %}">Registrar estudiantes</a></li>
		</ul>
	</li>
{% endblock %}

{% block contenttitle %} Resultados {% endblock %}

{% block content %}
	<br><br><br>
	<table border=10 align=center class="text-center">
		<tr>
			<td><strong>Aula</strong></td>
			<td><strong>Longitud</strong></td>
			<td><strong>Amplitud</strong></td>
			<td><strong>Cap. Potencial</strong></td>
			{% if matutina %}
				<td><strong>Horario matutino</strong></td>
				<td><strong>Cap. Matutino</strong></td>
			{% endif %}
			{% if vespertina %}	
				<td><strong>Horario vespertino</strong></td>
				<td><strong>Cap. Vespertino</strong></td>
			{% endif %}
		</tr>
		{%for i in cupos %}
			<tr>
				<td>{{ forloop.counter   }}</td>
				<td>{{i.longitud}}</td>
				<td>{{i.amplitud}}</td>
				<td>{{i.capacidadmax}}</td>
				{% if matutina %}
					<td>{{i.cursomatutina}}</td>
					<td>{{i.capacidadmatutina}}</td>
				{% endif %}
				{% if vespertina %}	
					<td>{{i.cursovespertina}}</td>
					<td>{{i.capacidadvespertina}}</td>
				{% endif %}
			</tr>
		{% endfor %}
	</table>
	<br/><br><br>
	<table border=5 align=center>
		<tr>
			<td><strong>Nivel</strong></td>
			<td><strong>Capacidad</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad Preparatorio</strong></td>
			<td><strong>{{total.preparatorio}}</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad Básico elemental</strong></td>
			<td><strong>{{total.Basicoelemental}}</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad Básico medio</strong></td>
			<td><strong>{{total.Basicomedia}}</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad Básica superior</strong></td>
			<td><strong>{{total.BasicoSuperior}}</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad Bachillerato</strong></td>
			<td><strong>{{total.Bachillerato}}</strong></td>
		</tr>
		<tr>
			<td><strong>Capacidad total</strong></td>
			<td><strong>{{total.total}}</strong></td>
		</tr>
		<tr>
			<td><strong>Pupitres necesarios</strong></td>
			<td><strong>{{total.pupitres}}</strong></td>
		</tr>
	</table>
	<br/><br><br>
	<div class=row>
		<div class="col-md-6 col-md-offset-3">
			<a type="button" href="{% url 'AsignaYasegura:Menu' %}" class="btn btn-primary center-block">Menú</a>
		</div>
	</div>

{% if mjsexitoso %}
    <div class="modal fade" id="mostrarmodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog" role="document">
          <div class="modal-content">
             <div class="modal-header">
            	<button href="/login/" type="button" class="close" data-dismiss="modal" aria-label="close"><span aria-hidden="true">&times;</span></button>
                <h3 class="modal-title" id="myModalLabel">Registro completo institución</h3>
        	</div>
         	<div class="modal-body">
              	<h4> {{mjsexitoso}}</h4>   
         	</div>
         	<div class="modal-footer">
            	<a data-dismiss="modal" class="btn btn-danger">Cerrar</a>
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

 