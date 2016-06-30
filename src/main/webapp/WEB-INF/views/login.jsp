<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>

<body>

	<c:url var="loginUrl" value="/login"></c:url>
	<div class="generic-container">
	<div class="page-header">
  <h1>AppB Login <small>Powered by Cogent</small></h1>
</div>
	<div class="panel panel-default">
	<div class="panel-body">
	<form action="${loginUrl}" method="post" class="form-horizontal">

		<c:if test="${param.error != null}">

			<div class="alert alert-danger" role="alert">
			<span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
  <span class="sr-only">Error:</span>
  Invalid username and password</div>

		</c:if>

		<c:if test="${param.logout != null}">

			<div class="alert alert-success" role="alert">
			<span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>&nbsp;&nbsp;You have logged out successfully</div>

		</c:if>

<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">UserID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
  <input type="text" id="id" name="ssoId" class="form-control" placeholder="Enter user ID" aria-describedby="basic-addon1" required/>
</div>
		<!-- <input type="text" id="id" name="ssoId" "
			placeholder="Enter user Id" required> <br>  -->
			<div class="input-group">
			<span class="input-group-addon" id="basic-addon2">Password</span>
  <input type="password" id="password" name="password" class="form-control" placeholder="Enter Password" aria-describedby="basic-addon2" required/>
</div>
			
		<!-- <input type="password" id="password" name="password"
			placeholder="Enter password" required> <br>  -->
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			
		<br> 
		<div class="input-group">
		<input type="submit" value="Login">
		</div>


	</form>
	</div>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
</body>
</html>