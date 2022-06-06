<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<title></title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
<nav class="navbar navbar-dark bg-primary d-flex justify-content-between px-3">
		
		<h1 class=""><a class="text-decoration-none text-reset" href="/">TV Show DataBase</a></h1>
		<div class="d-flex">
			<a class="btn btn-outline-dark mx-2" href="/shows">Dashboard</a>
			<c:if test="${user_id!=null}">
				<a class="btn btn-outline-dark" href="/logout">Logout</a>
			</c:if>
		</div>
	</nav>
	<div class="container p2 grid gap2">
		
	
		<form:form class="" action="/shows/${show.id}/edit" method="POST" modelAttribute="show" >
			<div class="card_head">
				<h1 class="col_white1">Edit Show</h1>
			</div>
			
			<div class="d-flex flex-column justify-content-center">
				<form:errors class="" path="title" />
				<form:input class="d-block mb-2 w-50" placeholder="Show Title" path="title" />
								
				<form:errors class="" path="network" />
				<form:input class="d-block my-2 w-50" placeholder="Network" path="network" />	
				
				<form:errors class="" path="description" />
				<form:textarea class="d-block my-2 w-50" placeholder="Description" path="description" />	

				
				<input class="btn btn-primary w-25" type="submit" value="Edit Show" />
			</div>
		</form:form>
		<form action="/shows/${show.id}/delete" method="POST">
		<input class="btn btn-danger mt-2" type="submit" value="Delete"/>
	</form>
	</div>
	
</body>
</html>