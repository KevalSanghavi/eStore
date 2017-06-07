package com.estore.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.estore.dao.ConfirmedOrderDao;
import com.estore.model.CartItem;
import com.estore.model.ConfirmedOrder;
import com.estore.model.ConfirmedOrderItem;
import com.estore.model.CustomerOrder;

@Repository
@Transactional
public class ConfirmedOrderDaoImpl implements ConfirmedOrderDao {

	@Autowired
	private SessionFactory sessionFactory;

	public void populateAndSaveConfirmedOrder(CustomerOrder customerOrder) {
		// Populate ConfirmedOrder.
		ConfirmedOrder confirmedOrder = new ConfirmedOrder();
		confirmedOrder.setCustomer(customerOrder.getCart().getCustomer());
		confirmedOrder.setBillingAddress(customerOrder.getCart().getCustomer().getBillingAddress());
		confirmedOrder.setShippingAddress(customerOrder.getCart().getCustomer().getShippingAddress());
		this.setOrderedItems(customerOrder, confirmedOrder);
		confirmedOrder.setGrandTotal(customerOrder.getCart().getGrandTotal());
		this.setOrderDate(confirmedOrder);
		confirmedOrder.setFulfilled(false);

		// Save ConfirmedOrder.
		Session session = sessionFactory.getCurrentSession();
		session.saveOrUpdate(confirmedOrder);
		session.flush();
	}

	private void setOrderedItems(CustomerOrder customerOrder, ConfirmedOrder confirmedOrder) {
		List<ConfirmedOrderItem> confirmedOrderItems = new ArrayList<ConfirmedOrderItem>();
		List<CartItem> cartItems = customerOrder.getCart().getCartItems();
		for (CartItem cartItem : cartItems) {
			ConfirmedOrderItem confirmedOrderItem = new ConfirmedOrderItem();
			confirmedOrderItem.setProduct(cartItem.getProduct());
			confirmedOrderItem.setQuantity(cartItem.getQuantity());
			confirmedOrderItem.setTotalPrice(cartItem.getTotalPrice());
			confirmedOrderItem.setConfirmedOrder(confirmedOrder);
			confirmedOrderItems.add(confirmedOrderItem);
		}
		confirmedOrder.setOrderItems(confirmedOrderItems);
	}

	private void setOrderDate(ConfirmedOrder confirmedOrder) {
		java.util.Date utilDate = new java.util.Date();
		confirmedOrder.setOrderDate(utilDate);
	}

	public List<ConfirmedOrder> getAllPendingOrders() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ConfirmedOrder where isFulfilled = false");
		List<ConfirmedOrder> allPendingOrdersList = query.list();

		return allPendingOrdersList;
	}

	public void setFulfilled(int confirmedOrderId) {
		// Fetch the ConfirmedOrder with the given confirmedOrderId.
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ConfirmedOrder where confirmedOrderId = " + confirmedOrderId);
		ConfirmedOrder confirmedOrder = (ConfirmedOrder) query.list().get(0);

		// Set as fulfilled and set fulfillmentDate.
		confirmedOrder.setFulfilled(true);
		java.util.Date utilDate = new java.util.Date();
		confirmedOrder.setFulfillmentDate(utilDate);

		// Update in the database.
		session.saveOrUpdate(confirmedOrder);
		session.flush();
	}

	public List<ConfirmedOrder> getAllOrders() {
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from ConfirmedOrder");
		List<ConfirmedOrder> allOrdersList = query.list();

		return allOrdersList;
	}

}
