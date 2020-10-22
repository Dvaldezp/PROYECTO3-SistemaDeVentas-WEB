<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title>VerTodasLasFacturas</title>
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
		<h1>Facturas Especificas</h1>
	</div>

	<div class="container well/">

		<form action="VerTodasLasFacturas.jsp" method="get"
			class="form-control" style="width: 250px; height: 50px">

			<div class="espacio/">
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Ver Todas
						Las Facturas</button>
				</div>
			</div>
		</form>
	</div>

	<div class="container well/">
		<table class="table">
			<%
				/* Cargara los datos de la factura */
			%>
			<thead>
				<tr>
					<th scope="col">Numero</th>
					<th scope="col">Cliente</th>
					<th scope="col">Total de Factura</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Estuardo</td>
					<td>1000</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td>Estuardo</td>
					<td>1000</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td>Estuardo</td>
					<td>1000</td>
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