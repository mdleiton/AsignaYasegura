from django.shortcuts import render,render_to_response,get_object_or_404
from .models import *
from django.contrib.auth import login as auth_login,logout as auth_logout,authenticate

# Create your views here.
#vistas generales
def login(request):
    if request.method == 'POST':
        tipologin=request.POST['tipologin']
        user = authenticate(username=request.POST['username'], password=request.POST['password'])
        print(user)
        if user is not None:
            if(user.is_superuser and user.is_staff and tipologin=="admin"):
                auth_login(request, user)
                return render(request,'AsignaYasegura/menuAdmin.html')
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

