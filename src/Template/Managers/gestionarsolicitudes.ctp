<!-- File: src/Template/Managers/gestionarsolicitades.ctp -->
<?php $this->layout = 'encargados'; ?>


				<!--Idea principal: Dos tablas. La de la izquierda muestra todos los voluntarios
				(ordenados si es posibles), y se incluye un boton "Solicitar" 
				La segunda tabla, tiene todos los voluntarios que les enviaron solicitud, pero todavia no aceptar
				Se pueden eliminar presionando el boton "Eliminar"-->


	<div class="container">
	
		<div class="main-row">
			<h1 class="text-center">Gestionar Solicitades</h1>
			<!--Primera Tabla: Voluntarios disponibles para enviar Solicitud -->
			<div class="col-md-6 text-center">
				<h3>Voluntarios Disponibles para Enviar Solicitudes</h3>
				<div style="overflow-y:scroll;max-height:500px;">
					<div class="tabla" >
						<div class="filaHeader">
							<!--Si se agregan nuevas elementos, hay que modificar el width--> 
							<div class="elementoHeader" style="width:20%">Nombre</div>
							<div class="elementoHeader" style="width:20%">Rut</div>
							<div class="elementoHeader" style="width:20%">Experiencia</div>
							<div class="elementoHeader" style="width:20%">Ubicacion Actual</div>
							<div class="elementoHeader" style="width:20%">Enviar Solicitud</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Enviar</button>
							</div>
						</div>																	
					</div>
				</div>
			</div>
			<!--Termina la primeras 6 columnas -->
			<div class="col-md-6 text-center">
			<!-- Inicia segunda tabla: Solicitudes sin aceptar -->
				<h3 class="text-center">Solicitudes Sin Aceptar a Voluntarios</h3>
				<div style="overflow-y:scroll;max-height:500px;">
					<div class="tabla">
						<div class="filaHeader">
							<!--Si se agregan nuevas elementos, hay que modificar el width--> 
							<div class="elementoHeader" style="width:20%">Nombre</div>
							<div class="elementoHeader" style="width:20%">Rut</div>
							<div class="elementoHeader" style="width:20%">Disponibilidad</div>
							<div class="elementoHeader" style="width:20%">Ubicacion Actual</div>
							<div class="elementoHeader" style="width:20%">Eliminar Solicitud</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>
						<div class="fila">
							<div class="elemento" style="width:20%">1</div>
							<div class="elemento" style="width:20%">2</div>
							<div class="elemento" style="width:20%">3</div>
							<div class="elemento" style="width:20%">4</div>
							<div class="elemento" style="width:20%">
								<button style="padding:0.5px 15px" class="btn btn-primary">Eliminar</button>
							</div>
						</div>	
					</div>
				</div>
			</div>
		<!-- Aqui termina el main-row -->
		</div>

	<!--Fin Container -->
	</div>

	<br>
	<br>
	<br>
	<br>	

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>