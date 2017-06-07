<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
              <div class="container">
                  <h2 class="alert alert-success">Thank you for your business!</h2>

                  <p class="lead">Your order will be shipped soon!</p>
              </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/" />" class="btn btn-default">OK</a>
            </p>
        </section>

	<%@include file="/WEB-INF/views/template/footer.jsp" %>	
		
	</div>
</div>
