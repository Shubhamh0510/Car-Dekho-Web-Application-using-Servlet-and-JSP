package com.jspiders.cardekho_servlets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekho_servlets.jdbc.CarDB;

@WebServlet("/edit_car")
public class EditCar extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] ids = req.getParameterValues("id");
		int id = Integer.parseInt(ids[0]);
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		double price = Double.parseDouble(req.getParameter("price"));

		int res = CarDB.editCar(id, name, brand, price);
		if (res == 1) {
			req.setAttribute("message", "Car Edited Successfully.");
			req.setAttribute("id", id);
		} else {
			req.setAttribute("message", "Invalid Id!!!");
			req.setAttribute("id", id);
		}
		RequestDispatcher requestDispatcher =  req.getRequestDispatcher("caredit.jsp");
		requestDispatcher.forward(req, resp);
	}

}
