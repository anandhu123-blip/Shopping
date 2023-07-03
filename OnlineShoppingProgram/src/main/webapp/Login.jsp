<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
     <div id="container">
     <div class="signup">
     <form action="LoginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter you'r Email" required="required">
     <input type="password" name="password" placeholder="Enter you'r Password" required="required">
     <input type="submit" value="Login">
     
     </form>
     <h2><a href="signup.jsp">SignUp</a></h2>
     <h2><a href="forgotpassword.jsp">Forgot Password</a></h2>
     
     </div>
     <div class="whysignLogin">
     
     <%String msg=request.getParameter("msg");
if("notexist".equals(msg))
{%>
	<h1>Incorrect UserName or Password!</h1>
	
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