package com.estore.controller.admin;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.estore.model.ConfirmedOrder;
import com.estore.service.ConfirmedOrderService;

@Controller
@RequestMapping("/admin")
public class AdminConfirmedOrders {

	@Autowired
	private ConfirmedOrderService confirmedOrderService;

	@RequestMapping("/pendingOrders")
	public String pendingOrders(Model model) {
		List<ConfirmedOrder> allPendingOrdersList = confirmedOrderService.getAllPendingOrders();
		model.addAttribute("allPendingOrdersList", allPendingOrdersList);

		return "pendingOrders";
	}

	@RequestMapping("/pendingOrders/setFulfilled/{confirmedOrderId}")
	public String setFulfilled(@PathVariable int confirmedOrderId, Model model) throws IOException {
		confirmedOrderService.setFulfilled(confirmedOrderId);
		List<ConfirmedOrder> allPendingOrdersList = confirmedOrderService.getAllPendingOrders();
		model.addAttribute("allPendingOrdersList", allPendingOrdersList);

		return "pendingOrders";
	}

	@RequestMapping("/allOrders")
	public String allOrders(Model model) {
		List<ConfirmedOrder> allOrdersList = confirmedOrderService.getAllOrders();
		model.addAttribute("allOrdersList", allOrdersList);

		return "allOrders";
	}

}
