<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Karta pacjenta</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<img src="../resources/baner.png" alt="patrzące zwierzątka" />

<style>
.title {
	text-transform: uppercase;
	text-shadow: 1px 1px 5px grey;
	letter-spacing: 2px;
	font-size: xx-large;
	font-weight: 500;
	text-align: center;
}

.td {
	letter-spacing: 2px;
	font-size: large;
	width: 25%;
}

.td2 {
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: x-large;
	width: 25%;
	font-weight: 500;
}

.td3 {
	text-transform: uppercase;
	letter-spacing: 2px;
	font-size: x-large;
	width: 25%;
	font-weight: 500;
	color: red;
}

.button {
	display: inline-block;
	padding: 15px 25px;
	font-size: 16px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: #fff;
	background-color: #993366;
	border: none;
	border-radius: 15px;
	box-shadow: 0 9px #999;
}

.button:hover {
	background-color: #3e8e41
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>


</head>
<body>


	<div class="container">

		<table class="buttons">
			<tr>

				<th><a
					href="${pageContext.request.contextPath}/visit/add?patient=${patient.id}">
						<button type="button" class="button">Nowa wizyta</button>
				</a></th>

				<th width="50" height="15"></th>

				<th><a
					href="${pageContext.request.contextPath}/patient/edit/${patient.id}">
						<button type="button" class="btn btn-success">Edytuj</button>
				</a></th>

				<th width="50" height="15"></th>

				<th><a href="${pageContext.request.contextPath}/owner">
						<button type="button" class="btn btn-primary">Powrót</button>
				</a></th>

				<th width="50" height="15"></th>

				<th><a href="${pageContext.request.contextPath}">
						<button type="button" class="btn btn-default">Strona
							główna</button>
				</a></th>

			</tr>
			<tr>




			</tr>
		</table>

		<h1 class="title">Karta pacjenta</h1>







		<table class="table table-striped">
			<tbody>

				<tr>
					<td class="td">Imię:</td>
					<td class="td2">${patient.name }</td>

				</tr>

				<tr>
					<td class="td">Gatunek:</td>
					<td class="td2">${patient.species }</td>
					<td class="td">Data urodzenia:</td>
					<td class="td2">${patient.dateOfBirth }</td>
				</tr>

				<tr>
					<td class="td">Rasa:</td>
					<td class="td2">${patient.breed }</td>
					<td class="td">Nr mikroczipa:</td>
					<td class="td2">${patient.chipNo }</td>
				</tr>
		</table>

		<div class="w3-panel w3-pale-red w3-leftbar w3-rightbar w3-border-red">
			<p>UWAGA!</p>
			<p>${patient.critInf }</p>
		</div>




		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item"><a class="nav-link active" id="home-tab"
				data-toggle="tab" href="#home" role="tab" aria-controls="home"
				aria-selected="true">Dane właściciela</a></li>
			<li class="nav-item"><a class="nav-link" id="profile-tab"
				data-toggle="tab" href="#profile" role="tab" aria-controls="profile"
				aria-selected="false">Wizyty</a></li>
			<li class="nav-item"><a class="nav-link" id="contact-tab"
				data-toggle="tab" href="#contact" role="tab" aria-controls="contact"
				aria-selected="false">Wyniki badań</a></li>
		</ul>
		<div class="tab-content" id="myTabContent">
			<div class="tab-pane fade show active" id="home" role="tabpanel"
				aria-labelledby="home-tab">

				<table>
					<tr>
						<td>${patient.owner.firstName} ${patient.owner.lastName}</td>
					</tr>
					<tr>
						<td>${patient.owner.adress}</td>
					</tr>
					<tr>
						<td>${patient.owner.email}</td>
					</tr>
					<tr>
						<td>${patient.owner.phone}</td>
					</tr>


				</table>

			</div>


			<div class="tab-pane fade" id="profile" role="tabpanel"
				aria-labelledby="profile-tab">
				<table class="table table-bordered">
					<c:forEach items="${patient.visits}" var="visit">
						<tr>
							<td>${visit.date}</td>
							<td>${visit.description}</td>
							<td>${visit.recommendations }</td>

						</tr>
					</c:forEach>
				</table>

			</div>


			<div class="tab-pane fade" id="contact" role="tabpanel"
				aria-labelledby="contact-tab">Wyniki badań</div>

		</div>
</body>
</html>