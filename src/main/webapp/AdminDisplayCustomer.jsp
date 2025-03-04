
<%@page import="org.apache.commons.codec.binary.Base64"%>
<%@page import="com.emarket.dto.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Customers</title>
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
	List<Customer> customers = (List<Customer>) request.getAttribute("customers");
	%>
    <div class="container">
        <h2>Customer Details</h2>
        
        <table>
            <thead>
                <tr>
                    <th>Email</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Date of Birth</th>
                    <th>Address</th>
                </tr>
            </thead>
            <tbody>
              <%
		for (Customer customer : customers) {
		%>
		<tr>
			<th><%=customer.getEmail()%></th>
			<th><%=customer.getName()%></th>
			<th><%=customer.getGender()%></th>
			<th><%=customer.getDob()%></th>
			<th><%=customer.getAddress()%></th>
		</tr>

		<%
		}
		%>
            </tbody>
        </table>

        <form action="/AdminHome.jsp">
            <button type="submit">Go Back</button>
        </form>
    </div>

</body>
</html>

