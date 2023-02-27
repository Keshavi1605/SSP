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

<div class="container">
<form action="Reservedb.jsp">
<label>Name</label>
<br>
<input type="text" name="name">
<br>
<label>Contact Number</label>
<br>
<input type="text" name="number">
<br>
<label>Train No</label>
<br>
<input type="text" name="trainno">
<br>
<label>Date of Journey</label>
<br>
<input type="date" name="date">
<br>
<label>Class Type</label>
<br>
<input type="radio" name="class" value="AC"><label>AC</label>
<input type="radio" name="class" value="SL"><LABEL>SL</LABEL>
<br>
<label>From</label>
<br>
<input type="text" name="src">
<br>
<label>To</label>
<br>
<input type="text" name="dest">
<br>
<button type="submit" class="butn button_slide slide_left">Insert</button>

</form>
</div>
</body>
</html>
<%/* 
try
{
	
}
*/
%>