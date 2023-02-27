<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ page import="java.sql.*"%>
           <%@ page import="java.util.Random"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Style.css">
<meta charset="ISO-8859-1">
<title>Cancel Ticket</title>
</head>
<body>
<div class="container">
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainsystem","root","Victory3108");
							String prn=request.getParameter("prn");
							PreparedStatement stm=connection.prepareStatement("delete from reservation where prn=?");
							stm.setString(1, prn);
							
							
							int i=stm.executeUpdate();
							
							if(i!=0)
							{
								%>
								<script>alert("Ticket Cancelled Successfully with PRN="+<%=prn%>)</script>
								<a href="Index.html"><div class="butn button_slide slide_left">Homepage</div></a>
								<%
								
							}
							
							else
							{
								%>
								
								<h1>Error</h1>
								<a href="Index.html"><div class="butn button_slide slide_left">Homepage</div></a>
								<%
								
								
							}
						
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</div>
</body>
</html>