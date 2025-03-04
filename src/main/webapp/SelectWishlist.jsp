
<%@page import="com.emarket.dto.Wishlist"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select WishList</title>
<style>

    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Tahoma', sans-serif;
    background-color: #ffecb3;
    margin: 0;
    padding: 0;
}.payment-container {
    max-width: 500px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow:0 0 12px rgba(21, 19, 20, 0.89);
    border-radius: 10px;
    text-align: center;
    }
    .product-item {
    background: #f4f4f4;
    margin: 1rem;
    padding: 1rem;
    border-radius: 5px;
    box-shadow: 0 0 12px rgba(21, 19, 20, 0.89);
    max-width: 300px;
    text-align: center;
}
</style>
</head>
<body>
<h1>Select One Option</h1>
 <div class="payment-container">
<div class="product-item">
                   
                    <a href="/customer/wishlist-create/${id}" class="btn">Create New Wishlist</a>
                </div>
                <%List<Wishlist> wishlists=(List<Wishlist>)request.getAttribute("wishlists");
if(wishlists!=null){
	for(Wishlist wishlist:wishlists){
%>
                   <div class="product-item">
                   
                    <a href="/customer/wishlist-add/<%=wishlist.getId()%>/${id}" class="btn"><%=wishlist.getName()%></a>
                </div></div>


<%} }%>

</body>
</html>
