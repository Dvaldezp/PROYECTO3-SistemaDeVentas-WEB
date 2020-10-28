<%@ page import="src.main.java.Factura" %>
<%@ page import="src.main.java.ManejoDAO" %>
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

		<%
			Factura fac=null;
			ManejoDAO manejo=new ManejoDAO();
			String nombre= request.getParameter("codigo");

			if(nombre!=null){

				try {
					fac=manejo.grabarFactura(Integer.parseInt(nombre));

				}catch (Exception e){
					e.printStackTrace();
				}

			}
			if(fac==null){
		%>


		<form action="RealizarFactura.jsp" method="get"
			class="form-control" style="width: 350px; height: 400px">

			<div class="espacio/">
				<div class="form-group">
					<label for="codigo">Ingrese el codigo del cliente</label> <input
						type="text" class="form-control" id="codigo" name="codigo">
					<button action="
					<%

						try{
							Factura factura1=null;
							ManejoDAO dao=new ManejoDAO();

							String codigo= request.getParameter("codigo");
							factura1=dao.grabarFactura(Integer.parseInt(codigo));
						}catch (Exception e){
							e.printStackTrace();
						}


					%>

					" type="submit" class="btn btn-primary">Agregar Cliente</button>
				</div>

				<label for="factura">Ingrese codigo de producto a facturar</label><input
					type="text" class="form-control" id="factura" name="factura" value="">

				<label for="Cantidad">Cantidad</label> <input type="text"
					class="form-control" id="Cantidad" name="Cantidad">

				<button type="submit" class="btn btn-primary">Agregar Items</button>



			</div>
		</form>
	</div>


	<div class="container well/">
		<h2>Productos Agregados</h2>
	</div>

	<%
	}else{
	%>

	<div class="container well/">
		<table class="table">
			<%
				/* Cargara los datos de los clientes */
			%>
			<thead>
			<tr>
				<th scope="col">Id Cliente</th>
				<th scope="col">Nombre</th>

			</tr>
			</thead>
			<tbody>
			<tr>

				<th scope="row"><%=fac.getNumerodefactura()%></th>
				<td><%=fac.getIdcliente()%></td>

			</tr>

			</tbody>
		</table>
	</div>

	<%

		}

	%>




	<div class="container well">
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al
				Menu</button>
		</form>
	</div>

</body>
</html>