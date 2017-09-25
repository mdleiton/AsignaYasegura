# coding=utf-8
from django import forms
from django.contrib.auth.forms import User
from django.db import models
from AsignaYasegura.models import *

class UsuarioForm(forms.ModelForm):
    usuario=forms.CharField(max_length=20)
    contrasena=forms.CharField(max_length=200,widget=forms.PasswordInput)
    permisos = forms.ModelMultipleChoiceField(queryset=Permiso.objects.all(),widget=forms.CheckboxSelectMultiple())
    widgets = {
            'contrasena': forms.PasswordInput(),
        }
    class Meta:
        model = Usuario
        fields = "__all__" 
        exclude = ['usuario',]

class UsuariosListForm(forms.ModelForm):
    permisos = forms.ModelMultipleChoiceField(queryset=Permiso.objects.all(),widget=forms.CheckboxSelectMultiple())
    class Meta:
        model = Usuario
        fields = "__all__"
        exclude = ['usuario',]

class AdminForm(forms.ModelForm):
    usuario=forms.CharField(max_length=20)
    contrasena=forms.CharField(max_length=200,widget=forms.PasswordInput)
    widgets = {
            'contrasena': forms.PasswordInput(),
        }
    class Meta:
        model = Usuario
        fields = "__all__" 
        exclude = ['usuario',]
