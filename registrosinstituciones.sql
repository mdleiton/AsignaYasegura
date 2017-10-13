-- inf director     						SIMON BOLIVAR
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111111','Ernesto','Toledo','0984830623','ed@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Tecnologico Simon Bolivar','c1','Av. de las Américas y Plaza Dañin,Guayaquil,Guayas,Ecuador','1111111111',9,-2.1739218,-79.8950192);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (1,2); 
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (1,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (1,5);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (1,7);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (1,13);                         
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (1,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,9,7,1);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,29,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,30,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,31,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,35,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,36,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,37,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,53,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,54,30,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,55,30,'Paralelo A',30);
-- plantilla para registro de una sola institucion
-- inf director							AGUIRRE ABAD
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111112','Norka','Gualancañay','0993291744','nk@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('UNIDAD EDUCATIVA FISCAL AGUIRRE ABAD','c1','Av. Luis Cordero y  Sufragio libre,Guayaquil,Guayas,Ecuador','1111111112',6,-2.1766914,-79.8896491);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (2,2);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (2,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (2,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (2,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (2,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,2);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,10,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							PROVINCIA DE TUNGURAHUA
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111113','Maricruz','Alvarado','0983673861','mara@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Provincia de Tungurahua','c1','Sauces II Mz. 74 - 75,Guayaquil,Guayas,Ecuador','1111111113',9, -2.139508437094389,-79.88636612892151);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (3,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (3,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (3,1);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (3,5);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (3,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (3,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,3);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,17,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,18,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,19,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,29,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,30,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,31,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							PROVINCIA DE BOLIVAR
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111114','Amparo','Merchan','0998081634','ammer@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Provincia de Bolivar','c1','Sauces V  Centro Comunal,Guayaquil,Guayas,Ecuador','1111111114',9,-2.1231658,-79.8935574);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (4,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (4,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (4,4);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (4,15);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (4,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (4,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,4);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,26,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,27,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,28,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,59,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,60,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,61,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							COLEGIO PROVINCIA DEL CARCHI 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111115','Narcisa','Arias','0984771244','nari@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Provincia Del Carchi','c1','Av. Luis Cordero y  Sufragio libre,Guayaquil,Guayas,Ecuador','1111111115',9,-2.1264297,-79.8991408);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (5,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (5,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (5,2);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (5,12);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (5,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (5,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,5);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,20,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,21,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,22,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,50,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,51,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,52,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							COLEGIO FISCAL ISMAEL PEREZ PAZMIÑO  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111116','Teofilo','Delgado','0997169830','teofi@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscarl Ismael Perez Pasmiño','c1','Alborada 3ra. Etapa Av. José María Roura,Guayaquil,Guayas,Ecuador','1111111116',6,-2.1433977,-79.9013427);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (6,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (6,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (6,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (6,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,6);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,13,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							FRANCISCO CAMPOS COELLO 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111117','Kerly','Coloma','0993656090','keco@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio fiscal Campos Coello','c1','Cdla. Atarazana Mz. F2 F3,Guayaquil,Guayas,Ecuador','1111111117',12,-2.176645,-79.8867687);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (7,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (1,3);
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (1,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (7,3);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (7,8);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (7,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (7,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,7);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,23,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,24,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,25,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,38,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,39,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,40,49,'Paralelo A',45);
-- inf director						COLEGIO FISCAL  JOSE JOAQUIN PINO ICAZA 									
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111118','Orfa','Rodriguez','0997845958','jjp@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Jose Joaquin Pino Icaza','c1','Cdla. Atarazana Mz. L3 Villa 1,Guayaquil,Guayas,Ecuador','1111111118',12,-2.154805,-79.9015574);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (8,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (8,3);
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (8,2);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (8,4);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (8,5);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (8,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (8,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,8);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,14,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,15,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,16,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,26,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,27,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,28,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,29,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,30,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,31,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director								COLEGIO CLEMENTE YEROVI INDABURU 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111119','Domingo','Alava','0939207884','cly@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Clemente Yerovi Indaburu','c1','Sauces II Centro Comunal,Guayaquil,Guayas,Ecuador','1111111119',9,-2.1367692,-79.8910976);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (9,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (9,1);
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (9,3);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (9,13);                        
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (9,0);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (9,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,9);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,53,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,54,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,55,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA FISCAL 245 JOSE ANTONIO GALLEGOS OROZCO 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111120','Vicenta','Tejada','0989906653','joant@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Jose Antonio Gallegos','c1','Sauces II Centro Comunal,Guayaquil,Guayas,Ecuador','1111111120',7,-2.1368653,-79.8893563);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (10,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                   
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (10,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,10);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- inf director							ESCUELA ENMA ESPERANZA ORTIZ 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111121','Narcisa','Rendon','0987449656','enmar@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Enma Esperanza Ortiz','c1','Sauces VI Mz. 259 villa 8(Área comunal),Guayaquil,Guayas,Ecuador','1111111121',14,-2.1264297,-79.8991408);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (11,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (11,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (11,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,11);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,1,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							ESC. FISCAL MIXTA # 357 ENRIQUE GRAU RUIZ 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111122','Gioconda','Alvarado',' 0994082551','egra@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Enrique Grau Ruiz','c1','Av. 3a y Av. 2a (Urdesa Norte),Guayaquil,Guayas,Ecuador','11111111122',7,-2.1630436,-79.9061401);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (12,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (12,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,12);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							JUAN BENIGNO VELA  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111123','Norma','Orellana','O939174662','njbo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Juan Benigno Vela','c1','Av. 3a y Av. 2a (Urdesa Norte),Guayaquil,Guayas,Ecuador','11111111123',7,-2.1630436,-79.9061401);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (13,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (13,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,13);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion				Ab. Nestor perez Valencia  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111124','Normita','Orellana','O939174652','neorm@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Ab. Nestor Perez Valencia','c1','Complejo deportivo Tres Cerritos: Cdla. Ietel,Guayaquil,Guayas,Ecuador','11111111124',7,-2.150202953216465,-79.89589601755142);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (14,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (14,1);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,14);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion				Colegio Luis Bonnini Pino  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111125','Hector','Alvarez','O986975562','lbo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Colegio Fiscal Luis Bonnini Pino','c1','Complejo deportivo Tres Cerritos: Cdla. Ietel,Guayaquil,Guayas,Ecuador','11111111125',6,-2.150202953216465,-79.89589601755142);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (15,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (6,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (15,2);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,15);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,11,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,12,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,13,49,'Paralelo A',35);
-- inf director							ESCUELA CARMEN WITHER NAVARRO 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111126','Mercedes','Silva','0980536343','camed@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Carmen Wither','c1','Sauces III Mz. 160 F1 (Centro Comunal),Guayaquil,Guayas,Ecuador','1111111126',7,-2.1278556,-79.8917803);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (16,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (16,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,16);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- inf director							Escuela Carlos Garbay 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111127','Nicolas','Vasquez','0984871730','carga@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Carlos Garbay','c1','Sauces III Mz. 160 F1 (Centro Comunal),Guayaquil,Guayas,Ecuador','1111111127',7,-2.1278556,-79.8917803);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (17,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (17,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,17);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA FISCAL DR. JOSE MIGUEL GARCIA MORENO  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111128','Nelson','Fajardo','0986143133','nefa@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Dr. Jose Miguel Garcia Moreno','c1','Sauces V  Centro Comunal,Guayaquil,Guayas,Ecuador','1111111128',7,-2.1232454,-79.8919811);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (18,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (18,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,18);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA  LUIS SALGADO CARRILLO  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111129','Jose','Aviles','0988051222','josav@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela Fiscal Luis Salgado Carrillo ','c1','Sauces V  Centro Comunal,Guayaquil,Guayas,Ecuador','1111111129',7,-2.1232454,-79.8919811);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (19,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (19,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,19);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "EMILIO CLEMENTE HUERTA"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111130','Consuelo','Espinoza','0994427766','cones@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Emilio Clemente Huerta','c1','Piedrahita # 100 y Tulcán,Guayaquil,Guayas,Ecuador','1111111130',7,-2.1847264,-79.8947824);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (20,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (20,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,20);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',45);

-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "ABDON CALDERON"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111131','Nancy','Hidalgo','2564910','abcal@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Abdon Calderon','c1','Jacinto Morán Buitrón # 200 y Diego Noboa,Guayaquil,Guayas,Ecuador','1111111131',10,-2.1832617,-79.8767183);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (21,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (21,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,21);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',40);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "ASSAD BUCARAM"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111132','Julio','Mejia','42555078','assbuc@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Media Fiscal ASSAD BUCARAM','c1','Plaza Colon N° 200 y diego noboa barrio las peñas,Guayaquil,Guayas,Ecuador','1111111132',3,-2.1832617,-79.8767183);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (22,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (20,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,22);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,22);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,22);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',40);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "PEDRO FRANCO DAVILA"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111133','Jairo','Gomez','2384320','pefran@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal PEDRO FRANCO DAVILA','c1','Av. Enrique Ortega Moreira e Ilanes Urdesa Central,Guayaquil,Guayas,Ecuador','1111111133',20,-2.1615896,-79.9122863);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (23,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (23,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (23,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (23,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,23);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,2,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,2,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,2,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (15,2,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (16,2,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (17,2,7,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (18,2,8,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (19,2,9,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (20,2,10,49,'Paralelo A',40);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "DON RUPERTO ARTETA MONTES"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111134','Cesar','Leon','00000000','rupert@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal RUPERTO ARTETA MONTES','c1','Sauces VIII Mz. 485 F,Guayaquil,Guayas,Ecuador','1111111134',14,-2.1290965,-79.9030694);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (24,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (24,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (24,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,24);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,2,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,2,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,2,5,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,2,6,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,7,49,'Paralelo A',35);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "HUANCAVILCA"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111135','Franklin','Kabay','2321234','huancav@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Huancavilca','c1','Rocafuerte 128 y General Vernaza,Guayaquil,Guayas,Ecuador','1111111135',15,-2.1841896496019833,-79.87929249190218);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (25,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (25,3);
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (25,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (25,5);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (25,9);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (25,12);                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (25,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (25,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,25);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,29,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,30,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,31,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,41,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,42,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,43,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,51,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,52,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,53,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,2,8,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,9,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (15,2,10,49,'Paralelo A',40);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "CALICUCHIMA"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111136','Gladys','Recalde','2175740','col.calli@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Calicuchima','c1','Sauces 8 Area comunal,Guayaquil,Guayas,Ecuador','1111111136',18,-2.1294132,-79.9029259);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (26,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (26,3);
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (26,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (26,4);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (26,8);
INSERT INTO AsignaYasegura_institucion_carreras(institucion_id,carrerastecnicas_id) VALUES (26,10);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (26,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (26,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,26);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,26,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,27,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,28,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,1,38,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,1,39,49,'Paralelo A',45); 
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (15,1,40,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (16,1,44,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (17,1,45,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (18,1,46,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "SIMON BOLIVAR"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111137','Maria','Teresa','2241341','sbol@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Simon Bolivar','c1','Cdla. Álamos norte Mz. 16 Solar 1,Guayaquil,Guayas,Ecuador','1111111137',10,-2.1350343,-79.9130856);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (27,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (27,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (27,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,27);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',45);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "Cristobal Colon"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111138','Mercedes','Victoria','2241341','crisbo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Cristobal Colon','c1','Cdla. Álamos norte Mz. 16 Solar 1,Guayaquil,Guayas,Ecuador','1111111138',10,-2.1350343,-79.9130856);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (28,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (28,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (28,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,28);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',45);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "PRESIDENTE VELASCO IBARRA "
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111139','Beatriz','Vera','042657485','velaib@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Presidente Velasco Ibarra','c1','4° pasaje 2 NE O 7 callejon 11 NE y 2° callejón NE,Guayaquil,Guayas,Ecuador','1111111139',7,-2.174683,-79.8860928);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (29,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (29,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,29);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- plantilla para registro de una sola institucion
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "REPÚBLICA DE EL SALVADOR"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111140','Jorge','Peñaranda','2130928','redesa@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal REPÚBLICA DE EL SALVADOR','c1','Coop. El limonal Mz. 2 394 S-90,Guayaquil,Guayas,Ecuador','1111111140',10,-2.1306622,-79.8805843);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (30,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (30,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (30,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (30,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,30);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,7,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,2,10,49,'Paralelo A',45);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "MANUELA CAÑIZAREZ "
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111141','Manuela','Cañizares','2130929','manca@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal MANUELA CAÑIZAREZ ','c1','Sauces 1, Área Comunal entre Mz. 14 y 15,Guayaquil,Guayas,Ecuador','1111111141',14,-2.2091903,-79.9314997);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (31,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (31,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (31,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,31);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,1,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,2,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,2,3,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,2,4,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,2,5,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,2,6,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,7,49,'Paralelo A',45);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "JOAQUIN GALLEGOS LARA"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111142','Guido','Andrade','2130429','joaq@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal JOAQUIN GALLEGOS LARA','c1','Sauces IV Mz.378 Parqueadero central - UPC 96,Guayaquil,Guayas,Ecuador','1111111142',7,-2.1244901,-79.8859449);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (32,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (32,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "ANA JOSEFINA SALAZAR DIAZ"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111143','Ronak','Navarrete','2623093','anjo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal ANA JOSEFINA SALAZAR DIAZ','c1','Sauces IV Mz.378 Parqueadero central - UPC 96,Guayaquil,Guayas,Ecuador','1111111143',7,-2.1244901,-79.8859449);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (33,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (33,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,32);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,2,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,2,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,2,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,2,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,2,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,2,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,2,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "ABEL GILBERT PONTON"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111144','Susana','Soriano','2647275','abgil@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal ABEL GILBERT PONTON','c1','Sauces VII,Guayaquil,Guayas,Ecuador','1111111144',7,-2.1338656,-79.8900763);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (34,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (34,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,34);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA "GABRIELA MISTRAL"
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111145','Lourdes','Chiriboga','2294053','gabim@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal GABRIELA MISTRAL','c1','Cdla. Albatros Av. Carlos Luis Plaza Dañín y calle 1ra.,Guayaquil,Guayas,Ecuador','1111111145',7,-2.1709404,-79.8930812);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (35,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (35,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,35);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA GRAL. LEÒN DE FEBRES CORDERO
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111146','Anita','Amaya','2395618','fefem@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal GRAL. LEÒN DE FEBRES CORDERO','c1','Cdla. Simón Bolívar calle 14A-N-E y 2o Pasaje 2A,Guayaquil,Guayas,Ecuador','1111111146',7,-2.2181241,-79.9398682);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (36,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (36,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,36);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA REPUBLICA DE ARGENTINA 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111147','Edith','Rodriguez','2294252','rearg@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal REPUBLICA DE ARGENTINA','c1','García Moreno y Manuel Galecio,Guayaquil,Guayas,Ecuador','1111111147',7,-2.1849937,-79.890283);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (37,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (37,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,37);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA ESPAÑA
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111148','Mirian','Salmeron','2392216','espa@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal España','c1','José de Antepara # 201 y Piedrahita,Guayaquil,Guayas,Ecuador','1111111148',7,-2.1843719,-79.889304);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (38,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (38,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,38);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA GONZALO LLONA
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111149','Mirian','Regalado','2233935','gollo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal GONZALO LLONA','c1','Rocafuerte y Buitrón,Guayaquil,Guayas,Ecuador','1111111149',7,-2.1822374,-79.8771893);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (39,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (39,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,39);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA DR. CARLOS LUIS PLAZA
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111150','Mirian','Regalado','2233935','gollo@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal DR. CARLOS LUIS PLAZA','c1','Rocafuerte y Buitrón,Guayaquil,Guayas,Ecuador','1111111150',7,-2.1822374,-79.8771893);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (40,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (40,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,40);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA CERRO DEL CARMEN
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111151','Byron','Baque','2233573','bbaque@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal CERRO DEL CARMEN','c1','Circunvalación Baquerizo Moreno 5ta. Vuelta,Guayaquil,Guayas,Ecuador','1111111151',7,-2.1822374,-79.8771893);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (41,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (41,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,41);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA UNIDAD EDUCATIVA FAE N° 2  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111152','Luisa','Isurieta','2293817','cerrocar@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal UNIDAD EDUCATIVA FAE N° 2','c1','Pedro Menéndez. Base Aérea Simón Bolívar y Plaza Dañín,Guayaquil,Guayas,Ecuador','1111111152',13,-2.0496771,-79.952391);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (42,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (42,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (42,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                   
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (42,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (42,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,2,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,2,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,2,13,49,'Paralelo A',45);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA Liceo Naval  
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111153','Fernando','Recalde','2212963','licena@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal Liceo Naval','c1','Pedro Menéndez Gilbert junto al Puente Nacional,Guayaquil,Guayas,Ecuador','1111111153',19,-2.1577667,-79.8779452);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (43,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (43,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (43,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                   
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (43,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (43,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,43);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (15,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (16,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (17,2,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (18,2,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (19,2,13,49,'Paralelo A',45);
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA TNTE. HUGO ORTIZ GARCES 
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111154','Fernando','Arevalo Marcial','2213268','tntehu@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal','c1',' Av. Fco. de Orellana frente a Samanes 6,Guayaquil,Guayas,Ecuador','1111111154',19,-2.1076171,-79.9061134);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (44,1);
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (44,2);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
INSERT INTO AsignaYasegura_institucion_ofertaacademica(institucion_id,ofertaacademica_id) VALUES (43,1);
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                   
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (44,1);
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (44,2);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,44);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (8,1,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (9,1,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (10,1,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (11,1,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (12,1,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (13,1,13,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (14,2,8,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (15,2,9,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (16,2,10,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (17,2,11,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (18,2,12,49,'Paralelo A',45);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (19,2,13,49,'Paralelo A',45); 
-- inf director							ESCUELA DE EDUCACIÓN BÁSICA MARIA MONTESSORI
INSERT INTO AsignaYasegura_director(ci,nombre,apellidos,telefono,correo) VALUES('1111111155','Luis','Aviles','2744059','marmon@yahoo.com');
-- inf general instituto ...distrito(debe ser el codigo),representante(ci del director),horariom (1 si es matutino o 0 sino lo es),horariom (0 si es vespertino o 0 sino lo es)
INSERT INTO AsignaYasegura_institucion(nombre,distrito_id,direccion,representante_id,naulas,latitud,longitud) VALUES ('Escuela de Educación Básica Fiscal MARIA MONTESSORI','c1','Cdla. Mantilla frente al cuartel militar,Guayaquil,Guayas,Ecuador','1111111155',7,-2.1264952,-79.9383744);
-- inf instruccion institucion_id(debe ser secuencial 1...2..3 ) , instruccion_id(1 primaria , 2 si tiene secundaria)
INSERT INTO AsignaYasegura_institucion_instruccion(institucion_id,instruccion_id) VALUES (42,1);
-- inf  oferta academica horariom (1 si es matutino o 0 sino lo es) , ofertaacademica_id(1 'Bachillerato General Unificado' o 2 'Bachillerato Internacional' o 3 'Bachillerato Técnico')
-- Inf de las carreras en caso que posea carreras tecnicas es autonumerico ver orden en registros.sql                       
-- Inf de las jornadas de la institucion(1 matutina , 2, vesterpina)
INSERT INTO AsignaYasegura_institucion_jornada(institucion_id,jornada_id) VALUES (42,1);
-- inf de las aulas de la institucion
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
INSERT INTO AsignaYasegura_aula(capacidadmax,capacidadpupitres,longitud,amplitud,institucion_id) VALUES(49,49,7,9,42);
-- inf de las aulas asociadas a las jornadas y niveles de estudio asociadas para sus respectivas capacidades
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (1,1,1,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (2,1,2,49,'Paralelo A',30);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (3,1,3,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (4,1,4,49,'Paralelo A',35);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (5,1,5,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (6,1,6,49,'Paralelo A',40);
INSERT INTO AsignaYasegura_aulajornadacurso(aula_id,jornada_id,curso_id,capacidad,paralelo,cupos) VALUES (7,1,7,49,'Paralelo A',40);
