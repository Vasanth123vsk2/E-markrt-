
<%@page import="com.emarket.dto.Item"%>
<%@page import="java.util.List"%>
<%@page import="com.emarket.dto.ShoppingOrder"%>
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
        button:hover {
            background-color: #343a40;
        }
        </style>
</head>
<body>
	<h2>${pass}</h2>

	<%
	ShoppingOrder order = (ShoppingOrder) request.getAttribute("order");
	List<Item> items = order.getItems();
	%>
    <div class="container">
        <h2>Customer Details</h2>
        
        <table>
           
            <tbody>
       	<%
		for (Item item : items) {
		%>
			<tr>
			<th>Product name----:<%=  item.getName()%></th>

			<th>Quantity--------:<%=  item.getQuantity()%></th>

			<th>Price-----------:<%=  item.getPrice()%></th>
		</tr>

		<%
		}
		%>
		<tr>
		
		    <th>Customer Name--:  ${customer.getName() }</th> 
	    	<th>Payment Method--: ${order.getPaymentMode()}</th>
			<th>Expected Delivery Date--:  ${order.getDeliveryDate()}</th>
			
		</tr>
            </tbody>
        </table>
        Total Price:${order.getTotalPrice()}
        <br>
        <div class="button-group">
	<button onclick="window.print()">Print</button>
	<br>
	<a href="/CustomerHome.jsp"><button>Back</button></a>
    </div>
	</div>
	
</body>
</html>
