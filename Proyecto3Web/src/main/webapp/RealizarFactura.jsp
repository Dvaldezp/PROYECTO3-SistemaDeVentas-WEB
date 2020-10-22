<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>RealizarFactura</title>
</head>

<%
	/*Hoja de estilo */
%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">


<%
	/* Mostrara la creacion de la factura */
%>
<body>
	<div class="container well/">
		<h1>Realizar Factura</h1>
	</div>

	<div class="container well/">

		<form action="AgregarClienteIndividual.jsp" method="get"
			class="form-control" style="width: 350px; height: 400px">

			<div class="espacio/">
				<div class="form-group">
					<label for="codigo">Ingrese el codigo del cliente</label> <input
						type="text" class="form-control" id="codigo" name="codigo">
					<button type="submit" class="btn btn-primary">Agregar
						Cliente</button>
				</div>

				<label for="factura">Ingrese codigo a facturar</label><input
					type="text" class="form-control" id="factura" name="factura">

				<label for="Cantidad">Cantidad</label> <input type="text"
					class="form-control" id="Cantidad" name="Cantidad">

				<button type="submit" class="btn btn-primary">Agregar Items</button>



			</div>
		</form>
	</div>


	<div class="container well/">
		<h2>Productos Agregados</h2>
	</div>

	<div class="container well/">
		<table class="table">
			<%
				/* Cargara los datos de la factura */
			%>
			<thead>
				<tr>
					<th scope="col">Id Cliente</th>
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
					<td>Edy</td>
					<td>Bocina</td>
					<td>premiun</td>
					<td>700</td>
					<td>100</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Edy</td>
					<td>Bocina</td>
					<td>premiun</td>
					<td>700</td>
					<td>100</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Edy</td>
					<td>Bocina</td>
					<td>premiun</td>
					<td>700</td>
					<td>100</td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td>Edy</td>
					<td>Bocina</td>
					<td>premiun</td>
					<td>700</td>
					<td>100</td>
				</tr>
				<tr>
					<th scope="row">5</th>
					<td>Edy</td>
					<td>Bocina</td>
					<td>premiun</td>
					<td>700</td>
					<td>100</td>
				</tr>

			</tbody>

		</table>
		<button type="submit" class="btn btn-primary">Agregar Items</button>
	</div>

	<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>

</body>
</html>