-- plantilla para registro de una institucion
-- registro superusuario desde id 2
User.objects.create_superuser(username="padre",email="mau_leiton96@hotmail.com", password="123456789A")

-- inf padre de familia
INSERT INTO AsignaYasegura_usuario(ci,nombre,apellidos,usuario_id,direccion,telefono,correo) VALUES('0943223S89','mDDD','leiDDn',2,'daDD de villamil','0989385565','mau_leiton6@hotmail.Com');
INSERT INTO AsignaYasegura_usuariorol(usuario_id,rol_id) VALUES ('0943223S89',2);
-- condicionp(Vivienda propia,Vivienda cedida,Vivienda alquilada,Vivienda compartida,Vivienda encomendada')
-- parentescop(A nombre mio,Padres,Hermanos,Tíos,No familiar,Amigo,Sobrino,Abuelos)
INSERT INTO AsignaYasegura_padreinfo(condicionp,registropropiedad,parentescop,usuario_id,codigoluz,direccion,latitud,longitud) VALUES('Vivienda propia','354364656','Padres','0943223S89','876543456','data de villamil',2.7654,80.3456543);
-- inf estudiante : parentescorepresentante(Padres,Hermanos,Tíos,Abuelos)
INSERT INTO AsignaYasegura_estudiante(ci,curso_id,nombre,apellidos,direccion,representante_id,nacimiento,parentescorepresentante) VALUES('09893843265',2,'juanito','perez','data de villamil,playas,ecuador','0943223S89','2007-01-01 10:00:00','Padres');
-- si el estudiante posee alguna discapacidad
INSERT INTO AsignaYasegura_discapacidad(codigo,discapacidad,porcentaje,estudiante_id) VALUES ('0985745','sindrome down',45.5,'0943223S89');

-- estudiante id 3
