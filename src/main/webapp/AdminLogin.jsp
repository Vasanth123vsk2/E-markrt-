

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
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
        .login-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow:  0 0 12px rgba(21, 19, 20, 0.89);
            width: 350px;
        }
        .login-container h2 {
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
<h2>${fail }</h2>
<div class="login-container">
        <h2>Admin Login</h2>
        <form action="/admin/login" method="post">
          <div class="error-message" id="error-message"></div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="text" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">password:</label>
                <input type="password" id="password" name="password">            </div>
               <div class="button-group">
                <button type="submit" class="btn-signup"> Login</button>
                <button type="reset" class="btn-cancel">Cancel</button>
            </div></form>
                      <p>Click here to go ? <a href="/">homepage</a></p>
    
            </div>  

	<div class="footer"></div>

	<script type="text/javascript"
		src="/webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>

</body>
</html>
