<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nowy lekarz weterynarii</title>
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
		<h2>Nowy lekarz weterynarii</h2>

		<form:form method="POST" modelAttribute="vet"
			class="form-horizontal">

			<div class="form-group">
				<form:label path="firstName" class="control-label col-sm-2"
					for="firstName">Imię:</form:label>
				<div class="col-sm-10">
					<form:input path="firstName" class="form-control" name="firstName"
						placeholder="Imię" />
					<form:errors path="firstName"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="lastName" class="control-label col-sm-2" for="lastName">Nazwisko:</form:label>
				<div class="col-sm-10">
					<form:input path="lastName" class="form-control" name="lastName"
						placeholder="Nazwisko" />
					<form:errors path="lastName"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="adress" class="control-label col-sm-2" for="adress">Adres:</form:label>
				<div class="col-sm-10">
					<form:input path="adress" class="form-control" name="adress"
						placeholder="Adres" />
					<form:errors path="adress"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="email" class="control-label col-sm-2" for="email">Email:</form:label>
				<div class="col-sm-10">
					<form:input path="email" class="form-control" name="email"
						placeholder="Email" />
					<form:errors path="email"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<form:label path="phone" class="control-label col-sm-2" for="phone">Telefon:</form:label>
				<div class="col-sm-10">
					<form:input path="phone" class="form-control" name="phone"
						placeholder="Telefon" />
					<form:errors path="phone"></form:errors>
				</div>
			</div>
			
			<div class="form-group">
				<form:label path="pwz" class="control-label col-sm-2" for="pwz">Nr Pozwolenia wykonywania zawodu PWZ:</form:label>
				<div class="col-sm-10">
					<form:input path="pwz" class="form-control" name="pwz"
						placeholder="Nr PWZ" />
					<form:errors path="pwz"></form:errors>
				</div>
			</div>

			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">Zatwierdź</button>

				</div>
			</div>
		</form:form>
	</div>



</body>
</html>