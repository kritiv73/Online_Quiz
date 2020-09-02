<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Instruction</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<style>
			.button {
			    font-family: Arial, Helvetica, sans-serif;
				outline: 0;
				background:  linear-gradient(rgba(255,0,128,0.6),rgba(0,0,128,0.6));
				width: 20%;
				border: 0;
				padding: 15px;
				color: white;
				font-size: 16px;
				cursor: pointer;
				border-radius: 3rem;
				overflow: hidden;
			}
			
			.button2 {background:  linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0));
			background-color: #f44336;
						width: 15%;
						font-size: 16px;
						border-radius: 0rem;
						}
			.button3 {
						width: 20%;
						font-size: 20px;
						margin-left: 40%;
						border-radius: 3rem;
						}
		

	</style>
</head>
<body>
	<% String name=session.getAttribute("username").toString();
		String subject=request.getParameter("subject");
		session.setAttribute("username", name);
		session.setAttribute("subject", subject);
	%>
	<nav class="navbar navbar-inverse">
		<div class="container">
			<div class="navbar-header">
				<h3><font color="grey">Silicon Institute of Technology</font></h3>
			</div>
			
		</div>
	</nav>
	<h1>Quiz Instructions</h1><br>
	<h2>Please read the instructions carefully.</h2>
	<ul style="font-size: 17px;">
	<li>&#10004;Navigate to the question(click the Next or Previous button)</li>
	<li>&#10004; Read the question</li>
	<li>&#10004; Read the options</li>
	<li>&#10004;Select the option</li>
	<li>&#10004; Click on <button class='button'>Next</button> or <button class='button'>Previous</button> for every question.</li>
	<li><b>If you want to Quit,click on 'Submit'.</b></li>
	<li><b>Important:</b>If clicked on <button class="button button2">Final Submit</button> then your quiz will be directly submitted and you <b>'can not reappear the quiz'</b></li>
	<li>Once the <b>Timer is out</b>, your quiz will be automatically submitted</li>
	<li>You can change your option at any time during the Quiz,but don't forget to click on <b>'Next'</b> or <b>'Previous'</b>button.</li>
</ul><br><br>
	<form method="post" action="./SubjectServlet">
	<button class="button button3" type="submit">Start Quiz</button>
	</form>
</body>
</html>