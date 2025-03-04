
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>wishlist-home</title>
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
}

header {
	background: #333;
	color: #fff;
	padding: 1rem 0;
}

.navbar {
	display: flex;
	justify-content: space-between;
	align-items: center;
	width: 90%;
	margin: 0 auto;
}

.logo {
	display: flex;
	align-items: center;
}

.logo img {
	width: 50px;
	height: 50px;
	margin-right: 10px;
}

.logo h1 {
	margin: 0;
}

.nav-links {
	list-style: none;
	display: flex;
}

.nav-links li {
	margin-left: 2rem;
}

.nav-links a {
	color: #fff;
	text-decoration: none;
}

.nav-links a:hover {
	text-decoration: underline;
}

.hero {
	background: url('hero-bg.jpg') no-repeat center center/cover;
	height: 60vh;
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	color: #343a40;
}

.hero h1 {
	font-family: 'Tahoma', sans-serif;
	font-size: 3rem;
}

.hero p {
	font-size: 1.2rem;
	margin: 1rem 0;
}

.btn {
	display: inline-block;
	padding: 0.7rem 1.5rem;
	background: #007bb5;
	color: #fff;
	border: none;
	cursor: pointer;
	text-decoration: none;
	border-radius: 5px;
}

.btn:hover {
	background: #343a40;
}
.container {
    text-align: center;
    background-color: #fff;
    padding: 40px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
}

h1 {
    color: #333;
    font-size: 28px;
    margin-bottom: 30px;
}

.role-options {
    display: flex;
    justify-content: space-around;
    align-items: center;
    gap: 20px;
}

.role {
    background-color: #ffecb3;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.89);
    transition: transform 0.3s ease, box-shadow 0.3s ease;
    width: 200px;
    
}

.role img {
    width: 100px;
    height: 100px;
}

.role p {
    margin-top: 10px;
    font-size: 18px;
    color: #555;
}

.role:hover {
    transform: scale(1.05);
    box-shadow:0 0 12px rgba(21, 19, 20, 0.89);
}

a {
    text-decoration: none;
    color: inherit;
}


footer {
	background: #333;
	color: #fff;
	text-align: center;
	padding: 1rem 0;
	margin-top: 2rem;
}
</style>
</head>
<body>
	<header>

		<nav class="navbar">
			<div class="logo">
				<img
					src="https://dynamic.design.com/preview/logodraft/23afde1a-ad4f-4058-a963-8b6189e79bdb/image/large.png"
					alt="Spicart Logo">
				<h1>Spicart Wishlist</h1>
			</div>
			<ul class="nav-links">
				<li><a href="/">Home</a></li>
				<li><a href="/logout">Logout</a></li>
			</ul>
		</nav>
	</header>
	<center>
		<h1>${pass}</h1>
		<h1>${fail}</h1>
	</center>
	 <div class="container">
        <h1> Customer Wishlist</h1>

        <div class="role-options">
           <div class="role">
                <a href="/customer/wishlist-create/0">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGKHBSmCEENu5SLpfUN0feMQnaWmwjHjAYw&s" alt="Customer">
                    <p>Create Wishlist</p>
                </a>
            </div>
           <div class="role">
                <a href="/customer/wishlist-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1yu9-Pi7dFfHTfyVlKhJ5dMMTWbb1WoE8Yg&s" alt="Merchant">
                    <p>View Wishlist</p>
                </a>
            </div>
        </div></div>
	
	<center>	<h2>
			have to go Customer Home? Click--> <a href="/CustomerHome.jsp">Back</a>
		</h2>	</center>

</body>
</html>
