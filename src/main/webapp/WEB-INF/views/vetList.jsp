<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista lekarzy weterynarii</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
<img src="resources/baner.png" alt="patrzące zwierzątka" />

<style>
.buttons {
	margin-top: 30px;
	margin-bottom: 30px;
}

ul {
	list-style-type: none;
}
</style>

</head>
<body>

<div class="container">
	
	<table class="buttons">
			<tr>
				<th><a href="${pageContext.request.contextPath}/vet/add">
				<button type="button" class="btn btn-success">Dodaj lekarza weterynarii</button>
  				</a></th>
  				
				<th width="50" height="15"></th>
				
				<th><a href="${pageContext.request.contextPath}/owner">
				<button type="button" class="btn btn-primary">Powrót</button>
				</a></th>
				
				<th width="50" height="15"></th>
				
				<th><a href="${pageContext.request.contextPath}">
				<button type="button" class="btn btn-default">Strona główna</button>
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
					<th>Telefon</th>
					<th colspan="2"></th>
				</tr>
			</thead>

			<tbody id="myTable">
				<c:forEach items="${vets }" var="vet">
					<tr>
						<td>${vet.lastName }</td>
						<td>${vet.firstName }</td>
						<td>
						<ul>
						<li>${vet.adress }</li>
						<li>${vet.email }</li>
						</ul>
						<td>${vet.phone }</td>
						<td align="center"><a
							href="${pageContext.request.contextPath}/vet/edit/${vet.id}">Edytuj</a></td>
						<td align="center"><a
							href="${pageContext.request.contextPath}/vet/delete/${vet.id}">Usuń</a></td>
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