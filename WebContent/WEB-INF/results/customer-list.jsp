<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>      

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Insert title here</title>
	<LINK REL=STYLESHEET HREF="./css/JSP-Styles.css" TYPE="text/css">
	<LINK REL=STYLESHEET HREF="./css/bootstrap.min.css" TYPE="text/css">
</head>
<body> 
	<center><span class="badge badge-success"><h3>Customer List</h3></span></center><br><br>
	
	<table BORDER=5 ALIGN="CENTER">
	<tr>
		<th CLASS="TITLE">FIRSTNAME</th>
		<th CLASS="TITLE">LASTNAME</th>
		<th CLASS="TITLE">SEX</th>
		<th CLASS="TITLE">MARRIED</th>
		<th CLASS="TITLE">AGE</th>
		<th CLASS="TITLE">CHILDREN</th>
		<th CLASS="TITLE">SMOKER</th>
	</tr>
	
	<c:forEach items="${customerList}" var="customer">
	<tr>
	    <td>${customer.fname} ${customer.lname}</td>
	    <td>${customer.sex}</td>
	    <td>${customer.married}</td>
	    <td>${customer.age}</td>
	    <td>${customer.children}</td>
	    <td>${customer.smoker}</td>
	</tr>
	</c:forEach>
	
	</table>
</body>
</html>