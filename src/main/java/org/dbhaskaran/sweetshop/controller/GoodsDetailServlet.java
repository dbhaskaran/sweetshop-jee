package org.dbhaskaran.sweetshop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dbhaskaran.sweetshop.bo.GoodsService;
import org.dbhaskaran.sweetshop.dto.Goods;

@WebServlet(name = "goods_detail", urlPatterns = "/goods_detail")
public class GoodsDetailServlet extends HttpServlet {

	private GoodsService gService = new GoodsService();

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Goods g = gService.getGoodsById(id);
		request.setAttribute("g", g);
		request.getRequestDispatcher("/goods_detail.jsp").forward(request, response);
	}
}
