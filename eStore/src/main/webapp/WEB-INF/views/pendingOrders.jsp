<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
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
			<h2>Pending Orders</h2>

			<p class="lead">View and fulfill all pending orders.</p>
		</div>

		<table class="table table-striped table-hover">
			<thead>
				<tr class="bg-success">
					<th>Products</th>
					<th>Grand Total</th>
					<th>Order Date</th>
					<th>Customer</th>
					<th>Billing Address</th>
					<th>Shipping Address</th>
					<th>Action</th>
				</tr>
			</thead>
			<c:forEach items="${allPendingOrdersList}" var="pendingOrders">
				<tr>
					<td>${pendingOrders.orderItems.toString()}</td>
					<td>${pendingOrders.grandTotal}</td>
					<td>${pendingOrders.orderDate}</td>
					<td>${pendingOrders.customer.toString()}</td>
					<td>${pendingOrders.billingAddress.toString()}</td>
					<td>${pendingOrders.shippingAddress.toString()}</td>
					<td><a href="<spring:url value="/admin/pendingOrders/setFulfilled/${pendingOrders.confirmedOrderId}" />" 
						class="label label-success">
						<span class="glyphicon glyphicon-ok"></span>&nbsp; Set as Fulfilled</a> </td>
				</tr>
			</c:forEach>
		</table>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>
		
	</div>
</div>
