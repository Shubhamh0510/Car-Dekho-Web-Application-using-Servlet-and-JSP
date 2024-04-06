package com.jspiders.cardekho_servlets.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jspiders.cardekho_servlets.entity.Car;
import com.jspiders.cardekho_servlets.jdbc.CarDB;

@WebServlet("/delete_car")
public class DeleteCar extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String[] inpid = req.getParameterValues("inpid");
		int id = Integer.parseInt(inpid[0]);
		CarDB.deleteCar(id);
		List<Car> cars = CarDB.searchCar();
		req.setAttribute("cars", cars);
		req.setAttribute("message", "Car Deleted Successfully.");
		RequestDispatcher requestDispatcher = req.getRequestDispatcher("carsearch.jsp");
		requestDispatcher.forward(req, resp);
	}
	

}
