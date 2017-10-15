from django.shortcuts import render,render_to_response,get_object_or_404,redirect
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from .forms import *
from django.db.models import Sum
import datetime
from datetime import timedelta, date
from .funcionesadicionales import *
#---------------------------------------------------VISTAS ADMINISTRADOR-------------------------------------------------------------------------
#permite registrar digitar (informacion personal , permisos)
def Digitador_registrar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method == 'POST': 
                form = UsuarioForm(request.POST) 
                if form.is_valid()  and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
                    np=form.save(commit=False)
                    if not User.objects.filter(username=request.POST['usuario']) and not Usuario.objects.filter(ci=np.ci):
                        user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
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
                        return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'error':"nombre de usuario ya existente o cédula de identidad ya registrado",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    form=UsuarioForm()
                    return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form, 'error':"no lleno correctamente la información. Quizás el ci ya esta registrado o el nombre de usuario ya existe.",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                form = UsuarioForm()    
                return render(request,'AsignaYasegura/registrarUsuario.html',{'form': form,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')
    
#permite iniciar la accion asignacion de cupos
def Admin_ejecutar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method=='POST' :
                if asignaryasegura():
                    return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'mjsexitoso':'la asignación de cupos se realizó con exito','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'error':'se encontraron algunos porblemas por favor ver detalles','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                est=Estudiante.objects.all().count()
                inst=Institucion.objects.all().count()
                insttotal=Distrito.objects.all().aggregate(Sum('cantidadinstituciones'))['cantidadinstituciones__sum']
                cupos=AulajornadaCurso.objects.all().aggregate(Sum('capacidad'))['capacidad__sum']
                return render(request,'AsignaYasegura/ejecutarAsignacion.html',{'estudiantes':est,'instituciones':inst,'insttotal':insttotal,'cupos':cupos,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')
        
#permite ver una lista de usuarios de tipo digitador
def Digitador_ver(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/digitadores.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite ver una lista de usuarios de tipo digitador para luego elegir un digitador para editar su informacion
def Digitador_editar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/digitadores_editar.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite editar la informacion/permiso de un digitador
def Digitador_editarU(request,item):
    if request.user.username:
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
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite ver una lista de usuarios de tipo digitador para luego elegir un digitador para eliminar su informacion
def Digitador_eliminar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "administrador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/digitadores_eliminar.html',{'objects':digitadorescompletodata(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite eliminar la informacion/permiso de un digitador
def Digitador_eliminarU(request,item):
    if request.user.username:
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
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite editar la informacion de un administrador
def Admin_editarInfo(request):
    if request.user.username:
        usuario1=Usuario.objects.filter(usuario=request.user)[0]
        if request.user.is_authenticated and request.user.is_superuser :
            if request.method=='POST':
                if request.POST['usuario']==request.user.username:
                    Usuario.objects.filter(pk=Usuario.objects.filter(usuario=request.user)[0].ci).update(ci= request.POST['ci'],nombre =request.POST['nombre'],apellidos = request.POST['apellidos'],usuario = request.user,direccion=request.POST['direccion'],telefono=request.POST['telefono'],correo=request.POST['correo'])
                    return redirect('AsignaYasegura:Menu')
                else:
                    usere=request.user
                    usere.username=request.POST['usuario']
                    usere.save()
                    Usuario.objects.filter(pk=Usuario.objects.filter(usuario=request.user)[0].ci).update(ci= request.POST['ci'],nombre =request.POST['nombre'],apellidos = request.POST['apellidos'],usuario = request.user,direccion=request.POST['direccion'],telefono=request.POST['telefono'],correo=request.POST['correo'])
                    return redirect('AsignaYasegura:Menu')
            return render(request,'AsignaYasegura/nopermitido.html')
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite cambiar la contrasena de un administrador
def Admin_cambiocontrasena(request):
    if request.user.username:
        usuario1=Usuario.objects.filter(usuario=request.user)[0]
        if request.user.is_authenticated and request.user.is_superuser :
            if request.user.check_password(request.POST['password']):
                usere=request.user
                usere.set_password(request.POST['newpassword'])
                usere.save()
                return redirect('AsignaYasegura:Menu')
            else:
                return redirect('AsignaYasegura:Menu')
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#presenta todos los problemas suscitados en la asignacion de cupos
def Admin_problemasasignacion(request):
    if request.user.username:
        usuario1=Usuario.objects.filter(usuario=request.user)[0]
        if (request.user.is_authenticated and request.user.is_superuser and "administrador"==Usuariorol.objects.filter(usuario=usuario1)[0].rol.rol):
            problemas=ProblemasAsignacion.objects.all()
            return render(request,'AsignaYasegura/problemasAsignacion.html',{'objects':problemas,'usuarioform':AdminForm(instance=usuario1,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')
