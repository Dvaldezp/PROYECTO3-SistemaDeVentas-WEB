<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>AgregarProducto</title>
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
		<h1>Agregar Producto</h1>
	</div>

	<div class="container well/">

		<form action="AgregarProducto.jsp" method="get"
			class="form-control" style="width: 350px; height: 400px">

			<div class="form-group">
				<label for="N">Nombre</label> <input type="text"
					class="form-control" id="Nombre" name="Nombre"> 
				<label for="Di">Descripcion</label><input
					type="text" class="form-control" id="Descripcion" name="Descripcion">
				<label for="producto">Tipo de Producto</label> <input type="text"
					class="form-control" id="producto" name="producto">
				 <label for="Stock">Stock</label> <input type="text"
					class="form-control" id="Stock" name="Stock">
					<label for="Precio">Precio</label> <input type="text"
					class="form-control" id="Precio" name="Precio">


				<button type="submit" class="btn btn-primary">Agregar</button>
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
	
		<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>
	</div>
	

</body>
</html>