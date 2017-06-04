package com.estore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.estore.dao.CustomerOrderDao;
import com.estore.model.Cart;
import com.estore.model.CartItem;
import com.estore.model.CustomerOrder;
import com.estore.service.CartService;
import com.estore.service.CustomerOrderService;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

	@Autowired
	private CustomerOrderDao customerOrderDao;

	@Autowired
	private CartService cartService;

	public void addCustomerOrder(CustomerOrder customerOrder) {
		customerOrderDao.addCustomerOrder(customerOrder);
	}

	public double getCustomerOrderGrandTotal(int cartId) {
		double grandTotal = 0;
		Cart cart = cartService.getCartById(cartId);
		List<CartItem> cartItems = cart.getCartItems();

		for (CartItem item : cartItems) {
			grandTotal += item.getTotalPrice();
		}

		return grandTotal;
	}
}
