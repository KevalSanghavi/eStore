<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Product Detail</h2>

            <p class="lead">Detailed information of the product.</p>
        </div>

        <div class="container" ng-app = "cartApp">
            <div class="row">
                <div class="col-md-5">
                    <img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/>
                </div>

                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p>${product.productDescription}</p>
                    <p>
                       <strong>Manufacturer</strong>: ${product.productManufacturer}
                    </p>
                    <p>
                        <strong>Category</strong>: ${product.productCategory}
                    </p>
                    <p>
                        <strong>Condition</strong>: ${product.productCondition}
                    </p>
                    <p>
                        <strong>Price</strong>: $${product.productPrice}
                    </p>

                    <br>

                    <c:set var="role" scope="page" value="${param.role}" />
                    <c:set var="url" scope="page" value="/product/productList/all" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>

                    <p ng-controller="cartCtrl">
                    
                        <a href="<c:url value="${url}" />" class="btn btn-default">Back</a>
                        
                        &nbsp;
                        
                        <!-- If not logged in. -->
                        <c:if test="${pageContext.request.userPrincipal.name==null}">
	                        <a href="#" class="btn btn-warning btn-large" ng-click="addToCartCallWithoutLoggedIn()">
	                           <span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; Order Now</a>
	                    </c:if>
	                    
	                    <!-- If logged in and is user. -->
                        <c:if test="${pageContext.request.userPrincipal.name!=null && 
                        	pageContext.request.userPrincipal.name!='admin'}">
	                        <a href="#" class="btn btn-success btn-large" ng-click="addToCart('${product.productId}')">
	                           <span class="glyphicon glyphicon-hand-right"></span>&nbsp; Order Now</a>
	                        &nbsp;
	                        <a href="<spring:url value="/customer/cart" />" class="btn btn-info">
	                        	<span class="glyphicon glyphicon-shopping-cart"></span>&nbsp; View Cart</a>
						</c:if>
						
                    </p>
                </div>
            </div>
        </div>


        <script src="<c:url value="/resources/js/controller.js" /> "></script>
        
        <%@include file="/WEB-INF/views/template/footer.jsp" %>
		
	</div>
</div>
