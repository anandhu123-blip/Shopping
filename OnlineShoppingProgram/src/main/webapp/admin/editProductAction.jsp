    <%@page import="com.dao.packag.ConnectionProvided"%>
    <%@page import="java.sql.*"%>
    
    <%
     String id=request.getParameter("id");
    String name=request.getParameter("name");
    String category=request.getParameter("category");
    String price=request.getParameter("price");
    String active=request.getParameter("active");
    
    try
    {
    	Connection con=ConnectionProvided.getCon();
    	Statement sm=con.createStatement();
    	sm.executeUpdate("update product set name='"+name+"',category='"+category+"',price='"+price+"',active='"+active+"' where id='"+id+"'");
    	if(active.equals("no"))
    	{
    		sm.executeUpdate("delete from cart where product_id='"+id+"' and address is Null");
    	}
    	response.sendRedirect("allproductEditproduct.jsp?msg=Done");
    }
    catch(Exception e)
    {
    	System.out.println(e);
    	response.sendRedirect("allproductEditproduct.jsp?msg=wrong");
    }
    
    
    
    %>
