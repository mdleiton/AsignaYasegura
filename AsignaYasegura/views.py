from django.shortcuts import render,render_to_response,get_object_or_404,redirect
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from .forms import *
from django.db.models import Sum
import datetime
from datetime import timedelta, date
from .funcionesadicionales import *
from .Views.digitador import *
from .Views.administrador import *
from .Views.representante import *

'''
------------------------------------------------------VISTAS GENERALES------------------------------------------------------------------
permite definir el tipo de usuario y determinar el tipo de menu de inicio que debe presentar
'''
def login(request):
    if request.method == 'POST':
        tipologin=request.POST['tipologin']
        user = authenticate(username=request.POST['username'], password=request.POST['password'])
        if user is not None:
            usuario=Usuario.objects.filter(usuario=user)[0]
            if(user.is_superuser and user.is_staff and tipologin=="administrador" and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
                auth_login(request, user)
                return redirect("AsignaYasegura:Menu")
            elif(user.is_superuser and user.is_staff and tipologin=="digitador" and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
                auth_login(request, user)
                return redirect("AsignaYasegura:Menu")
            elif(user.is_superuser and user.is_staff and tipologin=="padre" and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
                auth_login(request, user)
                return redirect("AsignaYasegura:Menu")
            else:
                return render(request,'AsignaYasegura/index.html',{'error':"incorrecto : nombre de usuario , contraseña o tipo de usuario"})
        else:
            return render(request,'AsignaYasegura/index.html',{'error':"formulario de inicio de sesión incorrecto"})
    else:
        return render(request,'AsignaYasegura/index.html')

#finaliza sesion 
def logout(request):
    auth_logout(request)
    return render(request,'AsignaYasegura/logout.html')

#en caso de que un usuario intente acceder a una zona restringido que de cierta manera no posea los permisos necesarios
def nopermitido(request):
    return render_to_response('AsignaYasegura/nopermitido.html')

#define el menu inicio para tipo de usuario
def Menu(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_staff and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/menuadministrador.html',{'estudiantes':Estudiante.objects.all().count(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username}),'porcentajeescuelas':(Institucion.objects.all().count()*100)/Distrito.objects.all().aggregate(Sum('cantidadinstituciones'))['cantidadinstituciones__sum']
            })
        elif(request.user.is_superuser and request.user.is_staff and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
            return render(request,'AsignaYasegura/menudigitador.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        elif(request.user.is_superuser and request.user.is_staff and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
            return render(request,'AsignaYasegura/menupadredefamilia.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
         return render_to_response('AsignaYasegura/index.html')

#registra usuarios de tipo padre de familia 
def PPFF_registrarinicio(request):
    if request.method == 'POST': 
        form = PPFFForm(request.POST) 
        if form.is_valid()  and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
            np=form.save(commit=False)
            if not User.objects.filter(username=request.POST['usuario']) and not Usuario.objects.filter(ci=np.ci):
                user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
                Usuario( ci= np.ci,nombre = np.nombre,apellidos = np.apellidos,usuario = user,direccion=np.direccion,telefono=np.telefono,correo=np.correo).save()
                rol=Roles.objects.filter(rol="padre de familia")[0]
                usuario=Usuario.objects.filter(usuario=user)[0]
                global condicionVivienda
                global parentescoPropietario
                PadreInfo(direccion=usuario.direccion,registropropiedad=request.POST['registro'],condicionp=condicionVivienda[request.POST['condicionp']],parentescop=parentescoPropietario[request.POST['parentescop']],usuario=usuario,codigoluz=request.POST['codigoluz']).save()
                Usuariorol(usuario=usuario,rol=rol).save()
                form=PPFFForm()
                user1 = authenticate(username=request.POST['usuario'], password=request.POST['contrasena'])
                auth_login(request, user1)
                return redirect("AsignaYasegura:Menu")
            else:
                form=PPFFForm()
                return render(request,'AsignaYasegura/registrarpadreinicio.html',{'tipo_objeto':"padre de familia",'form': form, 'error':"nombre de usuario ya existente o cédula de identidad ya registrado"})    
        else:
            form=PPFFForm()
            return render(request,'AsignaYasegura/registrarpadreinicio.html',{'tipo_objeto':"padre de familia",'form': form, 'error':"no lleno correctamente la información"})
    else:
        form = PPFFForm()    
        return render(request,'AsignaYasegura/registrarpadreinicio.html',{'tipo_objeto':"padre de familia",'form': form})


#validar cambio de pk de inrf de administradores
#falta validar ci de estudiante
#falta eliminar estudiante representante
#falta opcion solictudes en representante