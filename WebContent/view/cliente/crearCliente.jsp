
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="container">
	<div class="form-group">
		<form method="post" action="${baseURL}cliente/crear">
			<input type="text" class="form-control" name="nombre">
	</div>
	<div class="form-group">
		<select name="localidad" class="form-control">
			<c:forEach var="localidad" items="${localidades}">
				<option value="${localidad.id}">${localidad.nombre}</option>
			</c:forEach>
		</select>
	</div>
	<div class="form-group">
		<button class="btn btn-primary" type="submit">Enviar</button>
	</div>

	</form>
</div>


</div>