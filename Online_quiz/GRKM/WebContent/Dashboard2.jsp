<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Dashboard</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="style_dashboard.css">
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	
	<script src="https:??maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>

	<%
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
	
		response.setHeader("Progma","no-cache");
		response.setHeader("Expires", "0");

	if(null!=session.getAttribute("username"))
		{
			String name=session.getAttribute("username").toString();
	        session.setAttribute("username", name);
		}
		else
		{
			response.sendRedirect("index.html");
		}
	%>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<a href="https://www.silicon.ac.in/" class="navbar-brand">Silicon Institute of Technology</a>
			</div>
			<div>
				<ul class="nav navbar-nav navbar-right">
					<li class="active"><a href="https://www.silicon.ac.in/about-silicon.php">About us</a></li>
					<li class="active"><a href="./ShowResult">Result</a></li> 
	
					<li class="active"><a href="logout.jsp">Log out</a></li>
					
				</ul>
			</div>
		</div>
	</nav>
	<% 
		String name=session.getAttribute("username").toString();
		out.println("<h1>Welcome "+name+"</h1>");
		int faca=Integer.parseInt(session.getAttribute("faca").toString());
		int fos=Integer.parseInt(session.getAttribute("fos").toString());
		int fcg=Integer.parseInt(session.getAttribute("fcg").toString());
		int fiot=Integer.parseInt(session.getAttribute("fiot").toString());
		int fadjava=Integer.parseInt(session.getAttribute("fadjava").toString());
		
	%>
	
	 
	<br>
	<table style="border-collapse: separate; border-spacing: 10px; margin:0 auto;">
	<tr>
		
		<th >Subjects</th>
		<th>Duration</th>
		<th>Response</th>
		
	</tr>
	<tr>
		<td>ACA</td>
		<td>15 min</td>
		<td>
		<% if(faca==1)
		  {
			out.println("Already Done");
		  }
		  else
		  { 
			out.println("<form method='post'><input type='hidden' name='subject' value='aca'><button type='submit' formaction='instruction.jsp'>Start</button></form>");
		  } %>	
		</td>
	</tr>
	<tr>
		<td>OS</td>
		<td>15 min</td>
		<td>
		<% if(fos==1)
		  {
			out.println("Already Done");
		  }
		  else
		  { 
			out.println("<form method='post'><input type='hidden' name='subject' value='os'><button type='submit' formaction='instruction.jsp'>Start</button></form>");
		  } %>	
		</td>
	</tr>
	<tr>
		<td>Adj<br> JAVA</td>
		<td>15 min</td>
		<td>
		<% if(fadjava==1)
		  {
			out.println("Already Done");
		  }
		  else
		  { 
			out.println("<form method='post'><input type='hidden' name='subject' value='advjava'><button type='submit' formaction='instruction.jsp'>Start</button></form>");
		  } %>	
		</td>
	</tr>
	<tr>
		<td>IoT</td>
		<td>15 min</td>
		<td>
		<% if(fiot==1)
		  {
			out.println("Already Done");
		  }
		  else
		  { 
			out.println("<form method='post'><input type='hidden' name='subject' value='iot'><button type='submit' formaction='instruction.jsp'>Start</button></form>");
		  } %>	
		</td>
	</tr>
	<tr>
		<td>CG</td>
		<td>15 min</td>
		<td>
		<% if(fcg==1)
		  {
			out.println("Already Done");
		  }
		  else
		  { 
			out.println("<form method='post'><input type='hidden' name='subject' value='cg'><button type='submit' formaction='instruction.jsp'>Start</button></form>");
		  } %>	
		</td>
	</tr>
	</table>
</body>
</html>