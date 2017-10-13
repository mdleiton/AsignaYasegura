from __future__ import unicode_literals
from django.contrib.auth.models import User
from django.db import models,connection
from django.utils import timezone

class Usuario(models.Model):
    ci= models.CharField(max_length=10,primary_key=True)
    nombre = models.CharField(max_length=35)
    apellidos = models.CharField(max_length=35)
    usuario = models.OneToOneField(User)
    direccion=models.CharField(max_length=100)
    telefono=models.CharField(max_length=13)
    correo=models.EmailField()

    def __str__(self):
    	return 'Usuario: {}:{}'.format(self.ci, self.usuario)

class PadreInfo(models.Model):
	id_padre=models.AutoField(primary_key=True)
	condicionp=models.CharField(max_length=100)
	parentescop=models.CharField(max_length=100)
	usuario=models.ForeignKey('Usuario')
	codigoluz=models.CharField(max_length=100)

	def __str__(self):
		return 'Padre vivienda: {}:{}'.format(self.condicionp, self.usuario)

class GeolocalizacionPadre(models.Model):
	idgeolocalizacion=models.AutoField(primary_key=True)
	direccion=models.CharField(max_length=100)
	latitud=models.FloatField()
	longitud=models.FloatField()
	padre=models.ForeignKey('Usuario')
	

	def __str__(self):
		return 'GeolocalizacionPadre: {}:{}'.format(self.padre,self.direccion)

class Roles(models.Model):
	id_rol=models.AutoField(primary_key=True)
	rol=models.CharField(max_length=35)
	descripcion=models.CharField(max_length=100)
	
	def __str__(self):
		return 'Rol: {}:{}'.format(self.rol, self.descripcion)

class Usuariorol(models.Model):
	id_usuario_rol=models.AutoField(primary_key=True)
	usuario=models.ForeignKey('Usuario')
	rol=models.ForeignKey('Roles')

	def __str__(self):
		return 'UsuarioRol: {}:{}'.format(self.rol, self.usuario)

class Permiso(models.Model):
	id_permiso=models.AutoField(primary_key=True)
	permiso=models.CharField(max_length=35)
	descripcion=models.CharField(max_length=100)
	
	def __str__(self):
		return '{}'.format(self.permiso)

class Usuariopermisos(models.Model):
	id_usuario_permiso=models.AutoField(primary_key=True)
	usuario=models.ForeignKey('Usuario')
	permiso=models.ForeignKey('Permiso')

	def __str__(self):
		return 'UsuarioPermiso: {}:{}'.format(self.permiso, self.usuario)

class Estudiante(models.Model):
	ci= models.CharField(max_length=10,primary_key=True)
	nacimiento=models.DateTimeField()
	nombre = models.CharField(max_length=35)
	apellidos = models.CharField(max_length=35)
	direccion=models.CharField(max_length=100)
	representante=models.ForeignKey('Usuario')
	latitud=models.FloatField(null=True,blank=True)
	longitud=models.FloatField(null=True,blank=True)
	curso=models.ForeignKey('Curso')
	parentescorepresentante=models.CharField(max_length=100)

	def __str__(self):
		return 'Estudiante: {}:{}'.format(self.ci, self.nombre)    

class Registro(models.Model):
	id_registro=models.AutoField(primary_key=True)
	estudiante=models.ForeignKey('Estudiante')
	aulajornadacurso=models.ForeignKey('AulajornadaCurso')

	def __str__(self):
		return 'Estudiante-Aula-Jornada-Curso: {}:{}'.format(self.estudiante, self.aulajornadacurso)

class Discapacidad(models.Model):
	codigo=models.CharField(max_length=10,primary_key=True)
	discapacidad=models.CharField(max_length=35)
	porcentaje= models.FloatField()
	estudiante=models.OneToOneField('Estudiante')

	def __str__(self):
		return 'Discapacidad: {}:{}'.format(self.estudiante, self.discapacidad) 

class Distrito(models.Model):
	codigo= models.CharField(primary_key=True,max_length=35)
	nombre = models.CharField(max_length=35)
	zona = models.CharField(max_length=35)
	cantidadinstituciones=models.IntegerField()
	
	def __str__(self):
		return 'Distrito: {}:{}'.format(self.codigo, self.nombre)

class Instruccion(models.Model):
	id_instruccion= models.AutoField(primary_key=True)
	tipo = models.CharField(max_length=35)
	
	def __str__(self):
		return 'Instruccion: {}:{}'.format(self.id_instruccion, self.tipo)

class Director(models.Model):
	ci= models.CharField(max_length=10,primary_key=True)
	nombre = models.CharField(max_length=35)
	apellidos = models.CharField(max_length=35)
	telefono=models.CharField(max_length=13)
	correo=models.EmailField()

	def __str__(self):
		return 'Director: {}:{}'.format(self.ci, self.nombre)

class OfertaAcademica(models.Model):
	id_institucion= models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)

	def __str__(self):
		return 'Ofertaacademica: {}:{}'.format(self.id_institucion, self.nombre)

class CarrerasTecnicas(models.Model):
	idcarrera=models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)
	ofertaacademica = models.ForeignKey('OfertaAcademica', on_delete=models.CASCADE)
	
	def __str__(self):
		return 'CarrerasTecnicas: {}:{}'.format(self.idcarrera,  self.nombre)

class Institucion(models.Model):
	id_institucion= models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)
	distrito = models.ForeignKey('Distrito')
	direccion = models.CharField(max_length=100)
	representante=models.OneToOneField('Director')
	naulas=models.IntegerField()
	ofertaacademica=models.ManyToManyField('OfertaAcademica')
	instruccion=models.ManyToManyField('Instruccion')
	carreras=models.ManyToManyField('CarrerasTecnicas')
	jornada=models.ManyToManyField('Jornada')
	latitud=models.FloatField(null=True,blank=True)
	longitud=models.FloatField(null=True,blank=True)

	def __str__(self):
		return 'Institucion: {}:{}'.format(self.nombre, self.distrito)

class Jornada(models.Model):
	idjornada=models.AutoField(primary_key=True)
	jornada=models.CharField(max_length=35)

	def __str__(self):
		return 'Jornada: {}:{}'.format(self.idjornada, self.jornada)

class Nivel(models.Model):
	id_nivel=models.AutoField(primary_key=True)
	nivel=models.CharField(max_length=35)

	def __str__(self):
		return 'nivel: {}:{}'.format(self.id_nivel, self.nivel)

class Curso(models.Model):
	id_curso=models.AutoField(primary_key=True)
	curso=models.CharField(max_length=35)
	nivel=models.ForeignKey('Nivel')
	instruccion=models.ForeignKey('Instruccion')
	
	def __str__(self):
		return 'curso: {}:{}'.format(self.id_curso, self.curso)

class AulajornadaCurso(models.Model):
	id_aulacurso=models.AutoField(primary_key=True)
	aula=models.ForeignKey('Aula')
	jornada=models.ForeignKey('Jornada')
	curso=models.ForeignKey('Curso')
	capacidad=models.IntegerField()
	paralelo=models.CharField(max_length=35)
	cupos=models.IntegerField()

	def __str__(self):
		return 'Aula-jornada-curso: {}:{}:{}'.format(self.aula, self.jornada,self.curso)

class Aula(models.Model):
	id_aula=models.AutoField(primary_key=True)
	capacidadmax=models.IntegerField()
	capacidadpupitres=models.IntegerField()
	longitud=models.FloatField()
	amplitud=models.FloatField()
	institucion=models.ForeignKey('Institucion')
	
	def __str__(self):
		return 'Aula: {}:{}'.format(self.id_aula, self.capacidadmax)

class CapacidadEstandar(models.Model):
	id_capacidad=models.AutoField(primary_key=True)
	capacidad=models.IntegerField()
	nivel=models.ForeignKey('Nivel')

	def __str__(self):
		return 'CapacidadEstandar: {}:{}'.format(self.nivel, self.capacidad)

class ProblemasAsignacion(models.Model):
	id_problemas=models.AutoField(primary_key=True)
	estudiante=models.ForeignKey('Estudiante')
	problema=models.CharField(max_length=40)	

	def __str__(self):
		return 'Problemas asignacion: {}:{}'.format(self.estudiante, self.problema)
