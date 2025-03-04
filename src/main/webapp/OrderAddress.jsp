
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order address</title>
<style>body {
        font-family: 'Tahoma', sans-serif;
    background-color: #ffecb3;
    display: flex;
    align-items: center;
    height: 100vh;
    margin: 0;
    flex-wrap: nowrap;
    flex-direction: column;
        }
        .forget-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow:  0 0 12px rgba(21, 19, 20, 0.89);
            width: 350px;
        }
        .forget-container h2 {
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
        }</style>
</head>
<body>
<h2>Your Current Address</h2>
<div class="forget-container">
        <form action="/customer/sumbmitorder" method="post">
            <div class="form-group">
                <label for="email"></label>
              <input type="text" name="pid" value="${pid}" hidden="true">
            </div>
              <div class="form-group">
                <label for="address">Address:</label>
                <input type="text" name="pid" value="${pid}" hidden="true">
                <textarea id="ta" name="address" rows="3" required>${address}</textarea>
            </div>
               <div class="button-group">
                <button class="btn-cancel" type="submit" onclick="change()">place</button>
                <a href="CustomerHome.jsp"><button class="btn-cancel" >Back</button></a>
            </div></form>
                   
            </div>

	<script type="text/javascript">
		function change() {
			document.getElementById('ta').disabled = false;
		}
	</script>
</body>
</html>
