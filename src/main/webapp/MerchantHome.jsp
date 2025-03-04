
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Merchant Home</title>
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
    width: 300px;
    height:300px:
}

.role img {
    width: 150px;
    height: 150px;
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
				<h2>Spicart Merchant</h2>

			</div>
			<ul class="nav-links">
				<li><a href="/merchant/signup">Signup</a></li>
				<li><a href="/logout">Logout</a></li>
			</ul>
		</nav>
	</header>
	<center>
		<h2>${pass}</h2>
		<h2>${fail}</h2>
	</center>
	 <div class="container">
        <h1>Welcome! Merchant</h1>

        <div class="role-options">
           <div class="role">
                <a href="/merchant/product-add">
                    <img src="data:image/png;base64,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" alt="Merchant">
                    <p>Add Product</p>
                </a>
            </div>

            <div class="role">
                <a href="/merchant/product-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOSw8Lv3lb_UZi_1oTlzmUeivoIFuMDYchYg&s" alt="Customer">
                    <p>View All Product</p>
                </a>
            </div>
        </div></div>
	

	
</body>
</html>
