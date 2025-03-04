
<%@page import="com.emarket.dto.Wishlist"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</head>
<body>
	<%
	List<Wishlist> wishlists = (List<Wishlist>) request.getAttribute("list");
	%>
    <div class="container">
        <h2>Product Details</h2>
        
        <table>
            <thead>
           <tr>
			<th>WishList Name</th>
			<th>View</th>
			<th>Delete</th>
		</tr>
            </thead>
            <tbody>
       <%
		for (Wishlist wishlist : wishlists) {
		%>
		<tr>
			
			<th><%=wishlist.getName()%></th>
			<th><a
				href="/customer/wishlist/product-view/<%=wishlist.getId()%>"><button>View</button></a></th>
			<th><a
				href="/customer/wishlist-delete/<%=wishlist.getId()%>"><button>Delete</button></a></th>
			
		</tr>

		<%
		}
		%>
            </tbody>
        </table>
</div>
        <form action="/CustomerHome.jsp">
            <button type="submit">Go Back</button>
        </form>
   

</body>
</html>
