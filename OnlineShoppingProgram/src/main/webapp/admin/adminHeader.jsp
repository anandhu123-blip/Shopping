<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.dao.packag.ConnectionProvided"%>
    <%@page import="java.sql.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- Header -->

<br>
<div class="topnav sticky">
<%String email=session.getAttribute("email").toString(); %>

      <center><h2>Onlin Shoping</h2></center>
      
      <a href="addNewProduct.jsp">Add New Product<i class="fas fa-plus-square"></i></a>
      
      <a href="allproductEditproduct.jsp">All Products & Edit Products<i class="fab fa-elementor"></i></a>
      
      <a href="">Messages Received<i class="fas fa-comment-alt"></i></a>
      
      <a href="">Orders Received<i class="fas fa-archive"></i></a>
      
      <a href="">Cancel Order<i class="fas fa-window-close"></i></a>
      
      <a href="">Delivered Orders<i class="fas fa-dolly"></i></a>
      
      <a href="adminLogout.jsp">Logout<i class="fas fa-share-square"></i></a>


   </div>
   
    <br>
    
    <!-- Table -->
</body>
</html>