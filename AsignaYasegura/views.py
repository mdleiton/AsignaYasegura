from django.shortcuts import render,render_to_response,get_object_or_404,redirect
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from .forms import *

#------------------------------------------------FUNCIONES GENERALES----------------------------------------------------------------
#permite obtener una lista de diccionario con la informacion completa de todos los usuario de rol digitador(informacion personal, permisos)
def digitadorescompletodata():
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
    return digitadores

def asignaryasegura():
    return True
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
            if(user.is_superuser and user.is_staff and tipologin==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuadministrador.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
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

#finaliza sesion 
def logout(request):
    auth_logout(request)
    return render(request,'AsignaYasegura/logout.html')

#en caso de que un usuario intente acceder a una zona restringido que de cierta manera no posea los permisos necesarios
def nopermitido(request):
    return render_to_response('AsignaYasegura/nopermitido.html')

#define el menu inicio para tipo de usuario
def Menu(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_staff and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/menuadministrador.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    elif(request.user.is_superuser and request.user.is_staff and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
        return render(request,'AsignaYasegura/menudigitador.html')
    elif(request.user.is_superuser and request.user.is_staff and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol ):
        return render(request,'AsignaYasegura/menupadre.html')  
    else:
         return render_to_response('AsignaYasegura/nopermitido.html')


#---------------------------------------------------VISTAS ADMINISTRADOR-------------------------------------------------------------------------
#permite registrar digitar (informacion personal , permisos)
def Digitador_registrar(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        if request.method == 'POST': 
            form = UsuarioForm(request.POST) 
            if form.is_valid()  and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
                user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
                np=form.save(commit=False)
                Usuario( ci= np.ci,nombre = np.nombre,apellidos = np.apellidos,usuario = user,direccion=np.direccion,telefono=np.telefono,correo=np.correo).save()
                rol=Roles.objects.filter(rol="digitador")[0]
                usuario=Usuario.objects.filter(usuario=user)[0]
                Usuariorol(usuario=usuario,rol=rol).save()
                for i in  request.POST.getlist('permisos'):
                    Usuariopermisos(usuario=usuario,permiso=Permiso.objects.filter(id_permiso=i)[0]).save()
                form=UsuarioForm()
                return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'mjsexitoso':"Se registró correctamente el usuario . Puede ingresar otro usuario",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                form=UsuarioForm()
                return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'error':"no lleno correctamente la información",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            form = UsuarioForm()    
            return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')
    
#permite iniciar la accion asignacion de cupos
def Admin_ejecutar(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        if request.method=='POST' :
            if asignaryasegura():
                return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'mjsexitoso':'la asignación de cupos se realizó con exito','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'error':'se encontraron algunos porblemas por favor ver detalles','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')
        
#permite ver una lista de usuarios de tipo digitador
def Digitador_ver(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/digitadores.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite ver una lista de usuarios de tipo digitador para luego elegir un digitador para editar su informacion
def Digitador_editar(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/digitadores_editar.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})

#permite editar la informacion/permiso de un digitador
def Digitador_editarU(request,item):
    usuario1=Usuario.objects.filter(usuario=request.user)[0]
    if (request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario1)[0].rol.rol):
        usuario = get_object_or_404(Usuario, pk=item) 
        inicial=[]
        for i in Usuariopermisos.objects.filter(usuario=usuario):
            inicial.append(i.permiso) 
        form = UsuariosListForm(request.POST or None,instance=usuario,initial={'permisos':inicial})
        if request.method=='POST':
            Usuariopermisos.objects.filter(usuario=usuario).delete()
            for i in request.POST.getlist('permisos'):
                Usuariopermisos(usuario=usuario,permiso=Permiso.objects.filter(id_permiso=i)[0]).save()
            form.save()
            return render(request,'AsignaYasegura/digitadores_editar.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        return render(request,'AsignaYasegura/digitadores_editarU.html',{'form':form,'tipo_objeto':"digitador",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite ver una lista de usuarios de tipo digitador para luego elegir un digitador para eliminar su informacion
def Digitador_eliminar(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/digitadores_eliminar.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite eliminar la informacion/permiso de un digitador
def Digitador_eliminarU(request,item):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        digitador = get_object_or_404(Usuario, pk=item)    
        if request.method=='POST':
            Usuariopermisos.objects.filter(usuario=digitador).delete()
            User.objects.get(username = digitador.usuario.username).delete()
            digitador.delete()
            return redirect('AsignaYasegura:digitador_eliminar')
        return render(request,'AsignaYasegura/digitadores_eliminar.html',{'objects': digitadorescompletodata(),'object':digitador, 'eliminar': 'True','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite editar la informacion de un administrador
def Admin_editarInfo(request):
    usuario1=Usuario.objects.filter(usuario=request.user)[0]
    if (request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario1)[0].rol.rol):
        if request.method=='POST':
            if request.POST['usuario']==request.user.username:
                Usuario.objects.filter(pk=Usuario.objects.filter(usuario=request.user)[0].ci).update(ci= request.POST['ci'],nombre =request.POST['nombre'],apellidos = request.POST['apellidos'],usuario = request.user,direccion=request.POST['direccion'],telefono=request.POST['telefono'],correo=request.POST['correo'])
                return redirect('AsignaYasegura:Menu')
            else:
                usere=request.user
                usere.username==request.POST['usuario']
                usere.save()
                Usuario.objects.filter(pk=Usuario.objects.filter(usuario=request.user)[0].ci).update(ci= request.POST['ci'],nombre =request.POST['nombre'],apellidos = request.POST['apellidos'],usuario = request.user,direccion=request.POST['direccion'],telefono=request.POST['telefono'],correo=request.POST['correo'])
                return redirect('AsignaYasegura:Menu')
        return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite cambiar la contrasena de un administrador
def Admin_cambiocontrasena(request):
    usuario1=Usuario.objects.filter(usuario=request.user)[0]
    if (request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario1)[0].rol.rol):
        if request.user.check_password(request.POST['password']):
            usere=request.user
            usere.set_password(request.POST['newpassword'])
            usere.save()
            return redirect('AsignaYasegura:Menu')
        else:
            return render(request,'AsignaYasegura/menuadministrador.html',{'errorcontrasena':'No se pudo realizar con éxito el cambio de contraseña','usuarioform':AdminForm(instance=usuario1,initial={'usuario':request.user.username})})
        '''
        user = authenticate(username=request.user.username, password=request.POST['password'])
        if user is not None:
            print('ok')
            user.set_password(request.POST['newpassword'])
            return redirect('AsignaYasegura:Menu')
        else:
             
        return render(request,'AsignaYasegura/nopermitido.html')
        '''
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#--------------------------------------------------------VISTAS DIGITADOR-----------------------------------------------
#permite registrar la informacion general de las instituciones
def Adquisicion_datos(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/Adquisicion_datos.php',{'distritos':Distrito.objects.all()})
    else:
        return render(request,'AsignaYasegura/nopermitido.html')

#permite ingresar la informacion de la infraestructura capacidad de la institucion
def Calcular_capacidad(request):
    usuario=Usuario.objects.filter(usuario=request.user)[0]
    if(request.user.is_superuser and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
        return render(request,'AsignaYasegura/calcular_capacidad.php')
    else:
        return render(request,'AsignaYasegura/nopermitido.html')



#-----------------------------------------------------VISTAS PADRE DE FAMILIA-------------------------------------------------



#validar cambio de pk de inf de administradores