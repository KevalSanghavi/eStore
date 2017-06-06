
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
              <div class="page-header">
                  <h2 class="alert alert-danger">Checkout Cancelled</h2>

                  <p class="lead">Your checkout process is cancelled. You may continue shopping.</p>
              </div>
        </section>

        <section class="container">
            <p>
                <a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continue Shopping</a>
            </p>
        </section>

	<%@include file="/WEB-INF/views/template/footer.jsp" %>
	
	</div>
</div>
