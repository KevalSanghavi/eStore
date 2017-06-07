package com.estore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
public class ConfirmedOrderItem implements Serializable {

	private static final long serialVersionUID = 8092571542841662503L;

	@Id
	@GeneratedValue
	private int confirmedOrderItemId;

	@ManyToOne
	@JoinColumn(name = "confirmedOrderId")
	@JsonIgnore
	private ConfirmedOrder confirmedOrder;

	@ManyToOne
	@JoinColumn(name = "productId")
	private Product product;

	private int quantity;
	private double totalPrice;

	public int getConfirmedOrderItemId() {
		return confirmedOrderItemId;
	}

	public void setConfirmedOrderItemId(int confirmedOrderItemId) {
		this.confirmedOrderItemId = confirmedOrderItemId;
	}

	public ConfirmedOrder getConfirmedOrder() {
		return confirmedOrder;
	}

	public void setConfirmedOrder(ConfirmedOrder confirmedOrder) {
		this.confirmedOrder = confirmedOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}

	@Override
	public String toString() {
		return " Product: " + product.toString() + " (Quantity: " + quantity + ").  ";
	}

}
