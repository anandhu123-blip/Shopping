<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.dao.packag.ConnectionProvided"%>
<%@page import="com.dao.packag.ConnectionProvided " %>
    <%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="color: red; text-align: center;font-size: 40px;">All product & Edit Product<i class="fab fa-elementor"></i></div>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
  {%>
  <h3 class="alert">Product successfully Updated!..</h3>
	<% }%>
	<%if("wrong".equals(msg)) 
	{%>
	<h3 class="alert">Some thing Wrong !... Try again</h3>
	<%}%>
<table>
   <thead>
     <tr>
         <th scope="col">ID</th>
         <th scope="col">Name</th>
         <th scope="col">Category</th>
         <th scope="col"><i class="fa fa-inr"></i>Price</th>
         <th scope="col">Edit<i class="fas fa-pen-fancy"></i></th>
     </tr>
  </thead>
</table>
  
</body>
<table>
<tbody>
     <tr>
  <%
   try
     {
	   Connection con=ConnectionProvided.getCon();
	   Statement sm=con.createStatement();
	   ResultSet rs=sm.executeQuery("select * from product");
	   
	   while(rs.next())
		   {%>
		      <td><%=rs.getString(1)%></td>
		      <td><%=rs.getString(2)%></td>
		      <td><%=rs.getString(3)%></td>
		      <td><i class="fa fa-inr"><%=rs.getString(4)%></i></td>
		       <td><%=rs.getString(5)%></td>
		        <td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit<i class="fas fa-pen-fancy"></i></a></td>
		        </tr>
		    <%
		   }
     }
     catch(Exception e)
       {
    	 System.out.println(e);
       }
     
  %>


</tbody>
</table>
<br>

<br>

<br>

</html>