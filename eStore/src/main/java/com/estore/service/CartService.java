package com.estore.service;

import com.estore.model.Cart;

public interface CartService {

	Cart getCartById(int cartId);

	void update(Cart cart);
}
