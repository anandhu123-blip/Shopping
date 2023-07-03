<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.packag.ConnectionProvided"%>
    <%@include file="heder.jsp" %>
    <%@include file="footer.jsp" %>
    <%@page import="java.sql.*" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div style="color: white; text-align: center;font-size: 30px;">Home<i class="fa fa-institution"></i></div>
<table>

<thead>
      
      <tr>
      
         <th scope="col">ID</th>
         <th scope="col">Name</th>
         <th scope="col">Category</th>
         <th scope="col"><i class="fa fa-inr"></i>Price</th>
         <th scope="col">Add to Cart<i class="fas fa-cart-plus"></i></th>
      
      </tr>
      
</thead>
<tbody>

<%
int z=0;
 try
 {
	 String serch=request.getParameter("serch");
	 Connection con=ConnectionProvided.getCon();
	 Statement sm=con.createStatement();
	 ResultSet rs=sm.executeQuery
	 ("select * from product where name like'%"+serch+"%'or category like'%"+serch+"%' and active='yes'");
	 
	 while(rs.next())
	 {
		 z=1;
		 %>
		 <tr>
		 <td><%=rs.getString(1) %></td>
		 <td><%=rs.getString(2) %></td>
		 <td><%=rs.getString(3) %></td>
		 <td><i class="fa fa-inr"><%=rs.getString(4) %></i></td>
		  <td><a href="addToCartAction.jsp?id= <%=rs.getString(1)%>">Add to Cart<i class="fas fa-cart-plus"></i></a></td>
		 </tr>
	<%}
 }
 catch(Exception e)
 {
	 System.out.println(e);
 }
%>

</tbody>

</table>
<%if(z==0)
	{%>
	
	<h1 style="color: Red;align-items: center;">Nothing To Show</h1>
	
	<% }%>
	
	<br>
	<br>
	<br>
</body>
</html>