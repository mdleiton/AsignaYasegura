from __future__ import unicode_literals
from django.contrib.auth.models import User
from django.db import models,connection
from django.utils import timezone

class Usuario(models.Model):
    ci= models.CharField(max_length=10,primary_key=True)
    nombre = models.CharField(max_length=35)
    apellidos = models.CharField(max_length=35)
    usuario = models.OneToOneField(User)
    direccion=models.CharField(max_length=50)
    telefono=models.CharField(max_length=13)
    correo=models.EmailField()

    def __str__(self):
    	return 'Usuario: {}:{}'.format(self.ci, self.usuario)

class Roles(models.Model):
	id_rol=models.AutoField(primary_key=True)
	rol=models.CharField(max_length=35)
	descripcion=models.CharField(max_length=100)
	
	def __str__(self):
		return 'Rol: {}:{}'.format(self.rol, self.descripcion)

class Permiso(models.Model):
	id_permiso=models.AutoField(primary_key=True)
	permiso=models.CharField(max_length=35)
	descripcion=models.CharField(max_length=100)
	
	def __str__(self):
		return '{}'.format(self.permiso)

class Usuariorol(models.Model):
	id_usuario_rol=models.AutoField(primary_key=True)
	usuario=models.ForeignKey('Usuario')
	rol=models.ForeignKey('Roles')

	def __str__(self):
		return 'UsuarioRol: {}:{}'.format(self.rol, self.usuario)

class Usuariopermisos(models.Model):
	id_usuario_permiso=models.AutoField(primary_key=True)
	usuario=models.ForeignKey('Usuario')
	permiso=models.ForeignKey('Permiso')

	def __str__(self):
		return 'UsuarioPermiso: {}:{}'.format(self.permiso, self.usuario)

class Institucion(models.Model):
	id_institucion= models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)
	distrito = models.ForeignKey('Distrito')
	direccion = models.CharField(max_length=50)
	representante=models.OneToOneField('Director')
	naulas=models.IntegerField()
	ofertaacademica=models.ManyToManyField('OfertaAcademica')
	instruccion=models.ManyToManyField('Instruccion')
	carreras=models.ManyToManyField('CarrerasTecnicas')
	horariom=models.CharField(max_length=10)
	horariov=models.CharField(max_length=10)

	def __str__(self):
		return 'Institucion: {}:{}'.format(self.nombre, self.distrito)

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

#el director puede acceder al sistema. si asi eleminar y director sera otro usuario
class Director(models.Model):
	ci= models.CharField(max_length=10,primary_key=True)
	nombre = models.CharField(max_length=35)
	apellidos = models.CharField(max_length=35)
	telefono=models.CharField(max_length=13)
	correo=models.EmailField()

	def __str__(self):
		return 'Director: {}:{}'.format(self.ci, self.usuario)

class OfertaAcademica(models.Model):
	id_institucion= models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)

	def __str__(self):
		return 'Ofertaacademica: {}:{}'.format(self.id_institucion, self.oferta)

class CarrerasTecnicas(models.Model):
	idcarrera=models.AutoField(primary_key=True)
	nombre=models.CharField(max_length=50)
	ofertaacademica = models.ForeignKey('OfertaAcademica', on_delete=models.CASCADE)
	
	def __str__(self):
		return 'CarrerasTecnicas: {}:{}'.format(self.idcarrera,  self.nombre)


class Estudiante(models.Model):
	ci= models.CharField(max_length=10,primary_key=True)
	nombre = models.CharField(max_length=35)
	apellidos = models.CharField(max_length=35)
	direccion=models.CharField(max_length=50)
	telefono=models.CharField(max_length=13)
	curso=models.OneToOneField(User,null=True,blank=True)
	paralelo=models.CharField(max_length=13,null=True,blank=True)
	representante=models.ForeignKey('Usuario')

	def __str__(self):
		return 'Estudiante: {}:{}'.format(self.ci, self.nombre)    

class Curso(models.Model):
	id_curso=models.AutoField(primary_key=True)
	curso=models.CharField(max_length=35)

	def __str__(self):
		return 'curso: {}:{}'.format(self.idcurso, self.nombre)

class Aula(models.Model):
	id_aula=models.AutoField(primary_key=True)
	aula=models.CharField(max_length=35)
	curso=models.ForeignKey('Curso')
	capacidadmax=models.IntegerField()
	capacidadm=models.IntegerField()
	capacidadv=models.IntegerField()
	paralelom=models.CharField(max_length=35)
	paralelov=models.CharField(max_length=35)
	capacidadpupitres=models.IntegerField()

	def __str__(self):
		return 'Aula: {}:{}'.format(self.id_aula, self.capacidadmax)

class AulaInstitucion(models.Model):
	id_aulaInstitucion=models.AutoField(primary_key=True)
	aula=models.ForeignKey('Aula')
	institucion=models.ForeignKey('Institucion')

	def __str__(self):
		return 'Aula-institucion: {}:{}'.format(self.aula, self.institucion)

class CapacidadEstandar(models.Model):
	id_capacidad=models.AutoField(primary_key=True)
	capacidad=models.IntegerField()
	nivelestudio=models.CharField(max_length=35)

	def __str__(self):
		return 'CapacidadEstandar: {}:{}'.format(self.nivelestudio, self.capacidad)

class ProblemasAsignacion(models.Model):
	id_problemas=models.AutoField(primary_key=True)
	estudiante=models.ForeignKey('Estudiante')
	problema=models.CharField(max_length=40)	

	def __str__(self):
		return 'Problemas asignacion: {}:{}'.format(self.estudiante, self.problema)