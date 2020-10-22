<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>AgregarClienteEmpresa</title>
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
		<h1>Agregar Cliente Empresa</h1>
	</div>

	<div class="container well/">

		<form action="AgregarClienteEmpresa.jsp" method="get"
			class="form-control" style="width: 350px; height: 400px">

			<div class="form-group">
				<label for="N">Nombre</label> <input type="text"
					class="form-control" id="Nom" name="Nombre"> 
				<label for="Di">Dirección</label><input
					type="text" class="form-control" id="Direc" name="Direccion">
				<label for="C">Contacto</label> <input type="text"
					class="form-control" id="Cont" name="Contacto">
				 <label for="Dc">Descuento Favorable</label> <input type="text"
					class="form-control" id="Desc" name="Descuento">


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
					<th scope="col">Id Cliente</th>
					<th scope="col">Nombre</th>
					<th scope="col">Dirección</th>
					<th scope="col">Contacto</th>
					<th scope="col">Descuento Favorable</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Edy</td>
					<td>6 Calle Z.1</td>
					<td>Piril</td>
					<td>56</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Edy</td>
					<td>6 Calle Z.1</td>
					<td>Piril</td>
					<td>56</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Edy</td>
					<td>6 Calle Z.1</td>
					<td>Piril</td>
					<td>56</td>
				</tr>
				<tr>
					<th scope="row">4</th>
					<td>Edy</td>
					<td>6 Calle Z.1</td>
					<td>Piril</td>
					<td>56</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>

</body>
</html>