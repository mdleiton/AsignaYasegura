from django.shortcuts import render,render_to_response,get_object_or_404,redirect
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate
from .forms import *
from django.db.models import Sum
import datetime
from datetime import timedelta, date

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
            if j.permiso.permiso=="Registrar estudiantes" :
                usuariofinal['padres_estudiantes']="Permitido"
            elif j.permiso.permiso=="Registrar instituciones":
                usuariofinal['Registrar_instituciones']="Permitido"
            elif j.permiso.permiso=="Inspecciones":
                usuariofinal['Inspecciones']="Permitido"
        digitadores.append(usuariofinal)
        usuariofinal=[] 
    return digitadores

#algoritmo para asignar cupos a los estudiantes
def asignaryasegura():
    return True

#verificar si el usuario de tipo digitador cuenta con los permisos adecuados para realizar determinadas actividades
def validarpermiso(usuario,permiso):
    permisos=Usuariopermisos.objects.filter(usuario=usuario)
    for i in permisos:
        if i.permiso.permiso==permiso:
            return True
    return False

#verifica si la direccion ingresada por el padre de familia o estudiante es la almacena en la base de datos del INEC
def validarDireccion(ci,latitud,longitud):
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


#---------------------------------------------------VISTAS ADMINISTRADOR-------------------------------------------------------------------------
#permite registrar digitar (informacion personal , permisos)
def Digitador_registrar(request):
    if request.user.username:
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
                #cupos=Aula.objects.all().aggregate(Sum('capacidadm'))['capacidadm__sum']+Aula.objects.all().aggregate(Sum('capacidadv'))['capacidadv__sum']
                cupos=0
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


#--------------------------------------------------------VISTAS DIGITADOR-----------------------------------------------
#permite registrar la informacion general de las instituciones
def Adquisicion_datos(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        permiso=validarpermiso(usuario,"Registrar instituciones")
        if(request.user.is_superuser and permiso and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method=='POST':
                director=Director.objects.filter(ci=request.POST['cedularector'])
                if not director:
                    director=Director(ci=request.POST['cedularector'],nombre=request.POST['nombrerector'],apellidos=request.POST['apellidorector'],telefono=request.POST['numerorector'],correo=request.POST['correorector'])
                    director.save()
                    distrito=Distrito.objects.filter(codigo=request.POST['distrito'].split('-')[0])[0]
                    instituto=Institucion(distrito=distrito,nombre=request.POST['nombreescuela'],direccion=request.POST['direccion'],representante=director,naulas=request.POST['aulas'])
                    instituto.save()
                    if 'vespertina' in request.POST.getlist('jornadas'):
                        jornada1=Jornada.objects.filter(jornada="vespertina")[0]
                        instituto.jornada.add(jornada1)
                    if 'matutina' in request.POST.getlist('jornadas'):
                        jornada1=Jornada.objects.filter(jornada="vespertina")[0]
                        instituto.jornada.add(jornada1)
                    for i in request.POST.getlist('tipo[]'):
                        instruccion=Instruccion.objects.filter(tipo=i)[0]
                        instituto.instruccion.add(instruccion)
                        if i=="secundaria":
                            for j in request.POST.getlist('tipob[]'):
                                oa=OfertaAcademica.objects.filter(nombre=j)[0]
                                instituto.ofertaacademica.add(oa)
                                if j=="Bachillerato Técnico":
                                    for k in request.POST.getlist('especializacion[]'):
                                        ct=CarrerasTecnicas.objects.filter(nombre=k)[0]
                                        instituto.carreras.add(ct)
                    instituto.save()
                    return render(request,'AsignaYasegura/calcular_capacidad.php',{'mjsregistroinfinstituto':"Se registró correctamente la información general de la empresa. Por favor ahorra ingresar las especificaciones técnicas de la empresa",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    return render(request,'AsignaYasegura/Adquisicion_datos.php',{'error':'Dicho representante ya se encuentra registrado','carreras':CarrerasTecnicas.objects.all(),'distritos':Distrito.objects.all(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})   
            return render(request,'AsignaYasegura/Adquisicion_datos.php',{'carreras':CarrerasTecnicas.objects.all(),'distritos':Distrito.objects.all(),'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#permite ingresar la informacion de la infraestructura capacidad de la institucion
def Calcular_capacidad(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and validarpermiso(usuario,"Registrar instituciones") and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/calcular_capacidad.php',{'instituto':Institucion.objects.all()[0],'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

def Registrar_capacidad(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and validarpermiso(usuario,"Registrar instituciones") and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            return render(request,'AsignaYasegura/calcular_capacidad.php',{'instruccion':['secundaria',],'niveles':Nivel.objects.all(),'numaulas':range(5), 'matutina':True,'vespertina':True,'mjsregistroinfinstituto':"Se registró correctamente la información general de la empresa. Por favor ahorra ingresar las especificaciones técnicas de la empresa",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')            

#registra padres de familia si el digitador tiene los permisos necesarios para hacerlo
def PPFF_registrar(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        permiso=validarpermiso(usuario,"Registrar estudiantes")
        if(request.user.is_superuser and permiso and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method == 'POST': 
                form = PPFFForm(request.POST) 
                if form.is_valid()  and len(request.POST['ci'])>9 and len(request.POST['contrasena'])>8:
                    user=User.objects.create_superuser(username=request.POST['usuario'],email=request.POST['correo'], password=request.POST['contrasena'])
                    np=form.save(commit=False)
                    Usuario( ci= np.ci,nombre = np.nombre,apellidos = np.apellidos,usuario = user,direccion=np.direccion,telefono=np.telefono,correo=np.correo).save()
                    rol=Roles.objects.filter(rol="padre de familia")[0]
                    usuario=Usuario.objects.filter(usuario=user)[0]
                    Usuariorol(usuario=usuario,rol=rol).save()
                    form=PPFFForm()
                    return render(request,'AsignaYasegura/registrarpfYes.html',{'infoadd':np.ci,'direccion':np.direccion,'tipo_objeto':"padre de familia",'form': form, 'mjsexitoso':"Se registró correctamente el padre de familia",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    form=PPFFForm()
                    return render(request,'AsignaYasegura/registrarpfYes.html',{'tipo_objeto':"padre de familia",'form': form, 'error':"no llenó correctamente la información.Quizás el nombre de usuario ya existe",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                form = PPFFForm()    
                return render(request,'AsignaYasegura/registrarpfYes.html',{'tipo_objeto':"padre de familia",'form': form,'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')    

#registrara la latitud longitud para cada padre de familia
def PPFF_registrargeolocalizacion(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        permiso=validarpermiso(usuario,"Registrar estudiantes")
        if(request.user.is_superuser and permiso and request.user.is_authenticated and "digitador"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method == 'POST': 
                if request.POST['sinlatitud']=='0' :
                    padre = get_object_or_404(Usuario, pk=request.POST['infoadd'])
                    if validarDireccion(padre.ci,request.POST['latitud'],request.POST['longitud']):
                        GeolocalizacionPadre(padre=padre,latitud=request.POST['latitud'],longitud=request.POST['longitud'],direccion=request.POST['direccionestudiante']).save()
                        form=PPFFForm()
                        return render(request,'AsignaYasegura/registrarpfYes.html',{'form':form,'mjsregistrolocalizacion':'registro completo del padre de familia. puede ingresar otro padre de familia.','tipo_objeto':"padre de familia",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                    else:
                        form=PPFFForm()
                        return render(request,'AsignaYasegura/registrarpfYes.html',{'infoadd':padre.ci,'direccion':padre.direccion,'tipo_objeto':"padre de familia",'form': form, 'mjsexitoso':"Error la dirección ingresado no concuerda con la almacenada en el INEC",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    return render(request,'AsignaYasegura/registrarPPFFgeolocalizacion.html',{'infoadd':request.POST['infoadd'],'direccion':request.POST['direccion'],'tipo_objeto':"padre de familia",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})  
            else:    
                form=PPFFForm()
                return render(request,'AsignaYasegura/registrarpfYes.html',{'form':form,'tipo_objeto':"padre de familia",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})             
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')    


#-----------------------------------------------------VISTAS PADRE DE FAMILIA-------------------------------------------------

#registar y valida la ubicacion que el padre del familia registre en el mapa
def Padre_registrargeolocalizacion(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            registro=GeolocalizacionPadre.objects.filter(padre=usuario)
            if request.method == 'POST': 
                padre = get_object_or_404(Usuario, pk=request.POST['infoadd'])
                if registro:
                    GeolocalizacionPadre.objects.filter(padre=usuario).delete()
                    GeolocalizacionPadre(padre=padre,latitud=request.POST['latitud'],longitud=request.POST['longitud'],direccion=request.POST['direccionestudiante']).save()
                    return render(request,'AsignaYasegura/menupadredefamilia.html',{'mjsexitoso':'Actualización exitosa de ubicación.','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                if validarDireccion(padre.ci,request.POST['latitud'],request.POST['longitud']):
                    GeolocalizacionPadre(padre=padre,latitud=request.POST['latitud'],longitud=request.POST['longitud'],direccion=request.POST['direccionestudiante']).save()
                    return render(request,'AsignaYasegura/menupadredefamilia.html',{'mjsexitoso':'Registro exitoso de ubicación.','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
                else:
                    return render(request,'AsignaYasegura/menupadredefamilia.html',{'error':"Error la dirección ingresado no concuerda con la almacenada en el INEC",'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                if registro:
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
            if request.method == 'POST':
                curso = get_object_or_404(Curso, pk=request.POST['curso'])
                estudiante=Estudiante(ci=request.POST['cedula'],nombre=request.POST['nombres'],apellidos=request.POST['apellidos'],direccion=request.POST['direccion'],nacimiento=datetime.datetime.strptime(request.POST['nacimiento'],"%Y-%m-%d"),representante=usuario,curso=curso)
                estudiante.save()
                if request.POST['discapacidad']=="1":
                    Discapacidad(discapacidad=request.POST['conadistipo'],codigo=request.POST['conadis'],porcentaje=request.POST['conadisd'],estudiante=estudiante).save()                   
                return render(request,'AsignaYasegura/registrargeolocalizacionestudiante.html',{'infoadd':estudiante.ci,'direccion':request.POST['direccion'],'obtener':'Ahora debe registrar las coordenadas en el mapa','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                return render(request,'AsignaYasegura/registrarestudiante.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

def Estudiante_registrargeolocalizacion(request):
    if request.user.username:
        usuario=Usuario.objects.filter(usuario=request.user)[0]
        if(request.user.is_superuser and request.user.is_authenticated and "padre de familia"==Usuariorol.objects.filter(usuario=usuario)[0].rol.rol):
            if request.method == 'POST' and validarDireccion(usuario.ci,request.POST['latitud'],request.POST['longitud']):
                estudiante = get_object_or_404(Estudiante, pk=request.POST['infoadd'])
                estudiante.latitud=request.POST['latitud']
                estudiante.longitud=request.POST['longitud']
                estudiante.save()
                return render(request,'AsignaYasegura/registrarestudiante.html',{'mjsexitoso':'Registro exitoso de ubicación del estudiante.','usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
            else:
                return render(request,'AsignaYasegura/registroestudiante.html',{'usuarioform':AdminForm(instance=usuario,initial={'usuario':request.user.username})})
        else:
            return render(request,'AsignaYasegura/nopermitido.html')
    else:
        return render_to_response('AsignaYasegura/index.html')

#validar cambio de pk de inrf de administradores
#validar username
#validar en los registros que username sea unico
#arreglar cupos admin: ejecutar asignacion
#validar que cada padre de familia tenga su respectiva latitud , longitud antes de registrar algun padre
#validar ci y username unico al registrar algo
