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
		<div class="">
			
			<div class="">
				<p class="fs-3"><strong>Title:</strong> ${show.title}</p>			
				<p><strong>network:</strong> ${show.network}</p>
				<p><strong>Description:</strong> ${show.description}</p>
			</div>
			<a class="btn btn-secondary" href="/shows/${show.id}/edit">Edit</a>
		</div>
	</div>
</body>
</html>