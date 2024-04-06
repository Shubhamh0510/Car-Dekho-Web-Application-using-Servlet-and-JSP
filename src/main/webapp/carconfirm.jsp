<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
div {
	height: 230px;
	width: 180px;
	margin: auto;
	margin-top: 20px;
	border: 1px solid;
	border-radius: 20px;
	padding: 25px;
	line-height: 50px;
}
#name{
	height: 30px;
	width: 150px;
	border: 1px solid;
	border-radius: 10px;
	margin-left: 10px;
	text-align: center;
}
.btn {
	display : inline-block;
	margin-top: 20px;
	border: 1px solid;
	height: 50px;
	width: 80px;
	border-radius: 10px;
	text-decoration: none;
	color: white;
	margin-left: 5px;
}
h3 {
	margin-left: 10px;
}
h2 {
	margin-top: 40px;
	margin-left: 30px;
}
</style>
</head>
<body>
	<%!int id; %>
	<%id = Integer.parseInt(request.getParameter("id"));
	%>
	
	<div>
		<h3>Please Confirm Id</h3>
		<form action="delete_car" method="post">
			<input type="text" id="name" placeholder="Enter id" name="inpid" value=<%=id %> readonly="readonly" >
			<input class="btn" style="background-color: red" type="submit" value="Delete">
			<a class="btn" style="background-color: black; text-align: center;" href="car_search">Back</a>
		</form>
		<%!String message; %>
		<%
		message = (String) request.getAttribute("message");
		if(message != null){%>
		<h2><%=message %></h2>
		<%
		}
		%>
	</div>
</body>
</html>