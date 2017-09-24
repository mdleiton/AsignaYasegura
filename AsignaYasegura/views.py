from django.shortcuts import render,render_to_response,get_object_or_404
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from .forms import *

#vistas generales
def login(request):
    if request.method == 'POST':
        tipologin=request.POST['tipologin']
        user = authenticate(username=request.POST['username'], password=request.POST['password'])
        if user is not None:
            usuario=Usuario.objects.filter(usuario=user)[0]
            if(user.is_superuser and user.is_staff and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuadministrador.html')
            elif(user.is_superuser and user.is_staff and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menudigitador.html')
            elif((not user.is_superuser or  not user.is_staff) and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menupadre.html')
            else:
                return render(request,'AsignaYasegura/index.html',{'error':"incorrecto : nombre de usuario , contraseña o tipo de usuario"})
        else:
            return render(request,'AsignaYasegura/index.html',{'error':"formulario de inicio de sesión incorrecto"})
    else:
        return render(request,'AsignaYasegura/index.html')

def logout(request):
    auth_logout(request)
    return render(request,'AsignaYasegura/logout.html')

def nopermitido(request):
    return render_to_response('AsignaYasegura/nopermitido.html')

def Menu(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_staff and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/menuadministrador.html')
    elif(request.user.is_superuser and request.user.is_staff and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
        return render(request,'AsignaYasegura/menudigitador.html')
    elif(request.user.is_superuser and request.user.is_staff and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
        return render(request,'AsignaYasegura/menupadre.html')  
    else:
         return render_to_response('AsignaYasegura/nopermitido.html')

def Digitador_registrar(request):
    if (request.user.is_authenticated and request.user.is_superuser and request.user.is_staff):
        if request.method == 'POST': 
            form = UsuarioForm(request.POST) 
            if form.is_valid() and request.POST['ci'].isdigit() and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
                user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
                np=form.save(commit=False)
                Usuario( ci= np.ci,nombre = np.nombre,apellidos = np.apellidos,usuario = user,direccion=np.direccion,telefono=np.telefono,correo=np.correo).save()
                rol=Roles.objects.filter(rol="digitador")[0]
                usuario=Usuario.objects.filter(usuario=user)[0]
                Usuariorol(usuario=usuario,rol=rol).save()
                for i in  request.POST.getlist('permisos'):
                    Usuariopermisos(usuario=usuario,permiso=Permiso.objects.filter(id_permiso=i)[0]).save()
                form=UsuarioForm()
                return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'mjsexitoso':"Se registró correctamente el usuario . Puede ingresar otro usuario"})
            else:
                form=UsuarioForm()
                return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'error':"no lleno correctamente la información"})
        else:
            form = UsuarioForm()    
            return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

def Digitador_ver(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_staff and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        ur=Usuariorol.objects.filter(rol__rol="digitador")
        digitadores=[]
        usuariofinal=[]
        for i in ur:
            listapermiso=Usuariopermisos.objects.filter(usuario=i.usuario)
            usuariofinal=i.usuario.__dict__
            usuariofinal['padres_estudiantes']="No Permitido"
            usuariofinal['Registrar_instituciones']="No Permitido"
            usuariofinal['Inspecciones']="No Permitido"
            for j in listapermiso:
                if j.permiso.permiso=="Registrar padres/estudiantes" :
                    usuariofinal['padres_estudiantes']="Permitido"
                elif j.permiso.permiso=="Registrar instituciones":
                    usuariofinal['Registrar_instituciones']="Permitido"
                elif j.permiso.permiso=="Inspecciones":
                    usuariofinal['Inspecciones']="Permitido"
            digitadores.append(usuariofinal)
            usuariofinal=[]
        return render(request,'AsignaYasegura/digitadores.html',{'objects':digitadores})

def Digitador_editar(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_staff and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        ur=Usuariorol.objects.filter(rol__rol="digitador")
        digitadores=[]
        usuariofinal=[]
        for i in ur:
            listapermiso=Usuariopermisos.objects.filter(usuario=i.usuario)
            usuariofinal=i.usuario.__dict__
            usuariofinal['padres_estudiantes']="No Permitido"
            usuariofinal['Registrar_instituciones']="No Permitido"
            usuariofinal['Inspecciones']="No Permitido"
            for j in listapermiso:
                if j.permiso.permiso=="Registrar padres/estudiantes" :
                    usuariofinal['padres_estudiantes']="Permitido"
                elif j.permiso.permiso=="Registrar instituciones":
                    usuariofinal['Registrar_instituciones']="Permitido"
                elif j.permiso.permiso=="Inspecciones":
                    usuariofinal['Inspecciones']="Permitido"
            digitadores.append(usuariofinal)
            usuariofinal=[]    
        return render(request,'AsignaYasegura/digitadores_editar.html',{'objects':digitadores})

def Digitador_editarU(request,item):
    return render(request,'AsignaYasegura/digitadorver.html')

def Digitador_eliminar(request):
    return render(request,'AsignaYasegura/digitadorver.html')

def Digitador_eliminarU(request,item):
    return render(request,'AsignaYasegura/digitadorver.html')

def Adquisicion_datos(request):
    return render(request,'AsignaYasegura/Adquisicion_datos.php')

def Calcular_capacidad(request):
    return render(request,'AsignaYasegura/calcular_capacidad.php')
