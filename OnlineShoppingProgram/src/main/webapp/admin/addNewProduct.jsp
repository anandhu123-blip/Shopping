<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.dao.packag.ConnectionProvided"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String msg=request.getParameter("msg");
if("done".equals(msg))
{%>
	<h1>Password changed Successfully.. !</h1>
	
<%}%>

<%if("wrong".equals(msg)) 
{%>

 <h1>some thing went wrong !... Try Again!</h1>
 
<%}%>

<%
int id=1;

  try
   {
	Connection con=ConnectionProvided.getCon();
	Statement sm=con.createStatement();
	ResultSet rs=sm.executeQuery("select max(id) from product");
	
	   while(rs.next())
		{
		  id=rs.getInt(1);
		  id=id+1;
		}
    }
	   catch(Exception e)
	   {
		System.out.println(e);
	   }
   
   
 %>
 <h3 style="color: green;">Product ID :<%out.println(id); %></h3>
 
 <form action="addNewProductAction.jsp" method="post">
   <input type="hidden" name="id" value="<%out.println(id);%>">
   <div class="left-div">
    <h3>Enter Name</h3>
    <input class="input-style" type="text" name="name" placeholder="Enter product Name" required="required">
    <hr>
   </div>
    <div class="right-div">
    <h3>Enter Category</h3>
    <input class="input-style" type="text" name="category" placeholder="Enter Category" required="required">
    <hr>
   </div>
    <div class="left-div">
     <h3>Enter Price</h3>
    <input class="input-style" type="text" name="price" placeholder="Enter Price" required="required">
    <hr>
   </div>
    <div class="right-div">
    <h3>Active</h3>
    <select class="input-style" name="active">
      <option value="yes">Yes</option>
      <option value="no">No</option>
    </select>
    <hr>
   </div>
   <button class="button">Save<i class="far fa arrow-alt-circle-right"></i></button>
 </form>
</body>
</html>