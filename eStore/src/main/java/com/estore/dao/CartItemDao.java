package com.estore.dao;

import com.estore.model.Cart;
import com.estore.model.CartItem;

public interface CartItemDao {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);

}
