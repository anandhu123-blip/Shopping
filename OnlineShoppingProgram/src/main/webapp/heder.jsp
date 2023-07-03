<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
      
      <a href=""><%out.print(email); %><i class="fas fa-user-alt"></i></a>
      
      <a href="home.jsp">Home<i class="fa fa-institution"></i></a>
      
      <a href="">My Cart<i class="fas fa-cart-arrow-down"></i></a>
      
      <a href="">My order<i class="fab fa-elementor"></i></a>
      
      <a href="">Change details<i class="fa fa-edit"></i></a>
      
      <a href="">Message Us<i class="fas fa-comment-alt"></i></a>
      
      <a href="">About<i class="fa fa-address-book"></i></a>
      
      <a href="logout.jsp">Logout<i class="fas fa-share-square"></i></a>
        
        <div class="serch-container">
        <form action="serchHome.jsp" method="post">
            <input type="text" name="serch" placeholder="Serch Here">
            <button type="submit"><i class="fa fa-serch"></i></button>
        </form>
        
        <i class="fa fa-serch"></i>
        
        </div>

   </div>
   
    <br>
    
</body>
</html>