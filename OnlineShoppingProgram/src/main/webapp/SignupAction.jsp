<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.dao.packag.ConnectionProvided " %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country ="";

try
  {
	Connection con=ConnectionProvided.getCon();
	PreparedStatement ps=con.prepareStatement("insert into users values(?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, name);
	ps.setString(2, email);
	ps.setString(3,mobileNumber);
	ps.setString(4, securityQuestion);
	ps.setString(5, answer);
	ps.setString(6,password);
	ps.setString(7, address);
	ps.setString(8, city);
	ps.setString(9, state);
	ps.setString(10, country);
	
	ps.executeUpdate();
	
	
	
	response.sendRedirect("signup.jsp?msg=valid");
  }
  catch(Exception e)
  {
	  response.sendRedirect("signup.jsp?msg=invalid");
	  System.out.println(e);
  }
%>
</body>
</html>
