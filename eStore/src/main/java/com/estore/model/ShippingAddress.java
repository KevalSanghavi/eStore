package com.estore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class ShippingAddress implements Serializable {

	private static final long serialVersionUID = 989191150380037359L;

	@Id
	@GeneratedValue
	private int shippingAddressId;

	private String apartmentNumber;
	private String streetName;
	private String city;
	private String state;
	private String country;
	private String zipCode;

	@OneToOne
	private Customer customer;

	@OneToOne
	private ConfirmedOrder confirmedOrder;

	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getApartmentNumber() {
		return apartmentNumber;
	}

	public void setApartmentNumber(String apartmentNumber) {
		this.apartmentNumber = apartmentNumber;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public ConfirmedOrder getConfirmedOrder() {
		return confirmedOrder;
	}

	public void setConfirmedOrder(ConfirmedOrder confirmedOrder) {
		this.confirmedOrder = confirmedOrder;
	}

	@Override
	public String toString() {
		return apartmentNumber + ", " + streetName + ", " + city + ", " + state + ", " + country + ", " + zipCode;
	}

}
