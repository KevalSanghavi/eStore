package com.estore.service;

import com.estore.model.CustomerOrder;

public interface CustomerOrderService {

	void addCustomerOrder(CustomerOrder customerOrder);

	double getCustomerOrderGrandTotal(int cartId);
}
