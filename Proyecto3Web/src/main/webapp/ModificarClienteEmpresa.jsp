<html>
</head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<% /*Titulo de la pagina */%>
<title>ModificarClienteEmpresa</title>

<% /*Hoja de estilo */%>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

<div class="container well">
	
<h1>Modificar Cliente de Empresa</h1>
</div>

<div class="Container">
<%
	/* type: que tipo de dato podra almacenar
id: atributo// <>br:un espacio hacia abajo */
%>


<form action="ModificarClienteEmpresa.jsp" method="post" class="form-control" style="width: 500px; height: 500px">
	<div class="form-group">
		<label for="C">Ingrese el codigo del cliente</label> <input type="text"
			class="form-control" id="Codigo" name="Codigocliente">
		<button type="submit" class="btn btn-primary">Buscar</button>
	</div>
	
	<div class="form-group">
		<label for="N">Nombre</label> <input type="text"
		class="form-control" id="Nom" name="nombre">
		
		<label for="D">Direccion</label> <input type="text"
		class="form-control" id="Dire" name="Direccion">
		
		<label for="Con">Contacto</label> <input type="text"
		class="form-control" id="Contac" name="Contacto">
		
		<label for="Des">Descuento Favorable</label> <input type="text"
		class="form-control" id="Descu" name="Descuento">
		

</div>

<div class="container well">
					<button type="submit" class="btn btn-primary">Modificar</button>
					<form action="Menu.jsp">
					<button type="submit" class="btn btn-secondary">Regresar al Menu </button>
					</form>
					</div>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>

</body>
</html>

