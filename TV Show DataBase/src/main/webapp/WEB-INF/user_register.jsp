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
	<title></title>
	<link rel="stylesheet" type="text/css" href="/css/style.css">
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<script type="text/javascript" src="/js/main.js"></script>
</head>
<body class="">
	<nav class="navbar navbar-dark bg-primary d-flex justify-content-between px-3">
		
			<h1 class=""><a class="text-decoration-none text-reset" href="/">TV Show DataBase</a></h1>
				<div class="">
				<a class="btn btn-outline-dark mx-2" href="/shows">Dashboard</a>
					<c:if test="${user_id!=null}">
						<a class="btn btn-outline-dark" href="/logout">Logout</a>
					</c:if>
				</div>
	</nav>
	<div class="bg-image">
	<div class="d-flex justify-content-center">
		<div class="d-flex justify-content-center">
			<form:form class="bg-secondary p-3 m-2" action="/register" method="POST" modelAttribute="user" >
				<div class="">
					<h1 class=" p-2">Register</h1>
				</div>
				
				<div class="">
					<div class="form-group p-2">
						<form:errors class="col_red" path="name" />
						<form:input placeholder="Name" path="name" />
					</div>
					<div class="form-group p-2">
						<form:errors class="col_red" path="email" />
						<form:input placeholder="Email" path="email" />
					</div>
					<div class="form-group p-2">
						<form:errors class="col_red" path="password" />
						<form:input type="password" placeholder="Password" path="password" />
					</div>
					<div class="form-group p-2">
						<form:errors class="col_red" path="confirm" />
						<form:input type="password" placeholder="Password Confirmation" path="confirm" />
					</div>
					<div class="p-2">
					<input class="btn btn-primary" type="submit" value="Register" />
					</div>
				</div>
			</form:form>
		</div>
	
		<div class="d-flex justify-content-center">
		
			<form:form class="bg-secondary p-3 m-2" action="/login" method="POST" modelAttribute="loginuser" >
				<div class="">
					<h1 class="p-2">Login</h1>
				</div>
				
				<div class="">
				</div>
					<div class="form-group p-2">
						<form:errors class="col_red" path="email" />
						<form:input placeholder="Email" path="email" />
					</div>
					<div class="form-group p-2">
					<form:errors class="col_red" path="password" />
					<form:input type="password" placeholder="Password" path="password" />
					</div>
					<div class="form-group p-2">
					<input class="btn btn-primary" type="submit" value="Login" />
					</div>
					<div class="form-group">
				</div>
			</form:form>
		</div>
	</div>
	</div>
</body>
</html>