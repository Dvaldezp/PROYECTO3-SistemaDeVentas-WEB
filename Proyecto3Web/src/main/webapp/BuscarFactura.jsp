<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<%
	/*Titulo de la pagina */
%>


<title></title>
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
		<h1>Facturas</h1>
	</div>

	<div class="container well/">

		<form action="BuscarFactura.jsp" method="get"
			class="form-control" style="width: 250px; height: 150px">

			<div class="form-group">
				<label for="factura">Ingrese el No. de Factura</label> <input
					type="text" class="form-control" id="factura" name="factura">
			
				<button type="submit" class="btn btn-primary">Buscar</button>
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