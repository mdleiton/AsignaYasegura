from django.shortcuts import render,render_to_response,get_object_or_404,redirect
from AsignaYasegura.models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from AsignaYasegura.forms import *
from django.db.models import Sum
import datetime
from datetime import timedelta, date
from AsignaYasegura.funcionesadicionales import *
#-----------------------------------------------------VISTAS PADRE DE FAMILIA-------------------------------------------------

#registar y valida la ubicacion que el padre del familia registre en el mapa
def Padre_registrargeolocalizacion(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            registro=PadreInfo.objects.filter(usuario=usuario)
            if request.method == 'POST': 
                padre = get_object_or_404(Usuario, pk=request.POST['infoadd'])
                if registro and validarDireccion(padre.ci,request.POST['latitud'],request.POST['longitud']):
                    registro.update(latitud=request.POST['latitud'],longitud=request.POST['longitud'])
                    return render(request,'AsignaYasegura/menupadredefamilia.html',{'mjsexitoso':'Actualización exitosa de ubicación.','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    return render(request,'AsignaYasegura/menupadredefamilia.html',{'error':"Error la dirección ingresado no concuerda con la almacenada en el INEC",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                if registro[0].latitud:
                    return render(request,'AsignaYasegura/registrargeolocalizacionpadre.html',{'latitud':registro[0].latitud,'longitud':registro[0].longitud,"mjsactualizar":"usted ya registro su ubicación. Desea actualizar??",'infoadd':usuario.ci,'direccion':usuario.direccion,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})    
                return render(request,'AsignaYasegura/registrargeolocalizacionpadre.html',{'infoadd':usuario.ci,'direccion':usuario.direccion,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#registrar los estudiantes, primero valida que el padre ya tenga registrada la información de ubicación
def Estudiante_registrar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            global parentescorepresentante
            if request.method == 'POST':
                curso = get_object_or_404(Curso, pk=request.POST['curso'])
                estudiante=Estudiante(parentescorepresentante=parentescorepresentante[request.POST['parentesco']],ci=request.POST['cedula'],nombre=request.POST['nombres'],apellidos=request.POST['apellidos'],direccion=request.POST['direccion'],nacimiento=datetime.datetime.strptime(request.POST['nacimiento'],"%Y-%m-%d"),representante=usuario,curso=curso)
                estudiante.save()
                if request.POST['discapacidad']=="1":
                    Discapacidad(discapacidad=request.POST['conadistipo'],codigo=request.POST['conadis'],porcentaje=request.POST['conadisd'],estudiante=estudiante).save()                   
                return render(request,'AsignaYasegura/registrarestudiante.html',{'mjsexitoso':'Registro exitoso de ubicación del estudiante.','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                return render(request,'AsignaYasegura/registrarestudiante.html',{'parentescor':parentescorepresentante,"cursos":Curso.objects.all(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

def Estudiantes(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            estudiantes=Estudiante.objects.filter(representante=usuario)
            return render(request,'AsignaYasegura/estudiantes.html',{'objects':estudiantes,'tipo_objeto':"Estudiantes",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')    
