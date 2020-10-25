<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>ModificarProducto</title>
</head>

<%
	/*Hoja de estilo */
%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">


<%
	/* Se puede visualizar todos los clientes */
%>
<body>
	<div class="container well/">
		<h1>Modificar Producto</h1>
	</div>
	
<div class="espacio/">

	<div class="container well/">

		<form action="ModificarProducto.jsp" method="get" class="form-control"
			style="width: 300px; height: 150px">

			<div class="form-group">
				<label for="p">Ingrese Codigo de Producto</label> <input type="text"
					class="form-control" id="Producto" name="Producto">

				<button type="submit" class="btn btn-primary">Buscar Producto</button>
			</div>
		</form>
	</div>


<div class="container well/">

		<form class="form-control"
			style="width: 400px; height: 270px">

			<div class="form-group">
				<label for="n">Nombre</label> <input type="text"
					class="form-control" id="Nombre" name="Nombre">
					
				<label for="n">Tipo de Producto</label> <input type="text"
					class="form-control" id="TipoProducto" name="TipoProducto">
				
				<label for="n">Tipo de Producto</label> <input type="text"
					class="form-control" id="TipoProducto" name="TipoProducto">
					
				<button type="submit" class="btn btn-primary">Modificar</button>
			</div>
		</form>
	</div>


	<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>

</div>
</body>
</html>