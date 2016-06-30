<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>
</head>
<body>
<div class="generic-container">
<div class="panel-body">
<div class="alert alert-warning" role="alert">Dear user&nbsp;<strong> ${user}&nbsp;&nbsp;</strong>YOU ARE NOT AUTHORIZED ! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="glyphicon glyphicon-off" aria-hidden="true"></span><a href="<c:url value="/logout"/>">LOGOUT</a>
</div>
</div>
</div>
	
	 
	 
</body>
</html>