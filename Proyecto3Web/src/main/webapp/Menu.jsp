<html>
</head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>
<title>Menu</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<div class="container well">

	<h1>Menu</h1>
	</body>

	<div class="container well">
	<%/* Encontraremos el Menu princial */%>

	</div>
	<div class="container well">

		<div class="d-flex">
			<div class="dropdown mr-1">
				<button type="button" class="btn btn-secondary dropdown-toggle"
					id="dropdownMenuOffset" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false" data-offset="20,20">Cliente</button>
				<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
						<a class="dropdown-item" href="#">Ver todos los clientes</a> <a
						class="dropdown-item" href="#">Ver todos los clientes individual</a> <a 
						class="dropdown-item" href="#">Ver todos los clientes empresa</a> <a 
						class="dropdown-item" href="#">Modificar Cliente Empresa</a> <a
						class="dropdown-item" href="#">Modificar Cliente Individual</a> <a
						class="dropdown-item" href="#">Eliminar Cliente Individual</a> <a
						class="dropdown-item" href="#">Eliminar Cliente Empresa</a> <a
						class="dropdown-item" href="#">Buscar Cliente Individual</a> <a
						class="dropdown-item" href="#">Buscar Cliente Empresa</a> <a
						class="dropdown-item" href="#">Agregar Cliente Individual</a> <a 
						class="dropdown-item" href="#">Agregar Cliente Empresa</a>
				</div>
			</div>
			<div class="d-flex">
				<div class="dropdown mr-1">
					<button type="button" class="btn btn-secondary dropdown-toggle"
						id="dropdownMenuOffset" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false" data-offset="10,20">Factura</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
						<a class="dropdown-item" href="#">Realizar Factura</a> <a
						   class="dropdown-item" href="#">Ver todas las facturas</a> <a
						   class="dropdown-item" href="#">Buscar Factura</a>
					</div>
				</div>
				<div class="d-flex">
					<div class="dropdown mr-1">
						<button type="button" class="btn btn-secondary dropdown-toggle"
							id="dropdownMenuOffset" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" data-offset="10,20">Inventario</button>
						<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
							<a class="dropdown-item" href="#">Ver todos los producto</a> <a
								class="dropdown-item" href="#">Modificar Producto</a> <a 
								class="dropdown-item" href="#">Agregar producto</a> <a
								class="dropdown-item" href="#">Eliminar Producto</a><a 
								class="dropdown-item" href="#">Ver Producto a detalle</a>
						</div>
					</div>
					<div class="d-flex">
						<div class="dropdown mr-1">
							<button type="button" class="btn btn-secondary dropdown-toggle"
								id="dropdownMenuOffset" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false" data-offset="10,20">Compras</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuOffset">
								<a class="dropdown-item" href="#">Realizar orden de compra</a> <a
								   class="dropdown-item" href="#">Ver todas las compras</a> <a
								   class="dropdown-item" href="#">Buscar orden de compra</a> <a
								   class="dropdown-item" href="#">Confirmar compra</a> <a
								   class="dropdown-item" href="#">Imprimir orden de compra</a>
							</div>
						</div>
					
					<div class="container well">

						<button type="submit" class="btn btn-primary">Salir</button>
					</div>

					<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
						integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
						crossorigin="anonymous"></script>
					<script
						src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
						integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
						crossorigin="anonymous"></script>

</body>
</html>

