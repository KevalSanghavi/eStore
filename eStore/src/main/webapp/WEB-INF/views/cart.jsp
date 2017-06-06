<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@include file="/WEB-INF/views/template/header.jsp"%>

<div class="container-wrapper">
	<div class="container">
		<section>
			<div class="container">
				<div class="page-header">
					<h2>Cart</h2>
	
					<p class="lead">All the selected products in your shopping cart.</p>
				</div>
			</div>
		</section>

		<section class="container" ng-app="cartApp">
			<div ng-controller="cartCtrl" ng-init="initCartId('${cartId}')">
				<div>
					<a class="btn btn-danger pull-left" ng-click="clearCart()"><span
						class="glyphicon glyphicon-remove-sign"></span>&nbsp; Clear Cart</a>
					<a href="<spring:url value="/order/${cartId}"/>"
						class="btn btn-success pull-right"><span
						class="glyphicon-shopping-cart glyphicon"></span>&nbsp; Checkout </a>
				</div>
				
				<br/><br/><br/>
				
				<table class="table table-hover">
					<tr>
						<th>Product</th>
						<th>Unit Price</th>
						<th>Quantity</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
					<tr ng-repeat="item in cart.cartItems">
						<td>{{item.product.productName}}</td>
						<td>{{item.product.productPrice}}</td>
						<td>{{item.quantity}}</td>
						<td>{{item.totalPrice}}</td>
						<td><a href="#" class="label label-danger"
							ng-click="removeFromCart(item.product.productId)">
							<span class="glyphicon glyphicon-remove"></span>&nbsp; Remove</a></td>
					</tr>
					<tr>
						<th></th>
						<th></th>
						<th>Grand Total</th>
						<th>{{calGrandTotal()}}</th>
						<th></th>
					</tr>
				</table>
				
				<br/>
				
				<a href="<spring:url value="/product/productList/all" />" class="btn btn-default">Continue Shopping</a>
			</div>
		</section>


		<script
			src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
		<script src="<c:url value="/resources/js/controller.js" /> "></script>
		
		<%@include file="/WEB-INF/views/template/footer.jsp"%>
		
	</div>
</div>
