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
     <%String email=request.getParameter("email");
     String password=request.getParameter("password");
     
     if("admin@123.com".equals(email)&&"admin".equals(password))
     {
    	 session.setAttribute("email",email);
    	 response.sendRedirect("admin/adminHome.jsp");
     }
     else
     {
    	 int z=0;
    	 try
    	 {
    		 Connection con=ConnectionProvided.getCon();
    		 Statement sm=con.createStatement();
    		 ResultSet rs=sm.executeQuery("select * from users where email='"+email+"'&&password='"+password+"'");
    		 while(rs.next())
    		 {
    			 z=1;
    			 session.setAttribute("email",email);
    			 response.sendRedirect("home.jsp");
    		 }
    		 if(z==0)
    		 {
    			 response.sendRedirect("Login.jsp?msg=notexist");
    		 }
    	 }
    	 catch(Exception e)
    	 {
    		System.out.println(e);
    		response.sendRedirect("Login.jsp?msg=invalid");
    	 }
     }%>
</body>
</html>