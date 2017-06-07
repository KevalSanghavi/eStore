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
			<h2>All Orders</h2>

			<p class="lead">View all orders.</p>
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
					<th>Fulfilled?</th>
					<th>Fulfillment Date</th>
				</tr>
			</thead>
			<c:forEach items="${allOrdersList}" var="orders">
				<tr>
					<td>${orders.orderItems.toString()}</td>
					<td>${orders.grandTotal}</td>
					<td>${orders.orderDate}</td>
					<td>${orders.customer.toString()}</td>
					<td>${orders.billingAddress.toString()}</td>
					<td>${orders.shippingAddress.toString()}</td>
					<td>${orders.isFulfilled}</td>
					<td>${orders.fulfillmentDate}</td>
				</tr>
			</c:forEach>
		</table>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>
		
	</div>
</div>
