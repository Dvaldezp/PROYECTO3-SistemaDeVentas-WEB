<%@ page import="src.main.java.ManejoDAO" %>
<%@ page import="src.main.java.Factura" %>
<%@ page import="java.util.List" %>
<html>
<head>
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">

	<%
		/*Titulo de la pagina */
	%>


	<title>Ver Todas las facturas</title>
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
	<h1>Ver Todas las Facturas</h1>
</div>

<div class="container well/">
	<table class="table">
		<%
			/* Cargara los datos del Producto */
		%>
		<thead>
		<tr>
			<th scope="col">Numero de Factura</th>
			<th scope="col">Id Cliente</th>

		</tr>
		</thead>
		<tbody>

		<%
			ManejoDAO manejoDAO = new ManejoDAO();

			List<Factura> facturas = manejoDAO.getDBfactura();

			int i=0;
			for(Factura factura: facturas){

		%>
		<tr>
			<th scope="row"><%=factura.getNumerodefactura()%>.</th>
			<td><%=factura.getIdcliente()%></td>

		</tr>
		<%
			}
		%>




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