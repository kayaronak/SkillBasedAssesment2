<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<style>
table {
	border-collapse: collapse;
}
th, td {
	text-align: left;
	padding: 8px;
	border-bottom: 1px solid #ddd;
}
tr:nth-child(even) {
	background-color: #f2f2f2
}
th {
	background-color: #4CAF50;
	color: white;
}
</style>


<title>Products List Page</title>
</head>
<body>


<h2>Welcome <security:authentication property="principal.username"/></h2>
<h2>Available Products</h2>
<br>
<a href="${pageContext.request.contextPath}/user/show-kit">View Cart</a>
<hr>

	<table>
		<thead>
			<th>Product Name</th>
			<th>Product Description</th>
			<th>Product Cost</th>
			<th></th>
		</thead>

		<tbody>
			<core:forEach var="product" items="${productList}">
				<tr>
					<td>${product.productName}</td>
					<td>${product.productDescription}</td>
					<td>${product.cost}</td>
					<td><a href="${pageContext.request.contextPath}/user/add-to-cart/${product.id}"><button>Add	to Cart</button></a></td>
				</tr>
			</core:forEach>
		</tbody>
	</table>


</body>
</html>