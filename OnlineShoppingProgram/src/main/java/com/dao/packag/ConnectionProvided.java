package com.dao.packag;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvided 
{
  public static Connection getCon()
  {
	  try
	  {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","akhil");
		return con;
	  } 
	  catch (Exception e)
	  {
		  System.out.println(e);
		  return null;
	  }
	
	  
  }
}
