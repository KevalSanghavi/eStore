<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<script>
	$(document).ready(
			function() {
				$('.table').DataTable({
					"lengthMenu" : [ [ 1, 2, 3, 5, 10, -1 ], [ 1, 2, 3, 5, 10, "All" ] ],
					"iDisplayLength": 5
				});
			});
</script>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h2>All Products</h2>

            <p class="lead">Search and explore the product you want.</p>
        </div>

        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>View Product</th>
            </tr>
            </thead>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="<c:url value="/resources/images/${product.productId}.png" /> " alt="image"
                             style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>$${product.productPrice}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a></td>
                </tr>
            </c:forEach>
        </table>

		<%@include file="/WEB-INF/views/template/footer.jsp" %>
		
	</div>
</div>
