<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Lista właścicieli</title>
	<meta http-equiv="Content-Type" content="text/html" charset="UTF-8" >
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<img src="resources/baner.png" alt="patrzące zwierzątka" />


<style>
.buttons {
	margin-top: 30px;
	margin-bottom: 30px;
}

ul {
	list-style-type: none;
}

.a:link {
color: #800000;
}
.a:visited {
color: #800000;
}
.a:hover {
color: #000000;
}
a:active {
color: #000000;
}

</style>

</head>



<body>
	

	<div class="container">
	
	<table class="buttons">
			<tr>
				<th><a href="${pageContext.request.contextPath}/owner/add">
				<button type="button" class="btn btn-primary">Dodaj właściciela</button>
  				</a></th>
				
				<th width="50" height="15"></th>
				
				<th><a href="${pageContext.request.contextPath}">
				<button type="button" class="btn btn-default">Strona główna</button>
				</a></th>
				
								
				<th width="50" height="15"></th>
				
				<th><a href="${pageContext.request.contextPath}/vet">
				<button type="button" class="btn btn-success">Wyświetl lekarzy</button>
  				</a></th>
				
			</tr>
		</table>
	
	
		<h2>Wyszukaj</h2>
		<input class="form-control" id="myInput" type="text"
			placeholder="Szukaj..."> <br>
		<table class="table table-bordered table-striped">
			<thead>
				<tr>
					<th>Nazwisko</th>
					<th>Imię</th>
					<th>Adres</th>
					<th>Pacjenci</th>
					<th colspan="2"></th>
				</tr>
			</thead>

			<tbody id="myTable">
				<c:forEach items="${owners }" var="owner">
					<tr>
						<td>${owner.lastName }</td>
						<td>${owner.firstName }</td>
						<td>
						<ul>
						<li>${owner.adress }</li>
						<li>${owner.email }</li>
						<li>${owner.phone }</li>
						</ul>
						</td>
						<td>
							<ul>
								<c:forEach items="${owner.patients}" var="patient">
								
									<li><a href="${pageContext.request.contextPath}/patient/patientCard/${patient.id}" class="a">${patient.name}</a></li>
								
								</c:forEach>
								<li><a href="${pageContext.request.contextPath}/patient/add?owner=${owner.id}">Dodaj zwierzę...</a></li>
							</ul>

						</td>
						<td align="center"><a
							href="${pageContext.request.contextPath}/owner/edit/${owner.id}">Edytuj</a></td>
						<td align="center"><a
							href="${pageContext.request.contextPath}/owner/delete/${owner.id}">Usuń</a></td>
					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

	<script>
		$(document).ready(function(){
		  $("#myInput").on("keyup", function() {
		    var value = $(this).val().toLowerCase();
		    $("#myTable tr").filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
</script>



</body>
</html>