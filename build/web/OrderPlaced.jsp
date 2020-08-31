<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order Placed</title>
</head>
<body>
<form action="Order">
<c:choose>
	<c:when test="${!empty OrderDetails}">
		<caption><h2 align="center">Order Placed Successfully</h2></caption>
		<table align="center">
			<tr><td>Order Id: </td><td>${OrderDetails.orderId}</td></tr>
			<tr><td style="font: bold">You Need To Pay: </td><td>${OrderDetails.orderValue}</td></tr>
		</table>
		<a href="OrderPlacedSuccessfully" style="margin-left: 410px">Back To Book Details</a>
	</c:when>
	<c:otherwise>
		Unable To Place Order
	</c:otherwise>
</c:choose>
</form>
</body>
</html>