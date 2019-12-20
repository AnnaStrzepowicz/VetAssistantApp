<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nowa wizyta</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>

	<div class="container">
		<h2>Nowa wizyta</h2>

		<form:form method="POST" modelAttribute="visit"
			class="form-horizontal">

			<div class="form-group">
				<form:label path="date" class="control-label col-sm-2"
					for="date">Data:</form:label>
				<div class="col-sm-10">
					<form:input type="date" path="date" class="form-control" name="date"
						placeholder="2018-01-01" />
					<form:errors path="date"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="description" class="control-label col-sm-2" for="description">Przebieg wizyty:</form:label>
				<div class="col-sm-10">
					<form:textarea path="description" class="form-control" rows="10" name="description"
						placeholder="Przebieg wizyty" />
					<form:errors path="description"></form:errors>
				</div>
			</div>


			<div class="form-group">
				<form:label path="recommendations" class="control-label col-sm-2" for="recommendations">Zalecenia:</form:label>
				<div class="col-sm-10">
					<form:textarea path="recommendations" class="form-control" rows="10" name="recommendations"
						placeholder="Zalecenia" />
					<form:errors path="recommendations"></form:errors>
				</div>
			</div>
			
			<%-- 
			<div class="form-group">
				<form:label path="vets" class="control-label col-sm-2"
					for="vets">Lekarz</form:label>
				<div class="col-sm-10">
					<form:select class="form-control" id="vets" path="vets"
						items="${vets}" itemLabel="name" itemValue="name"/>
				</div>
			</div>
			--%>
			

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Zatwierdź</button>

				</div>
			</div>
		</form:form>
	</div>

	
	
	
	
	
		

</body>
</html>