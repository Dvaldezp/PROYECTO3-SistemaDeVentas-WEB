<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>Eliminar Producto</title>
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
		<h1>Eliminar Producto</h1>
	</div>

	<div class="container well/">

		<form action="EliminarProducto.jsp" method="get" class="form-control"
			style="width: 300px; height: 150px">

			<div class="form-group">
				<label for="p">Ingrese Codigo de Producto</label> <input type="text"
					class="form-control" id="Producto" name="Producto">

				
			</div>
		</form>
	</div>



	<div class="container well/">
		<table class="table">
			<%
				/* Cargara los datos de los clientes de Empresa */
			%>
			<thead>
				<tr>
					<th scope="col">No.</th>
					<th scope="col">Nombre</th>
					<th scope="col">Descripcion</th>
					<th scope="col">Tipo de Producto</th>
					<th scope="col">Stock</th>
					<th scope="col">Precio</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Estuardo</td>
					<td>Candela</td>
					<td>Plus</td>
					<td>456</td>
					<td>30</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Estuardo</td>
					<td>Candela</td>
					<td>Plus</td>
					<td>456</td>
					<td>30</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Estuardo</td>
					<td>Candela</td>
					<td>Plus</td>
					<td>456</td>
					<td>30</td>
				</tr>
			</tbody>
		</table>
		<button type="submit" class="btn btn-primary">Eliminar </button>
	</div>

	<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>


</body>
</html>