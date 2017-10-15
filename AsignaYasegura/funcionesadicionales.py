from .models import *
from .forms import *
from django.db.models import Sum
#-----------------------VARIABLES GLOBALES-----------------------------------------------------

condicionVivienda = {
    '1': 'Vivienda propia',
    '2': 'Vivienda cedida',
    '3': 'Vivienda alquilada',
    '4': 'Vivienda compartida',
    '5': 'Vivienda encomendada',
    '6': 'Otros'
}

parentescoPropietario = {
    '1': 'A nombre mio',
    '2': 'Padres',
    '3': 'Hermanos',
    '4': 'Tíos',
    '5': 'No familiar',
    '6': 'Amigo',
    '7': 'Sobrino',
    '8': 'Abuelos'
}
parentescorepresentante = {
    '1': 'Padres',
    '2': 'Hermanos',
    '3': 'Tíos',
    '4': 'Abuelos'
}
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

#permite obtener una lista de diccionario con la informacion completa de todas las aulas de una determinada institucion
def Aulasescompletodata(instituto):
    aulas=Aula.objects.filter(institucion=instituto)           
    aulascompleto=[]
    aulafinal=[]
    for i in aulas:
        jornadas=AulajornadaCurso.objects.filter(aula=i)
        aulafinal=i.__dict__
        for j in jornadas:
            if j.jornada.jornada=="matutina" :
                aulafinal['capacidadmatutina']=j.capacidad
                aulafinal['paralelomatutina']=j.paralelo
                aulafinal['cursomatutina']=j.curso.curso
                aulafinal['nivelmatutina']=j.curso.nivel.nivel
            if j.jornada.jornada=="vespertina" :
                aulafinal['capacidadvespertina']=j.capacidad
                aulafinal['paralelovespertina']=j.paralelo
                aulafinal['cursovespertina']=j.curso.curso
                aulafinal['nivelvespertina']=j.curso.nivel.nivel
        aulascompleto.append(aulafinal)
        aulafinal=[] 
    return aulascompleto

#retorna un diccionario con todos los totales de cupos para cada nivel por institucion
def totalesinstituto(cupos,instituto):
    total={}
    total['preparatorio']=0
    total['Basicoelemental']=0
    total['Basicomedia']=0
    total['BasicoSuperior']=0
    total['Bachillerato']=0
    total['pupitres']=0
    maxmparalelo=0
    for i in cupos:
        if Institucion.objects.filter(id_institucion=instituto.id_institucion,jornada__jornada="matutina"):
            if i['nivelmatutina']=="Preparatoria":
                total['preparatorio']+=i['capacidadmatutina']
            elif i['nivelmatutina']=="Básica elemental":
                total['Basicoelemental']+=i['capacidadmatutina']
            elif i['nivelmatutina']=="Básica media":
                total['Basicomedia']+=i['capacidadmatutina']
            elif i['nivelmatutina']=="Básica superior":
                total['BasicoSuperior']+=i['capacidadmatutina']
            elif i['nivelmatutina']=="Bachillerato":
                total['Bachillerato']+=i['capacidadmatutina']
            if maxmparalelo<=int(i['capacidadmatutina']):
                maxmparalelo=i['capacidadmatutina']
        if Institucion.objects.filter(id_institucion=instituto.id_institucion,jornada__jornada="vespertina"):
            if i['nivelvespertina']=="Preparatoria":
                total['preparatorio']+=i['capacidadvespertina']
            elif i['nivelvespertina']=="Básica elemental":
                total['Basicoelemental']+=i['capacidadvespertina']
            elif i['nivelvespertina']=="Básica media":
                total['Basicomedia']+=i['capacidadvespertina']
            elif i['nivelvespertina']=="Básica superior":
                total['BasicoSuperior']+=i['capacidadvespertina']
            elif i['nivelvespertina']=="Bachillerato":
                total['Bachillerato']+=i['capacidadvespertina']
            if maxmparalelo<=int(i['capacidadvespertina']):
                maxmparalelo=i['capacidadvespertina']
        total['pupitres']+=maxmparalelo
    total['total']=total['preparatorio']+total['Basicoelemental']+total['Basicomedia']+total['BasicoSuperior']+total['Bachillerato']
    return total

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

#retorna la cantidad maxima de estudiante deacuerdo a la cantidad de estudiante
def capacidadXnivel(curso):
    ni=curso.nivel
    for i in CapacidadEstandar.objects.all():
        if ni==i.nivel:
            return i.capacidad
