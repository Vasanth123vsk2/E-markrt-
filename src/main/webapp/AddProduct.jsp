
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
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
        .signup-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow:  0 0 12px rgba(21, 19, 20, 0.89);
            width: 350px;
        }
        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input, 
        .form-group select, 
        .form-group textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
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
<h1>${fail}</h1>
<h1>Hello ${merchant.getName()}, Enter Below Details</h1>
    <div class="signup-container">
        <h2>Add Product</h2>
        <form action="/merchant/product-add" method="post" enctype="multipart/form-data" >
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" required>
            </div>

            <div class="form-group">
                <label for="email">price:</label>
                <input type="text" name="price" required>
            </div>

            <div class="form-group">
                <label for="mobile">Quantity:</label>
                 <input type="number" name="stock" required>            </div>

            <div class="form-group">
                <label for="password">Image:</label>
                <input type="file" name="pic" required>
            </div>

            <div class="form-group">
                <label for="dob">Description</label>
                <input type="text" name="description">
            </div>
            <div class="button-group">
                <button type="submit" class="btn-signup">Add Product</button>
                <button type="reset" class="btn-cancel">Cancel</button>
            </div>
        </form><p> have to go Merchant home ? <a href="/MerchantHome.jsp">home</a></p>
</div>
</body>
</html>
