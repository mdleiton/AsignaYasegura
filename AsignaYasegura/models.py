from __future__ import unicode_literals
from django.contrib.auth.models import User
from django.db import models,connection
from django.utils import timezone

class Usuario(models.Model):
    ci= models.TextField(max_length=10)
    nombre = models.TextField(max_length=100)
    apellidos = models.TextField(max_length=100)
    usuario = models.OneToOneField(User)
    direccion=models.CharField(max_length=100)
    telefono=models.CharField(max_length=13)
    correo=models.EmailField()

class Roles(models.Model):
	id_rol=models.AutoField(primary_key=True)
	rol=models.CharField(max_length=200)
	descripcion=models.CharField(max_length=200)
	
	def __str__(self):
		return self.rol


class Usuariorol(models.Model):
	id_usuario_rol=models.AutoField(primary_key=True)
	usuario=models.ForeignKey('Usuario')
	rol=models.ForeignKey('Roles')

	def __str__(self):
		return 'UsuarioRol: {}:{}'.format(self.id_rol.rol, self.id_usuario.usuario)
