package org.dbhaskaran.sweetshop.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dbhaskaran.sweetshop.bo.OrderService;
import org.dbhaskaran.sweetshop.dto.Order;
import org.dbhaskaran.sweetshop.dto.User;

@WebServlet(name = "order_list", urlPatterns = "/order_list")
public class OrderListServlet extends HttpServlet {
	private OrderService oService = new OrderService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User u = (User) request.getSession().getAttribute("user");
		if (u == null) {
			response.sendRedirect("/index");
			return;
		}
		List<Order> list = oService.selectAll(u.getId());
		request.setAttribute("orderList", list);
		request.getRequestDispatcher("/order_list.jsp").forward(request, response);
	}
}
