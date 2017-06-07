<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/template/header.jsp" %>


<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="container">
                  <h2 class="alert alert-success">Customer registered successfully!</h2>
                  
                  <p class="lead">You can now log in and enjoy shopping!</p>
              </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/login" />" class="btn btn-default">
                	<span class="glyphicon glyphicon-log-in"></span>&nbsp; Log In</a>
            </p>
        </section>
		
		<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
		<script src="<c:url value="/resources/js/controller.js" /> "></script>
		
		<%@include file="/WEB-INF/views/template/footer.jsp" %>
		
	</div>
</div>
