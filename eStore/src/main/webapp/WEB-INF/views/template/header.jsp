<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">

<title>eStore</title>

<!-- Angular JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js">
	
</script>

<%--Jquery--%>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

<%--Data Table--%>
<script type="text/javascript"
	src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- Carousel CSS -->
<link href="<c:url value="/resources/css/carousel.css" />"
	rel="stylesheet">

<!-- Main CSS -->
<link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

<link
	href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css"
	rel="stylesheet">


</head>
<!-- NAVBAR
================================================== -->
<body>
	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar"
							aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<%-- <a class="navbar-brand" href="<c:url value="/" /> ">
							<span class="glyphicon glyphicon-shopping-cart"></span>
						</a> --%>
					</div>
					<div id="navbar" class="navbar-collapse collapse">
						<ul class="nav navbar-nav">
							<li><a href="<c:url value="/" /> ">
								<span class="glyphicon glyphicon-home"></span>&nbsp; Home</a></li>
							<li><a href="<c:url value="/product/productList/all" />">Products</a></li>
							<li><a href="<c:url value="/about" />">About Us</a></li>
						</ul>
						<ul class="nav navbar-nav pull-right">
							<c:if test="${pageContext.request.userPrincipal.name != null}">
								<li><a>Hello, ${pageContext.request.userPrincipal.name}</a></li>
								<c:if
									test="${pageContext.request.userPrincipal.name != 'admin'}">
									<li><a href="<c:url value="/customer/cart" />">
										<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; Cart</a></li>
								</c:if>
								<c:if
									test="${pageContext.request.userPrincipal.name  == 'admin'}">
									<li><a href="<c:url value="/admin" />">
										<span class="glyphicon glyphicon-user"></span>&nbsp; Admin</a></li>
								</c:if>
								<li><a href="<c:url value="/j_spring_security_logout" />">
									<span class="glyphicon glyphicon-log-out"></span>&nbsp; Logout</a></li>
							</c:if>
							<c:if test="${pageContext.request.userPrincipal.name  == null}">
								<li><a href="<c:url value="/login/" />">
									<span class="glyphicon glyphicon-log-in"></span>&nbsp; Log In</a></li>
								<li><a href="<c:url value="/register" />">
									<span class="glyphicon glyphicon-pencil"></span>&nbsp; Sign Up</a></li>
							</c:if>
						</ul>
					</div>
				</div>
			</nav>

		</div>
	</div>
	
	<br/><br/><br/>