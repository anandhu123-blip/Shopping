<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/signup-style.css">
<title>Insert title here</title>

</head>
<body>
<div id="container">
<div class="signup">
<form action="SignupAction.jsp" method="post">

 <input type="text" name="name" placeholder="Enter you'r Name" required="required">
 <input type="email" name="email" placeholder="Enter you'r Email" required="required">
 <input type="number" name="mobileNumber" placeholder="Enter you'r Mobile Number" required="required">
 <select name="securityQuestion">
     <option value="what was your first car?">what was your first car?</option>
     <option value="what was your second place?">what was your second place?</option>
     <option value="what is your pet name?">what is your pet name?</option>
     <option value="your first school?">your first school?</option>
 </select>
 <input type="text" name="answer" placeholder="Enter you'r answer" required="required">
 <input type="password" name="password" placeholder="Enter you'r password" required="required">
 <input type="submit" value="signup">

</form>
<a href="Login.jsp">Login</a>

</div>

<div class="way sign">
<%String msg=request.getParameter("msg");
if("valid".equals(msg))
{%>
	<h1>SUCCESSFULLY Registered !</h1>
	
<%}%>

<%if("invalid".equals(msg)) 
{%>

 <h1>some thing went wrong !... Try Again!</h1>
 
<%}%>

<h2>Online Shopping</h2>

<p>The online shopping system is the application that allows the users to shop online with out going to the shops to busy them......!</p>

</div>

</div>
</body>
</html>