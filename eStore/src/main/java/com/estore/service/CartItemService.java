package com.estore.service;

import com.estore.model.Cart;
import com.estore.model.CartItem;

public interface CartItemService {

	void addCartItem(CartItem cartItem);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);

	CartItem getCartItemByProductId(int productId);
}
