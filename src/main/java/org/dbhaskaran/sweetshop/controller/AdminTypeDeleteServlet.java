package org.dbhaskaran.sweetshop.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dbhaskaran.sweetshop.bo.TypeService;

@WebServlet(name = "admin_type_delete", urlPatterns = "/admin/type_delete")
public class AdminTypeDeleteServlet extends HttpServlet {
	private TypeService tService = new TypeService();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		boolean isSuccess = tService.delete(id);
		if (isSuccess) {
			request.setAttribute("msg", "Successfully Deleted!");
		} else {
			request.setAttribute("failMsg",
					"The category contains products, and the category cannot be deleted directly");
		}
		request.getRequestDispatcher("/admin/type_list").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
