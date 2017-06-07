<%@include file="/WEB-INF/views/template/header.jsp"%>


<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>Administrator Page</h2>

            <p class="lead">Administrator options.</p>
        </div>

        <%-- <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h3>
                Welcome: ${pageContext.request.userPrincipal.name} | <a href="<c:url
                value="/j_spring_security_logout" />">Logout</a>
            </h3>
        </c:if> --%>

        <h3>
            <a href="<c:url value="/admin/productInventory" />" >Product Inventory</a>
        </h3>

        <p>View and modify the product inventory.</p>

        <br>
        
        <h3>
            <a href="<c:url value="/admin/pendingOrders" />" >Pending Orders</a>
        </h3>

        <p>View and fulfill all pending orders.</p>

        <br>
        
        <h3>
            <a href="<c:url value="/admin/allOrders" />" >All Orders</a>
        </h3>

        <p>View all orders.</p>

        <br>
        
        <h3>
            <a href="<c:url value="/admin/customer" />" >Customer Management</a>
        </h3>

        <p>View all customer information.</p>


        <%@include file="/WEB-INF/views/template/footer.jsp" %>
		
	</div>
</div>
