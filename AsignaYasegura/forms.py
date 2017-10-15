# coding=utf-8
from django import forms
from django.contrib.auth.forms import User
from django.db import models
from AsignaYasegura.models import *

condicionVivienda = (
    ('1', 'Vivienda propia'),
    ('2', 'Vivienda cedida'),
    ('3', 'Vivienda alquilada'),
    ('4', 'Vivienda compartida'),
    ('5', 'Vivienda encomendada'),
)

parentescoPropietario = (
    ('1', 'A nombre mio'),
    ('2', 'Padres'),
    ('3', 'Hermanos'),
    ('4', 'Tíos'),
    ('5', 'No familiar'),
    ('6', 'Amigo'),
    ('7', 'Sobrino'),
    ('8', 'Abuelos'),
)


class UsuarioForm(forms.ModelForm):
    usuario=forms.CharField(max_length=20)
    contrasena=forms.CharField(max_length=200,widget=forms.PasswordInput,label='Contraseña')
    permisos = forms.ModelMultipleChoiceField(queryset=Permiso.objects.all(),widget=forms.CheckboxSelectMultiple())
    widgets = {
            'contrasena': forms.PasswordInput(),
        }
    class Meta:
        model = Usuario
        fields = "__all__" 
        exclude = ['usuario',]
        labels = {
            'nombre' : 'Nombres',
            'direccion' : 'Dirección',
            'telefono' : 'Teléfono',
        }

class UsuariosListForm(forms.ModelForm):
    permisos = forms.ModelMultipleChoiceField(queryset=Permiso.objects.all(),widget=forms.CheckboxSelectMultiple())
    class Meta:
        model = Usuario
        fields = "__all__"
        exclude = ['usuario',]
        labels = {
            'nombre' : 'Nombres',
            'direccion' : 'Dirección',
            'telefono' : 'Teléfono',
        }

class AdminForm(forms.ModelForm):
    usuario=forms.CharField(max_length=20)
    class Meta:
        model = Usuario
        fields = "__all__" 
        exclude = ['usuario',]
        labels = {
            'nombre' : 'Nombres',
            'direccion' : 'Dirección',
            'telefono' : 'Teléfono',
        }

class PPFFForm(forms.ModelForm):
    usuario=forms.CharField(max_length=20)
    contrasena=forms.CharField(max_length=200,widget=forms.PasswordInput,label='Contraseña')
    condicionp=forms.ChoiceField(choices=condicionVivienda,label='Condición de vivienda')
    registro=forms.CharField(max_length=100,label='Registro propiedad o arrendamiento ')
    parentescop=forms.ChoiceField(choices=parentescoPropietario,label='Relación con dueño de servicio E')
    codigoluz=forms.CharField(max_length=100,label='Cód. servicio eléctrico')
   
    widgets = {
            'contrasena': forms.PasswordInput(),
        }
    class Meta:
        model = Usuario
        fields = "__all__" 
        exclude = ['usuario',]
        labels = {
            'nombre' : 'Nombres',
            'direccion' : 'Dirección',
            'telefono' : 'Teléfono',
        }
