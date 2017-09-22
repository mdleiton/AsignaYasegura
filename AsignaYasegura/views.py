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
            if(user.is_superuser and user.is_staff and tipologin=="admin"):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuadministrador.html')
            elif((not user.is_superuser or  not user.is_staff) and tipologin=="digitador" ):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuDigitador.html')
            elif((not user.is_superuser or  not user.is_staff) and tipologin=="padre" ):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuPadre.html')
            else:
                return render(request,'AsignaYasegura/index.html',{'error':"incorrecto : nombre de usuario , contraseña o tipo de usuario"})
        else:
            return render(request,'AsignaYasegura/index.html',{'error':"formulario de inicio de sesión incorrecto"})
    else:
        tipos =  Roles.objects.all()
        return render(request,'AsignaYasegura/index.html')

def logout(request):
    auth_logout(request)
    return render(request,'AsignaYasegura/logout.html')

def nopermitido(request):
    return render_to_response('AsignaYasegura/nopermitido.html')

def MenuAdmin(request):
    if (request.user.is_authenticated and request.user.is_superuser and request.user.is_staff):
        return render(request,'AsignaYasegura/menuadministrador.html')

def Digitador_registrar(request):
    if (request.user.is_authenticated and request.user.is_superuser and request.user.is_staff):
        if request.method == 'POST': 
            form = UsuarioForm(request.POST) 
            if form.is_valid() and request.POST['ci'].isdigit() and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
                user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
                np=form.save(commit=False)
                Usuario( ci= np.ci,nombre = np.nombre,apellidos = np.apellidos,usuario = user,direccion=np.direccion,telefono=np.telefono,correo=np.correo).save()
                rol=Roles.objects.filter(rol__contains="admin")[0]
                usuario=Usuario.objects.filter(usuario=user)[0]
                Usuariorol(usuario=usuario,rol=rol).save()
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

def MenuDigitador(request):
    if (request.user.is_authenticated and request.user.is_superuser and request.user.is_staff):
        return render(request,'AsignaYasegura/menudigitador.html')

def Adquisicion_datos(request):
    return render(request,'AsignaYasegura/Adquisicion_datos.php')

def Calcular_capacidad(request):
    return render(request,'AsignaYasegura/calcular_capacidad.php')
