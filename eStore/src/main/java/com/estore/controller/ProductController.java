package com.estore.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.estore.model.Product;
import com.estore.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {

	@Autowired
	private ProductService productService;

	@RequestMapping("/productList/all")
	public String getProducts(Model model) {
		List<Product> products = productService.getProductList();
		model.addAttribute("products", products);

		return "productList";
	}

	@RequestMapping("/viewProduct/{productId}")
	public String viewProduct(@PathVariable int productId, Model model) throws IOException {
		Product product = productService.getProductById(productId);
		model.addAttribute("product", product);

		return "viewProduct";
	}

}
