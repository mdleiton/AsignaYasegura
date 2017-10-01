-- plantilla para registro de una sola institucion
-- inf director
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('09345261382','mauricio','leiton','0989389265','mau_leiton96@hotmail.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Maria Luisa Luque de Sotomayor','c1','av. paquisha y av. Jaime Roldós Aguilera,Playas,Guayas,Ecuador','09345261382',12,-2.637659900731591,-80.38962849999996);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (1,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (1,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (1,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (1,10);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (1,11);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (1,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(54,54,10.5,10.5,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(54,54,10.5,10.5,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(54,54,10.5,10.5,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(54,54,10.5,10.5,1);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo) VALUES (1,1,1,30,'Paralelo A');
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo) VALUES (2,1,1,30,'Paralelo B');
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo) VALUES (3,1,2,30,'Paralelo A');
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo) VALUES (4,1,2,30,'Paralelo B');
