<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Result</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a href="https://www.silicon.ac.in/" class="navbar-brand">Silicon Institute of Technology</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="https://www.silicon.ac.in/about-silicon.php">About us</a></li>
					<li class="active"><a href="./DashboardServlet">Home</a></li>
					<li class="active"><a href="logout.jsp">Log out</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<% String subject=session.getAttribute("subject").toString();
	String total_ques=session.getAttribute("total_ques").toString();
	String total_attempt=session.getAttribute("total_attempt").toString();
	String mark=session.getAttribute("mark").toString();%>
	
	<table style="border-collapse: separate; border-spacing: 10px; margin:0 auto;">
	<tr>
	<th>Subject</th>
	<th>Total Question</th>
	<th>Total attempt</th>
	<th>Marks</th>
	</tr>
	<tr>
	<td><%=subject%></td>
	<td><%=total_ques%></td>
	<td><%=total_attempt%></td>
	<td><%=mark%></td>
	</tr>
	</table>
</body>
</html>