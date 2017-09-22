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
   
    #opciones administrador
    url(r'menuadmin/$', views.MenuAdmin, name="Menu_Admin"),
    url(r'registrardigitador/$', views.Digitador_registrar, name="digitador_registrar"),

    #opciones digitador
    url(r'menudigitador/$', views.MenuDigitador, name="Menu_Digitador"),
	url(r'adquisiciondatos/$', views.Adquisicion_datos, name="Adquisicion_datos"),
	url(r'calcularcapacidad/$', views.Calcular_capacidad, name="calcular_capacidad"),
	

]
