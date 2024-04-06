<%@page import="com.jspiders.cardekho_servlets.servlet.DeleteCar"%>
<%@page import="com.jspiders.cardekho_servlets.entity.Car"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
#m1 {
	display :inline-block;
	height: 230px;
	width: 200px;
	margin-top: 20px;
	border: 1px solid;
	border-radius: 20px;
	padding: 25px;
	line-height: 50px;
}
form {
	display: inline-block;
}
input, a {
	border: 1px solid;
	padding: 10px;
	border-radius: 10px;
	margin-left: 10px;
	text-decoration: none;
	color: white;
	cursor: pointer;
}
</style>
</head>
<body>
	<%!String message; %>
	<%
	@SuppressWarnings("unchecked")
	List<Car> cars = (List<Car>) request.getAttribute("cars");
	%>
	<h2>Car Details</h2>
	<a style="background-color: gold;" href="http://localhost:8080/cardekho_servlet/car.jsp">Add Car</a> <br>
	<% if (cars != null && cars.size() > 0) {
	%>
	<div>
		<%
		for (Car car : cars) {
		%>
			<div id="m1">
				<b>Id:</b> <%=car.getId() %> <br>
				<b>Name:</b> <%=car.getName() %> <br>
				<b>Brand:</b> <%=car.getBrand() %> <br>
				<b>Price:</b> <%=car.getPrice() %> <br>
				<form action="carconfirm1.jsp">
					<input hidden="true" type="text" name="id" value=<%=car.getId() %> >
					<input style="background-color: green;" style="background-color: red;" type="submit" value="Edit Car">
				</form>
				<form action="carconfirm.jsp">
					<input hidden="true" type="text" name="id" value=<%=car.getId() %> >
					<input style="background-color: red;" type="submit" value="Delete Car">
				</form>
			</div>
		<%
		}
		message = (String) request.getAttribute("message");
		if(message != null){%>
		<h2><%=message %></h2>
		<%	
		}
		%>
	</div>
	<%
	} else{ %>
	<h2>Car Not Available</h2>
	<%	
	}
	%>
</body>
</html>