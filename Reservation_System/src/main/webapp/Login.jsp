<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ page import="java.sql.*"%>
      <%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
 try {
		                	Class.forName("com.mysql.jdbc.Driver");  
							
		                	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainsystem","root","Victory3108");
		                	Statement stmt=connection.createStatement(); 
						    String name=request.getParameter("username");
							String pass=request.getParameter("password");
							PreparedStatement stm=connection.prepareStatement("select * from users where username=? and password=?");
							stm.setString(1, name);
							stm.setString(2, pass);
							
							ResultSet rs=stm.executeQuery();
							
							if(rs.next())
							{
								session.setAttribute("user",name);
								
						%>
							<div class="container">
						<H1>Welcome <%=name %></H1>
						<br>
						<a href="Reservation.jsp"><div class="butn button_slide slide_left">Reservation Form</div></a>
						<a href="Cancellation.html"><div class="butn button_slide slide_left">Cancellation Form</div></a>
					
						
						</div>	
		<%
		}
							else
							{
								%>
								<h1>Invalid Credentials</h1>
								<%
							}
		                }
						 catch (SQLException e) {
							
							e.printStackTrace();
						} catch (ClassNotFoundException e) {
					
							e.printStackTrace();
						}
%>
</body>
</html>