<%@ page import="src.main.java.ProductoDAO" %>
<%@ page import="src.main.java.Cliente_Individual" %>
<html>
</head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<% /*Titulo de la pagina */%>
<title>ModificarClienteIndividual</title>

<% /*Hoja de estilo */%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<div class="container well">
	
<h1>Modificar Cliente Individual</h1>
</div>
</head>



</body>
<div class="Container">
<%
	/* type: que tipo de dato podra almacenar
id: atributo// <>br:un espacio hacia abajo */
%>

	<%
		Cliente_Individual individual=null;
		ProductoDAO dao=new ProductoDAO();
		String prueba= request.getParameter("codigo");
		if(prueba!=null){
		individual=dao.getDBbuscarclienteIndi(Integer.parseInt(prueba));
		}
		if(individual==null){
	%>

<form action="ModificarClienteIndividual.jsp"method="get" class="form-control" style="width: 500px; height: 500px">

		<div class="form-group">
		<label for="Codigo">Ingrese el codigo del cliente</label>
		<input type="text"class="form-control" id="codigo" name="codigo" >
		<button type="submit" class="btn btn-primary">Buscar Cliente</button>

		<div class="form-group">
			<label for="Nom">Nombre</label>
			<input type="text" class="form-control" id="Nom" name="Nombre">

			<label for="Apelli">Apellido</label>
			<input type="text"class="form-control" id="Apelli" name="Apellido">

			<label for="Dire">Direccion</label>
			<input type="text"class="form-control" id="Dire" name="Direccion">

			<label for="Dp">Dpi</label>
			<input type="text"class="form-control" id="Dp" name="Dpi">
		</div>



	<button type="submit" class="btn btn-primary">Modificar</button>
	<form action="Menu.jsp">
    <button type="submit" class="btn btn-secondary">Regresar al Menu </button>
    </form>
    </div>
    
</form>

</div>

<%
	}else{
		%>
<form action="ModificarClienteIndividual.jsp"method="get" class="form-control" style="width: 500px; height: 500px">
	<div class="form-group">
		<label for="Codigo">Ingrese el codigo del cliente</label>
		<input type="text"class="form-control" id="codigo" name="codigo" value="<%=individual.getIdCliente()%>">
		<button type="submit" class="btn btn-primary">Buscar Cliente</button>

		<div class="form-group">
			<label for="Nom">Nombre</label>
			<input type="text" class="form-control" id="nombre" name="nombre" value="<%=individual.getNombreCliente()%>">

			<label for="Apelli">Apellido</label>
			<input type="text"class="form-control" id="Apelli" name="Apellido" value="<%=individual.getApellidoCliente()%>">

			<label for="Dire">Direccion</label>
			<input type="text"class="form-control" id="Dire" name="Direccion" value="<%=individual.getDireccion()%>">

			<label for="Dp">Dpi</label>
			<input type="text"class="form-control" id="Dp" name="Dpi" value="<%=individual.getDpi()%>" >

		</div>



		<button type="submit" class="btn btn-primary">Modificar</button>
		<form action="Menu.jsp">
			<button type="submit" class="btn btn-secondary">Regresar al Menu </button>
		</form>
	</div>

</form>
	<%
				String nombre=request.getParameter("codigo");
			Cliente_Individual client=new Cliente_Individual(Integer.parseInt(nombre),"d","s","s","s");
		dao.getDBmodificarcliente(client);

	}

%>




<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

</body>
</html>

