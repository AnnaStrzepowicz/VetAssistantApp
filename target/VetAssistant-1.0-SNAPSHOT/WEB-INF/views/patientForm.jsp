<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Dodaj nowego pacjenta</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	

<style>
#allert { 
	color: #FF4500;
	font-size: 7;
	font-weight: bold;
 }

 
</style>	
	
	
	
</head>
<body>


	<div class="container">
		<h2>Nowy pacjent</h2>

		<form:form method="POST" modelAttribute="patient"
			class="form-horizontal">
			<div class="form-group">

				<form:label path="name" class="control-label col-sm-2" for="name">Imię:</form:label>
				<div class="col-sm-10">
					<form:input path="name" class="form-control" name="name"
						placeholder="Imię" />
					<form:errors path="name"></form:errors>
				</div>
			</div>


			<div class="form-group">
				<form:label path="species" class="control-label col-sm-2"
					for="species">Gatunek</form:label>
				<div class="col-sm-10">
					<form:select class="form-control" id="species" path="species"
						items="${species}" itemLabel="name" itemValue="name"/>
				</div>
			</div>



			<div class="form-group">
				<form:label path="breed" class="control-label col-sm-2" for="breed">Rasa:</form:label>
				<div class="col-sm-10">
					<form:input path="breed" class="form-control" name="breed"
						placeholder="Rasa" />
					<form:errors path="breed"></form:errors>
				</div>
			</div>


			<div class="form-group">
			<form:label path="breed" class="control-label col-sm-2" for="breed">Płeć:</form:label>
				<div class="col-sm-10">
				<form:label path="gender" class="control-label col-sm-2"
					for="gender">Samica 
            <form:radiobutton path="gender" value="Samica" />
				</form:label>
				
				<form:label path="gender" class="control-label col-sm-2"
					for="gender">Samiec
        <form:radiobutton path="gender" value="Samiec" />
				</form:label>
			</div>


			<div class="form-group">
				<form:label path="dateOfBirth" class="control-label col-sm-2"
					for="dateOfBirth">Data urodzenia:</form:label>
				<div class="col-sm-10">
					<form:input path="dateOfBirth" class="form-control"
						name="dateOfBirth" placeholder="Data urodzenia" />
					<form:errors path="dateOfBirth"></form:errors>
				</div>
			</div>


			<div class="form-group">
				<form:label path="chipNo" class="control-label col-sm-2"
					for="chipNo">Nr mikroczipa:</form:label>
				<div class="col-sm-10">
					<form:input path="chipNo" class="form-control" name="chipNo"
						placeholder="Nr mikroczipa" />
					<form:errors path="chipNo"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="critInf" for="critInf" class="control-label col-sm-2" id="allert">UWAGA!!! WAŻNE INFORMACJE!:</form:label>
				<div class="col-sm-10">
					<form:textarea path="critInf" class="form-control" name="critInf"
						placeholder="Informacje o czynnikach zagrażających zdrowiu i życiu" />
					<form:errors path="critInf"></form:errors>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Zatwierdź</button>
<form:errors path="*"></form:errors>
				</div>
			</div>
		</form:form>
	</div>




</body>
</html>