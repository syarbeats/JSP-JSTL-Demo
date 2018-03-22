<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Tag Example</title>
</head>
<body>
	<c:import var="data" url="header.jsp"/>
	<c:out value="${data}"/>
	<c:out value="${'Welcome to Java Point'}" />
	<c:set var="Income" scope="session" value="${4000*4}" />
	<c:out value="${Income}"/>  
	<br>
	<br>
	<c:catch var ="catchtheException">  
	   <% int x = 2/0;%>  
	</c:catch>  
	  
	<c:if test = "${catchtheException != null}">  
	   <p>The type of exception is : ${catchtheException} <br/>  
	   There is an exception: ${catchtheException.message}</p>  
	</c:if>  
	
	<c:set var="income" scope="session" value="${4000*4}"/>  
	<p>Your income is : <c:out value="${income}"/></p>  
	<c:choose>  
	    <c:when test="${income <= 1000}">  
	       Income is not good.  
	    </c:when>  
	    <c:when test="${income > 10000}">  
	        Income is very good.  
	    </c:when>  
	    <c:otherwise>  
	       Income is undetermined...  
	    </c:otherwise>  
	</c:choose>  
	
	<c:set value="10" var="num"></c:set>  
	<c:choose>  
		<c:when test="${num%2==0}">  
			<c:out value="${num} is even number"></c:out>  
		</c:when>  
		<c:otherwise>  
			<c:out value="${num} is odd number"></c:out>  
		</c:otherwise>  
	</c:choose>  
	
</body>
</html>