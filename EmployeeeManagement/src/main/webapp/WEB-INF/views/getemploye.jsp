<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<center><h1>Get By Id</h1></center>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid black;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}

body {
	background-image:
		url('https://images.blocksurvey.io/cdn-cgi/imagedelivery/G6cPOuGZ4Z_bEV13gBxixw/templates/concert-registration-form.svg/l');
}
a:active{
background-color:pink;
}
a:hover{
color:black;
}
</style>
</head>
<body>
<body>

	<div class="container mt=5">
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th scope="col">id</th>
					<th scope="col">employeName</th>
					<th scope="col">Email</th>
					<th scope="col">Salary</th>
					<th scope="col">phnno</th>
					<th scope="col">Gender</th>
					<th scope="col">dept</th>
					<th scope="col">insurance</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<th scope="row">${employe1.id}</th>
						<td>${employe1.ename}</td>
						<td>${employe1.email}</td>
						<td>${employe1.salary}</td>
						<td>${employe1.phnno}</td>
						<td>${employe1.gender}</td>
						<td>${employe1.dept}</td>
						<td>${employe1.insurance}</td>
					</tr>
			</tbody>
		</table>
		<br><br>
	</div>
</body>

</html>