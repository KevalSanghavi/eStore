package com.estore.dao;

import com.estore.model.Cart;

public interface CartDao {

	Cart getCartById(int cartId);

	void update(Cart cart);
}
