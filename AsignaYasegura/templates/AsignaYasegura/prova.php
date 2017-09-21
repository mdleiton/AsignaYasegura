<html>
	<head>
		<title>Adquisición de datos</title>
		<LINK rel=stylesheet type="text/css" href="nuevo.css">
		<meta name="author" content="Triviño Juan" />
        <div id=titulo>
        	<img src="imagenes/21769831_379017482518757_1986918513_n.png" align="left">
            <img src="imagenes/21850202_379017485852090_1048059339_n.png" align="right" width="250" height="125">
			<br><font color="#000066"><strong>ADQUISICIÓN DE DATOS</strong></font><br>
    	</div>
        <script>
			function controla(f)
			{
				if(f.checked==false)
				{
					document.getElementById('contr1').checked=false;
					document.getElementById('contr1').disabled=true;
					document.getElementById('contr2').checked=false;
					document.getElementById('contr2').disabled=true;
					document.getElementById('contr3').checked=false;
					document.getElementById('contr3').disabled=true;
					document.getElementById('contr4').checked=false;
					document.getElementById('contr4').disabled=true;
					document.getElementById('contr5').checked=false;
					document.getElementById('contr5').disabled=true;
					document.getElementById('contr6').checked=false;
					document.getElementById('contr6').disabled=true;
					document.getElementById('contr7').checked=false;
					document.getElementById('contr7').disabled=true;
					document.getElementById('contr8').checked=false;
					document.getElementById('contr8').disabled=true;
					document.getElementById('contr9').checked=false;
					document.getElementById('contr9').disabled=true;
					document.getElementById('contr10').checked=false;
					document.getElementById('contr10').disabled=true;
					document.getElementById('contr11').checked=false;
					document.getElementById('contr11').disabled=true;
					document.getElementById('contr12').checked=false;
					document.getElementById('contr12').disabled=true;
					document.getElementById('contr13').checked=false;
					document.getElementById('contr13').disabled=true;
					document.getElementById('contr14').checked=false;
					document.getElementById('contr14').disabled=true;
					document.getElementById('contr15').checked=false;
					document.getElementById('contr15').disabled=true;
					document.getElementById('contr16').checked=false;
					document.getElementById('contr16').disabled=true;
					document.getElementById('contr17').checked=false;
					document.getElementById('contr17').disabled=true;
					document.getElementById('contr18').checked=false;
					document.getElementById('contr18').disabled=true;
				}
				else
				{
					document.getElementById('contr1').disabled=false;
					document.getElementById('contr2').disabled=false;
					document.getElementById('contr3').disabled=false;
				}
			}
		</script>
        <script>
			function controlb(f)
			{
				if(f.checked==false)
				{
					document.getElementById('contr4').checked=false;
					document.getElementById('contr4').disabled=true;
					document.getElementById('contr5').checked=false;
					document.getElementById('contr5').disabled=true;
					document.getElementById('contr6').checked=false;
					document.getElementById('contr6').disabled=true;
					document.getElementById('contr7').checked=false;
					document.getElementById('contr7').disabled=true;
					document.getElementById('contr8').checked=false;
					document.getElementById('contr8').disabled=true;
					document.getElementById('contr9').checked=false;
					document.getElementById('contr9').disabled=true;
					document.getElementById('contr10').checked=false;
					document.getElementById('contr10').disabled=true;
					document.getElementById('contr11').checked=false;
					document.getElementById('contr11').disabled=true;
					document.getElementById('contr12').checked=false;
					document.getElementById('contr12').disabled=true;
					document.getElementById('contr13').checked=false;
					document.getElementById('contr13').disabled=true;
					document.getElementById('contr14').checked=false;
					document.getElementById('contr14').disabled=true;
					document.getElementById('contr15').checked=false;
					document.getElementById('contr15').disabled=true;
					document.getElementById('contr16').checked=false;
					document.getElementById('contr16').disabled=true;
					document.getElementById('contr17').checked=false;
					document.getElementById('contr17').disabled=true;
					document.getElementById('contr18').checked=false;
					document.getElementById('contr18').disabled=true;
				}
				else
				{
					document.getElementById('contr4').disabled=false;
					document.getElementById('contr5').disabled=false;
					document.getElementById('contr6').disabled=false;
					document.getElementById('contr7').disabled=false;
					document.getElementById('contr8').disabled=false;
					document.getElementById('contr9').disabled=false;
					document.getElementById('contr10').disabled=false;
					document.getElementById('contr11').disabled=false;
					document.getElementById('contr12').disabled=false;
					document.getElementById('contr13').disabled=false;
					document.getElementById('contr14').disabled=false;
					document.getElementById('contr15').disabled=false;
					document.getElementById('contr16').disabled=false;
					document.getElementById('contr17').disabled=false;
					document.getElementById('contr18').disabled=false;
				}
			}
		</script>    
	</head>
	<body>
    <br><br><br>
    <div id=izquierda style="float:left">
    	<form action=calculo.php method=get>
    	<div id=institucion>
			<br><font color="#CC0000"><strong>Información general de la Institución Educativa</strong></font><br><br>
            <table>
    			<tr><td>Nombre de la Institución:</td><td><input type=text name=nombreescuela size="35"></td></tr>
            	<tr><td>Distrito:</td><td><select name=distrito>
            	<option value="1 - Ximena 1"> 1 - Ximena 1</option>
            	<option value="2 - Ximena 2"> 2 - Ximena 2</option>
            	<option value="3 - Antigua Dirección Provincial de Educación-Colegio Vicente Rocafuerte"> 3 - Antigua Dirección 	Provincial de Educación-Colegio Vicente Rocafuerte</option>
            	<option value="4 - Portete"> 4 - Portete</option>
            	<option value="5 - Tarqui-Tenguel"> 5 - Tarqui-Tenguel</option>
            	<option value="6 - Bellavista-Mapasingue"> 6 - Bellavista-Mapasingue</option>
            	<option value="7 - Los Vergeles"> 7 - Los Vergeles</option>
            	<option value="8 - Monte Sinaí"> 8 - Monte Sinaí</option>
            	<option value="9 - Chongón"> 9 - Chongón</option>
            	<option value="10 -  Gómez Rendón"> 10 -  Gómez Rendón</option>
            	<option value="23 - Samborondón"> 23 - Samborondón</option>
            	<option value="24 - Durán"> 24 - Durán</option></select></td></tr>
    			<tr><td>Dirección:</td><td><input type=text name=direccion size="35"></td></tr>
                <tr><td>Tipo de instrucción:</td><td>Primaria <input type="checkbox" name="tipo[]" value="primaria">
                	Secundaria <input type="checkbox" name="tipo[]" value="secundaria" onClick="controla(this)"></td></tr>
            </table>
        </div>
        <div id=oferta>
        	<br><font color="#CC0000"><strong>Oferta académica</strong></font><br><br>
            <table>
            	<tr><td><strong>Bachillerato General Unificado</strong></td><td></td><td><input type="checkbox" id="contr1" name="tipob[]" value="Bachillerato General Unificado" disabled></td></tr>
            	<tr><td><strong>Bachillerato Internacional</strong></td><td></td><td><input type="checkbox" id="contr2" name="tipob[]" value="Bachillerato Internacional" disabled></td></tr>
            	<tr><td><strong>Bachillerato Técnico</strong></td><td></td><td><input type="checkbox" id="contr3" name="tipob[]" value="Bachillerato Técnico" disabled onClick="controlb(this)"></td></tr>
                <tr><td>Producción agropecuaria</td><td><input type="checkbox" id="contr4" name="especializacion[]" value="Producción agropecuaria" disabled></td></tr>
                <tr><td>Conservación y manejo de recursos naturales</td><td><input type="checkbox" id="contr5" name="especializacion[]" value="Conservación y manejo de recursos naturales" disabled></td></tr>
                <tr><td>Industrialización de productos alimenticios</td><td><input type="checkbox" id="contr6" name="especializacion[]" value="Industrialización de productos alimenticios" disabled></td></tr>
                <tr><td>Promotor en recreación y deportes</td><td><input type="checkbox" id="contr7" name="especializacion[]" value="Promotor en recreación y deportes" disabled></td></tr>
                <tr><td>Electromecánica automotriz</td><td><input type="checkbox" id="contr8" name="especializacion[]" value="Electromecánica automotriz" disabled></td></tr>
                <tr><td>Chapisteria y pintura</td><td><input type="checkbox" id="contr9" name="especializacion[]" value="Chapisteria y pintura" disabled></td></tr>
                <tr><td>Climatización</td><td><input type="checkbox" id="contr10" name="especializacion[]" value="Climatización" disabled></td></tr>
                <tr><td>Electrónica de consumo</td><td><input type="checkbox" id="contr11" name="especializacion[]" value="Electrónica de consumo" disabled></td></tr>
                <tr><td>Aplicación de proyectos de producción</td><td><input type="checkbox" id="contr12" name="especializacion[]" value="Aplicación de proyectos de producción" disabled></td></tr>
                <tr><td>Fabricación y montaje de muebles</td><td><input type="checkbox" id="contr13" name="especializacion[]" value="Fabricación y montaje de muebles" disabled></td></tr>
                <tr><td>Industria de la confección</td><td><input type="checkbox" id="contr14" name="especializacion[]" value="Industria de la confección" disabled></td></tr>
                <tr><td>Calzado y marroquinería</td><td><input type="checkbox" id="contr15" name="especializacion[]" value="Calzado y marroquinería" disabled></td></tr>
                <tr><td>Mecanizado y construcciones metálicas</td><td><input type="checkbox" id="contr16" name="especializacion[]" value="Mecanizado y construcciones metálicas" disabled></td></tr>
                <tr><td>Instalaciones, equipos y máquinas eléctricas</td><td><input type="checkbox" id="contr17" name="especializacion[]" value="Instalaciones, equipos y máquinas eléctricas" disabled></td></tr>
                <tr><td>Industria textil</td><td><input type="checkbox" id="contr18" name="especializacion[]" value="Industria textil" disabled></td></tr>	
            </table>
        </div>
      </div>
      <div id=derecha>
      	 <did id=rector>
        	<br><font color="#CC0000"><strong>Datos del representante legal de la Institución</strong></font><br><br>
            <table>
            	<tr><td>Nombre de el/la director/a:</td><td><input type=text name=nombrerector size="60"></td></tr>
                <tr><td>Número de cédula:</td><td><input type=text name=cedularector></td></tr>
                <tr><td>Número de teléfono:</td><td><input type=text name=numerorector></td></tr>
                <tr><td>Correo electrónico:</td><td><input type=text name=correorector size="50"></td></tr>
            </table>
        </div> 
        <div id=complementaria>
        	<br><font color="#CC0000"><strong>Información complementaria</strong></font><br><br>
            <table>
            	<tr><td>Número de aulas disponibles:</td><td><input type=value name=aulas></td></tr>
                <tr><td>Jornada vespertina:</td><td>Sí<input type="radio" name="jornada" value="si"></td><td>No<input type="radio" name="jornada" value="No"></td></tr>
            </table>
            <br><br>
            <input type=submit value=Aceptar>     <input type=reset value=Cancelar>
		</form>
        </div>  
    </div>
    <div id=pdp>
    </div>
	</body>
</html>