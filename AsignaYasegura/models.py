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
		return 'Permiso: {}'.format(self.permiso)

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
	distrito = models.ForeignKey('Distrito')
	direccion = models.CharField(max_length=50)
	representante=models.OneToOneField('Director')
	naulas=models.IntegerField()
	ofertaacademica=models.ManyToManyField('OfertaAcademica')
	instruccion=models.ManyToManyField('Instruccion')
	carreras=models.ManyToManyField('CarrerasTecnicas')

	def __str__(self):
		return 'Institucion: {}:{}'.format(self.nombre, self.distrito)

class Distrito(models.Model):
	codigo= models.CharField(primary_key=True,max_length=35)
	nombre = models.CharField(max_length=35)
	zona = models.CharField(max_length=35)
	
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
	direccion=models.CharField(max_length=50)
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