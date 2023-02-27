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
<title>Insert title here</title>
</head>
<body>
<div class="container">
<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
		                	 Random rand = new Random();
		                	 int prn=rand.nextInt(10000);
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainsystem","root","Victory3108");
							PreparedStatement stm=connection.prepareStatement("insert into reservation values(?,?,?,?,?,?,?,?,?)");
							stm.setString(1, request.getParameter("name"));
							stm.setString(2, request.getParameter("number"));
							stm.setString(3, request.getParameter("trainno"));
							stm.setString(4, request.getParameter("trainname"));
							stm.setString(5, request.getParameter("date"));
							stm.setString(6, request.getParameter("class"));
							stm.setString(7, request.getParameter("src"));
							stm.setString(8, request.getParameter("dest"));
							stm.setString(9, Integer.toString(prn));
							
							
							int i=stm.executeUpdate();
							
							if(i!=0)
							{
								%>
								<script>alert("Ticket Booked Successfully PRN="+<%=prn%>)</script>
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