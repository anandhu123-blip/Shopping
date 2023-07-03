
    <%@page import="com.dao.packag.ConnectionProvided " %>
    <%@page import="java.sql.*" %>

      <%String email=request.getParameter("email");
      String mobileNumber=request.getParameter("mobileNumber");
      String securityQuestion=request.getParameter("securityQuestion");
      String answer=request.getParameter("answer");
      String newPassword=request.getParameter("newPassword");
      int check=0;
      try
      {
    	  Connection con=ConnectionProvided.getCon();
    	  Statement sm=con.createStatement();
    	  ResultSet rs=sm.executeQuery("select * from user where email='"+email+"'and mobileNumber='"+mobileNumber+"'and securityQuestion='"+securityQuestion+"'and answer='"+answer+"'");
    	  
    	  while(rs.next())
    		  {
    		   check=1;
    		   sm.executeUpdate("update user set password='"+newPassword+"' where email='"+email+"'");
    		   response.sendRedirect("forgotpassword.jsp?msg=done");
    		  }
    	  if(check==0)
    	  {
    		  response.sendRedirect("forgotpassword.jsp?msg=invalid");
    	  }
    	   
      }
      catch(Exception e)
      {
    	System.out.println(e);  
      }
     
      %>
