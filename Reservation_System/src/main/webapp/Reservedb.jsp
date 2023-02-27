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
<%
try {
	String name="";
	Class.forName("com.mysql.jdbc.Driver");  
	
	Connection connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/trainsystem","root","Victory3108");
    String no=request.getParameter("trainno");
	PreparedStatement stm=connection.prepareStatement("select Train_Name from train where Train_No=?");
	stm.setString(1, no);
	
	ResultSet rs=stm.executeQuery();
	
	if(rs.next())
	{	
		name=rs.getString(1);
}
	else
	{
		%>
		<h1>Invalid Credentials</h1>
		<%
	}

%>
<div class="container">
<form action="Reservedb1.jsp">
<label>Name</label>
<br>
<input type="text" name="name" value=<%=request.getParameter("name") %>>
<br>
<label>Contact Number</label>
<br>
<input type="text" name="number" value=<%=request.getParameter("number") %>>
<br>
<label>Train No</label>
<br>
<input type="text" name="trainno" value=<%=request.getParameter("trainno") %>>
<br>
<label>Train Name</label>
<br>
<input type="text" name="trainname" value=<%=name%>>
<br>
<%
}
catch (SQLException e) {
	
	e.printStackTrace();
} catch (ClassNotFoundException e) {

	e.printStackTrace();
}
%>
<label>Date of Journey</label>
<br>
<input type="date" name="date" value=<%=request.getParameter("date") %>>
<br>
<label>Class Type</label>
<br>
<input type="radio" name="class" value="AC" value=<%=request.getParameter("class") %>><label>AC</label>
<input type="radio" name="class" value="SL" value=<%=request.getParameter("class") %>><LABEL>SL</LABEL>
<br>
<label>From</label>
<br>
<input type="text" name="src" value=<%=request.getParameter("src") %>>
<br>
<label>To</label>
<br>
<input type="text" name="dest" value=<%=request.getParameter("dest") %>>
<br>
<button type="submit" class="butn button_slide slide_left">Insert</button>

</form>
</div>


</body>
</html>