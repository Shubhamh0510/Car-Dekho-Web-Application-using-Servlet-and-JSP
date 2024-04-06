<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div {
	height: 290px;
	width: 200px;
	margin: auto;
	margin-top: 20px;
	border: 1px solid;
	border-radius: 20px;
	padding: 25px;
}
h2 {
	text-align: center;
}
input {
	height: 30px;
	width: 180px;
	border: 1px solid;
	border-radius: 10px;
	margin-left: 7px;
	margin-top: 10px;
	text-align: center;
}
.btn {
	border: 1px solid;
	height: 50px;
	width: 80px;
	border-radius: 10px;
	text-decoration: none;
	color: white;
	margin-left: 10px;
	text-align: center;
}
</style>
</head>
<body>
	<div>
		<%!int id; %>
		<%id = (int) request.getAttribute("id"); %>
		<h2>Edit Car Details</h2>
		<form action="edit_car" method="post">
			<input type="text" readonly="readonly" name="id" value="<%=id %>" >
			<input type="text" name="name" placeholder="Car Name">
			<input type="text" name="brand" placeholder="Car Brand">
			<input type="text" name="price" placeholder="Car Price">
			<input class="btn" style="background-color: green;" type="submit" value="Edit">
			<a class="btn" style="background-color: black; padding: 15px 25px;" href="car_search">Back</a>
		</form>
		<%!String message; %>
		<%
			message = (String) request.getAttribute("message");
			if(message != null){
		%>
				<h2 style="margin-top: 30px;"><%=message %></h2>
		<%
			}
		%>
	</div>
</body>
</html>