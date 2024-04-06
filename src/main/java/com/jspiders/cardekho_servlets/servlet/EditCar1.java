package com.jspiders.cardekho_servlets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/edit_car1")
public class EditCar1 extends HttpServlet {

private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("inpid"));
		System.out.println(id);
			req.setAttribute("id", id);
			RequestDispatcher requestDispatcher = req.getRequestDispatcher("caredit.jsp");
			requestDispatcher.forward(req, resp);
	}
	
}
