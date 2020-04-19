package org.dbhaskaran.sweetshop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.dbhaskaran.sweetshop.dto.User;

@WebFilter(filterName = "AdminFilter", urlPatterns = "/admin/*")
public class AdminFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws ServletException, IOException {
		HttpServletRequest request = (HttpServletRequest) req;
		HttpServletResponse requestp = (HttpServletResponse) resp;
		User u = (User) request.getSession().getAttribute("user");
		if (u == null || u.isIsadmin() == false) {
			requestp.sendRedirect("../index.jsp");
		} else {
			// pass the request along the filter chain
			chain.doFilter(req, resp);
		}
	}

	public void init(FilterConfig config) throws ServletException {

	}

}
