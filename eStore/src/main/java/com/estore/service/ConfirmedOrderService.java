package com.estore.service;

import java.util.List;

import com.estore.model.ConfirmedOrder;

public interface ConfirmedOrderService {

	List<ConfirmedOrder> getAllPendingOrders();

	void setFulfilled(int confirmedOrderId);

	List<ConfirmedOrder> getAllOrders();
}
