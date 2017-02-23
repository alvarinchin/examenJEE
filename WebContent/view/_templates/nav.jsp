<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
 <style>
 #banner{
 	background-image:url(${baseURL}assets/img/Empresa1.jpg);
 	background-size: 100%;
 	background-position:0 -15px;
 	padding-top:5px;
 	padding-left:5%;
 	height:300px;
 	border-radius:10px;
 	
 }
 
 </style>
 <div id="banner" class="container jumbotron">
    <h1>Mi empresa</h1>      
    <p></p>
  </div>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${baseURL}">WebSiteName</a>
		</div>

		<ul class="nav navbar-nav">
			<!-- lista de elementos del menu -->
			<!-- Elemento1: ciudades -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Localidades <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<!-- Paginas dentro del men� -->
					<li><a href="${baseURL}localidad/listar">Listar</a></li>
					<li><a href="${baseURL}localidad/crear">Crear</a></li>
					<li><a href="#">Modificar</a></li>
					<li><a href="#">Borrar</a></li>
				</ul></li>
			<!-- Elemento1: ciudades -->
			<!-- Elemento1: Lenguajes programacion -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Clientes <span
					class="caret"></span></a>
				<ul class="dropdown-menu">
					<!-- Paginas dentro del men� -->
					<li><a href="${baseURL}cliente/listar">Listar</a></li>
					<li><a href="${baseURL}cliente/crear">Crear</a></li>
					<li><a href="#">Modificar</a></li>
					<li><a href="#">Borrar</a></li>
				</ul></li>
			<!-- Elemento1: lenguajes programaci�n -->
			<!-- Elemento1: Empleados -->
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">Empleados <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<!-- Paginas dentro del men� -->
					<li><a href="${baseURL}empleado/listar">Listar</a></li>
					<li><a href="${baseURL}empleado/crear">Crear</a></li>
					<li><a href="${baseURL}empleado/modificar">Modificar</a></li>
					<li><a href="${baseURL}empleado/listar">Borrar</a></li>
				</ul></li>
			<!-- Elemento1: Empleados -->
			<!-- Elemento1: Login -->

			<!-- Paginas dentro del men� -->
			<script>
				//alert("${userName}");
			</script>

			<c:choose>

				<c:when test="${empty userName}">
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#">Login <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><div>
									<form method="post" action="${baseURL}empleado/login">
										<div class="form-group">
											<input name="usu" type="text" class="form-control">
										</div>
										<div class="form-group">
											<input name="pwd" type="password" class="form-control">
										</div>
										<div class="form-group">
											<button class="btn btn-primary" type="submit">Login</button>
										</div>

									</form>
								</div></li>
						</ul></li>
				</c:when>
				<c:otherwise>
					<li class=""><a class="dropdown-toggle" data-toggle="dropdown"
						href="#">Bienvenido ${nombre} <span class="caret"></span></a>
						<ul class="dropdown-menu">
							<!-- Paginas dentro del men� -->
							<li><a href="${baseURL}empleado/logout">Logout</a></li>
						</ul></li>
					</li>
				</c:otherwise>
			</c:choose>
			<!-- Elemento1: Login -->

		</ul>

	</div>
</nav>
</head>
