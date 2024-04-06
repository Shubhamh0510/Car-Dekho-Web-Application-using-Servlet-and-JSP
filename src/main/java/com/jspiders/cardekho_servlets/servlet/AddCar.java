package com.jspiders.cardekho_servlets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekho_servlets.jdbc.CarDB;

@WebServlet("/add_car")
public class AddCar extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String name = req.getParameter("name");
		String brand = req.getParameter("brand");
		double price = Double.parseDouble(req.getParameter("price"));

		int res = CarDB.addCar(id, name, brand, price);
		if (res == 1) {
			req.setAttribute("message", "Car Added Successfully.");
		} else {
			req.setAttribute("message", "Car Not Added. <br> Please Enter Valid Id.");
		}
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("car.jsp");
		requestDispatcher.forward(req, resp);
	}

}
