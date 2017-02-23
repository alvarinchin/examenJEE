
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<div class="container">
	<div class="form-group">
		<label>Nombre</label>
		<form method="post" action="${baseURL}localidad/crear">
			<input type="text" class="form-control" name="nombre">
	</div>
	<div class="form-group">

		<select class="form-control" name="provincia">
			<option value="Madrid">Madrid</option>
			<option value="Castilla y León">Castilla y León</option>
			<option value="Castilla la Mancha">Castilla la Mancha</option>
			<option value="Badajoz">Badajoz</option>
		</select>

	</div>
	<div class="form-group">

		<button class="btn btn-primary" type="submit">Enviar</button>


	</div>

	</form>
</div>


</div>