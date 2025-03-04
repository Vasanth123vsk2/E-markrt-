
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.emarket.dto.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style> body {
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
        
        }</style>
</head>
<body>
<%
	List<Item> items = (List<Item>) request.getAttribute("items");
	%>
    <div class="container">
        <h2>Cart Details</h2>
        
        <table>
            <thead>
      <tr>
			<th>Id</th>
			<th>Name</th>
			<th>Image</th>
			<th>Description</th>
			<th>Quantity</th>
			<th>Price</th>
			<th>Remove</th>
		</tr>
            </thead>
            <tbody>
      <%
		for (Item item : items) {
		%>
		<tr>
			<th><%=item.getId()%></th>
			<th><%=item.getName()%></th>
			<th>
				<%
				String base64 = Base64.encodeBase64String(item.getImage());
				%> <img src="data:image/jpeg;base64,<%=base64%>" alt="Picture"
				style="width: 100px; height: auto;">
			</th>
			<th><%=item.getDescription()%></th>
			<th><%=item.getQuantity()%></th>
			<th><%=item.getPrice()%></th>
			<th><a href="/customer/cart-remove/<%=item.getId()%>"><button>Remove</button></a></th>
		</tr>

		<%
		}
		%>
            </tbody></table>
            <div class="button-group">
               <a href="/customer/placeorder"> <button type="submit" class="btn-signup"> Buy</button></a>
              <a href="/CustomerHome.jsp">  <button type="reset" class="btn-cancel">Cancel</button></a>
            </div>
</body>
</html>
