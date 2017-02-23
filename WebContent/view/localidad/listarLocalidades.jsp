<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="container">

	<table class="table table-striped">
	<thead>
	<tr>
	<th>localidad</th>
	<th>Provincia</th>	
	</tr>
	</thead>
		<c:forEach var="localidad" items="${localidades}">
		<tr>
		<td>${localidad.nombre}</td><td>${localidad.provincia}</td>
		</tr>
		
		</c:forEach>
	
	</table>
</div>