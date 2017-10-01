-- plantilla para registro de una institucion
-- registro superusuario desde id 2
User.objects.create_superuser(username="padre",email="mau_leiton96@hotmail.com", password="123456789A")


-- inf padre de familia
INSERT INTO AsignaYasegura_usuario(ci,nombre,apellidos,usuario_id,direccion,telefono,correo) VALUES('0943221389','mDDD','leiDDn',2,'daDD de villamil','098938DD65','mau_leiton6@hotmail.Com');
INSERT INTO AsignaYasegura_usuariorol(usuario_id,rol_id) VALUES ('0943221389',2);
-- inf estudiante
INSERT INTO AsignaYasegura_estudiante(ci,curso_id,nombre,apellidos,direccion,telefono,representante_id,latitud,longitud) VALUES('0989389265',2,'juanito','perez','data de villamil,playas,ecuador','0989389265',2,-2.6380570007316573,-80.39295260000006);

-- estudiante id 3