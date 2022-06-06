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
<body class="">
<nav class="navbar navbar-dark bg-primary d-flex justify-content-between px-3">
		
			<h1 class=""><a class="text-decoration-none text-reset" href="/">TV Show DataBase</a></h1>
				<div class="d-flex">
					<a class="btn btn-outline-dark mx-2" href="/shows">Dashboard</a>
					<c:if test="${user_id!=null}">
						<a class="btn btn-outline-dark" href="/logout">Logout</a>
					</c:if>
				</div>
	</nav>
	
<form:form class="container" action="/shows/new" method="POST" modelAttribute="show" >
			<div class="">
				<h1 class="">Add Show</h1>
			</div>
			
			<div class="d-flex flex-column justify-content-center">
				<form:errors class="" path="title" />
				<form:input class="d-block mb-2 w-50" placeholder="Show Title" path="title" />
								
				<form:errors class="" path="network" />
				<form:input class="d-block my-2 w-50" placeholder="Network" path="network" />	
				
				<form:errors class="" path="description" />
				<form:textarea class="d-block my-2 w-50" placeholder="Description" path="description" />	

				
				<input class="btn btn-primary w-25" type="submit" value="Add Show" />
			</div>
		</form:form>
</body>
</html>