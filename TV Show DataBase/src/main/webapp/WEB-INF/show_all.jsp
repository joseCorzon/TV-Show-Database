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
<!-- 	<link rel="stylesheet" type="text/css" href="css/style.css"> -->
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body>
	<div class="">
<nav class="navbar navbar-dark bg-primary d-flex justify-content-between px-3">
		
			<h1 class=""><a class="text-decoration-none text-reset" href="/">TV Show DataBase</a></h1>
				<div class="">
					<c:if test="${user_id!=null}">
						<a class="btn btn-outline-dark" href="/logout">Logout</a>
					</c:if>
				</div>
	</nav>
		<div class="container">
			<div class="">
				<h1 class="">Welcome ${ user.name } </h1>
			</div>
			<div class="">
				<c:forEach items="${shows}" var="i" >
					<div class="card mt-2 p-1">
						<div class="card-header">
							<h1><a class="text-decoration-none" href="/shows/${i.id}">${i.title}</a></h1>
						</div>
						<div class="">						
							<p><strong>Network:</strong> ${i.network}</p>
							<p><strong>description:</strong> ${i.description}</p>
						</div>
					</div>
				</c:forEach>
			</div>
			<p><a href="/shows/new">Add a New Show</a></p>
		</div>
	</div>
</body>
</html>