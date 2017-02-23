<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="container">

	<table class="table table-striped">
	<thead>
	<tr>
	<th>Nombre</th><th>¿Madrileño?</th>
	
	
	</tr>
	</thead>
		<c:forEach var="cliente" items="${clientes}">
		<tr>
		<td>${cliente.nombre}</td>
		<td>
		<script type="text/javascript">console.log("${cliente.localidad.provincia}");</script>
		<%boolean madrid=false; %>
		<c:choose>
		<c:when test="${cliente.localidad.provincia == 'Madrid'}">
		Sí
		</c:when>
		<c:otherwise>No</c:otherwise>
		</c:choose>
		</td>
		</tr>
		
		</c:forEach>
	
	</table>
</div>