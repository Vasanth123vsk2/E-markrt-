
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.emarket.dto.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style >
    body {
        font-family: 'Tahoma', sans-serif;
    background-color: #ffecb3;
    display: flex;
    align-items: center;
    height: 100vh;
    margin: 0;
    flex-wrap: nowrap;
    flex-direction: column;
        }
        .container {
            width: 90%;
            max-width: 1200px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow:  0 0 12px rgba(21, 19, 20, 0.89);
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            font-size: 16px;
        }
        table thead {
            background-color: #343a40;
            color: white;
        }
        table th, table td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }
        table tbody tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        table tbody tr:hover {
            background-color: #f1f1f1;
        }
        button {
            display: block;
            width: 150px;
            margin: 0 auto;
            padding: 10px;
            background-color: #007bb5;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #343a40;
        }
</style>
<body>
<%
	List<Product> products = (List<Product>) request.getAttribute("products");
	%>
    <div class="container">
        <h2>Product Details</h2>
        
        <table>
            <thead>
    	<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Image</th>
			<th>Price</th>
			<th>Stock</th>
			<th>Description</th>
			<th>Add to Cart</th>
			<th>Add to Wishlist</th>
		</tr>
            </thead>
            <tbody>
     <%
		for (Product product : products) {
		%>
		<tr>
			<th><%=product.getId()%></th>
			<th><%=product.getName()%></th>
			<th>
				<%
				String base64 = Base64.encodeBase64String(product.getImage());
				%> <img src="data:image/jpeg;base64,<%=base64%>" alt="Picture"
				style="width: 100px; height: auto;">
			</th>
			<th><%=product.getPrice()%></th>
			<th><%=product.getStock()%></th>
			<th><%=product.getDescription()%></th>
			<th><a href="/customer/cart-add/<%=product.getId()%>"><button>Add</button></a></th>
			<th><a href="/customer/wishlist-add/<%=product.getId()%>"><button>Add</button></a></th>	
		</tr>
		<%
		}
		%>
            </tbody></table>
            <form action="/CustomerHome.jsp">
            <button type="submit">Go Back</button>
        </form>

	 
</body>
</html>
