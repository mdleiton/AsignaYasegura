from django.conf.urls import include, url
from django.conf import settings
from django.conf.urls.static import static
from django.contrib import admin
from AsignaYasegura import views

urlpatterns = [
    #vistas generales
    url(r'^$', views.login, name="login"),url(r'^login/$', views.login),
    url(r'^logout/$', views.logout, name="logout"),
    url(r'^nopermitido/$', views.nopermitido, name="nopermitido"),
    url(r'^menu/$', views.Menu, name="Menu"),
    url(r'^registrarPPFFinicio/$', views.PPFF_registrarinicio, name="Registrar_PPFFinicio"),
    
    
    #opciones administrador
    url(r'^registrardigitador/$', views.Digitador_registrar, name="digitador_registrar"),
    url(r'^verdigitador/$', views.Digitador_ver, name="digitador_ver"),
    url(r'^editardigitador/$', views.Digitador_editar, name="digitador_editar"),    
    url(r'^editardigitador/(?P<item>\d+)$', views.Digitador_editarU, name='digitador_editarU'),
    url(r'^eliminardigitador/$', views.Digitador_eliminar, name="digitador_eliminar"),
    url(r'^eliminardigitador/(?P<item>\d+)$', views.Digitador_eliminarU, name='digitador_eliminarU'),
    url(r'^ejecutarasignacion/$', views.Admin_ejecutar, name="Admin_ejecutar"),
    url(r'^editarinformacion/$', views.Admin_editarInfo, name="Admin_editarInfo"),
    url(r'^cambiarcontrasena/$', views.Admin_cambiocontrasena, name="Admin_cambiocontrasena"),
    
    #opciones digitador
	url(r'^adquisiciondatos/$', views.Adquisicion_datos, name="Adquisicion_datos"),
	url(r'^calcularcapacidad/$', views.Calcular_capacidad, name="calcular_capacidad"),
    url(r'^registrarPPFF/$', views.PPFF_registrar, name="Registrar_PPFF"),
    
]
