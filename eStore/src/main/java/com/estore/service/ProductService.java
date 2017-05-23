package com.estore.service;

import java.util.List;

import com.estore.model.Product;

public interface ProductService {

	List<Product> getProductList();

	Product getProductById(int id);

	void addProduct(Product product);

	void editProduct(Product product);

	void deleteProduct(Product product);
}
