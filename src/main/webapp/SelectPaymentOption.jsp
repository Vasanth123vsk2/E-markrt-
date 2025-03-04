
<%@page import="java.util.List"%>
<%@page import="com.emarket.dto.Payment"%>
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

.payment-container {
    max-width: 500px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow:0 0 12px rgba(21, 19, 20, 0.89);
    border-radius: 10px;
    text-align: center;
}

h1 {
    color: #333;
    font-size: 24px;
    margin-bottom: 30px;
}

.payment-option {
    display: flex;
    align-items: center;
    justify-content: start;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 15px;
    margin-bottom: 20px;
    cursor: pointer;
    transition: all 0.3s ease;
}

.payment-option:hover {
    background-color: #e6e6e6;
}

.payment-option input[type="radio"] {
    margin-right: 15px;
}
.btn {
    background-color: #007bb5;
    color: white;
    padding: 15px 25px;
    font-size: 16px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #343a40;
}
</style>
</head>
<body>
 <div class="payment-container">
        <h1>Select Your Payment Method</h1>
<form action="/customer/placeorder" method="post">  
<%List<Payment> list=(List<Payment>)request.getAttribute("list"); %>
<%for(Payment payment:list) {%>
       
            <input type="radio" id="creditCard" name="pid" value=" <%=payment.getId()%>"><%=payment.getName() %> 
    <br><br>        
     <%} %>        
        <button type="submit" class="btn">Proceed to Payment</button>
</form></div>

</body>
</html>
