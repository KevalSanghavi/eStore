package com.estore.dao;

import java.util.List;

import com.estore.model.ConfirmedOrder;
import com.estore.model.CustomerOrder;

public interface ConfirmedOrderDao {

	void populateAndSaveConfirmedOrder(CustomerOrder customerOrder);

	List<ConfirmedOrder> getAllPendingOrders();

	void setFulfilled(int confirmedOrderId);

	List<ConfirmedOrder> getAllOrders();
}
