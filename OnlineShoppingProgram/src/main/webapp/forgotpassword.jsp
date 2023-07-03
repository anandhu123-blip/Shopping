<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.packag.ConnectionProvided " %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ForgotPassword</title>
</head>
<body>
<div id="container">
<div class="signup">
<form action="forgotpasswordAction.jsp" method="post">


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
 <input type="submit" value="Save">

</form>
<a href="Login.jsp">Login</a>

</div>

<div class="way sign">
<%String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<h1>Password changed Successfully.. !</h1>
	
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