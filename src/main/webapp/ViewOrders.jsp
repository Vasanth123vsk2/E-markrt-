
<%@page import="com.emarket.dto.Item"%>
<%@page import="com.emarket.dto.ShoppingOrder"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
  <style>
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
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .button-group button {
            padding: 10px 50px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .btn-signup {
            background-color: #007bb5;
            color: white;
        }
        .btn-signup:hover {
            background-color: #343a40;
        }
        .btn-cancel {
            background-color: #007bb5;
            color: white;
        }
        .btn-cancel:hover {
            background-color: #343a40;
        }
    </style>
</head>
<body>
<%
	List<ShoppingOrder> orders = (List<ShoppingOrder>) request.getAttribute("orders");
	%>
    <div class="container">
        <h2>Customer Details</h2>
        
        <table>
            <thead>
             <tr>
			<th>Order Id</th>
			<th>Order Date</th>
			<th>Delivery Date</th>
			<th>PAyment Method</th>
			<th>Items</th>
			<th>Total Amount</th>
		</tr>
            </thead>
            <tbody>
      	<%
		for (ShoppingOrder order : orders) {
		%>
	<tr>
			<th><%=order.getId()%></th>
			<th><%=order.getDeliveryDate().minusDays(3)%></th>
			<th><%=order.getDeliveryDate()%></th>
			<th><%=order.getPaymentMode()%></th>
			<th>
				<%
				for (Item item : order.getItems()) {
				%> <%=item.getName()%> <%
 }
 %>
			</th>
			<th><%=order.getTotalPrice()%></th>
		</tr>
		<%
		}
		%>
            </tbody>
        </table>

        <form action="/CustomerHome.jsp">
            <button type="submit">Go Back</button>
        </form>
   </div>
</body>
</html>
