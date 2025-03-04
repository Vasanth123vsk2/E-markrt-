<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Home Page</title>
<style>
/* Basic Reset */
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
				<h2>Spicart Admin</h2>

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
        <h1>Welcome! Admin</h1>

        <div class="role-options">
           <div class="role">
                <a href="/admin/product-approve">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxW_EjwUiSxg2DoWQhtLaEKxFhuan0GUhQhQ&s" alt="Customer">
                    <p>Approve product</p>
                </a>
            </div>
           <div class="role">
                <a href="/admin/customer-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmkK8lQFsk8FUsDFCUoD-2yuc7TRHBRsU-3w&s" alt="Merchant">
                    <p>View All Customer</p>
                </a>
            </div>

            <div class="role">
                <a href="/admin/merchant-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTX6BzLEs0TQwbQYCM52R6yiYnXgLASUnsJJw&s" alt="Customer">
                    <p>View All Merchant</p>
                </a>
            </div>
            <div class="role">
              <a href="/admin/payment-add">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT13s03zArW1RDX4jiF50apIQrGrzIedcwpw&s" alt="Merchant">
                    <p>Add Payment Method</p>
                </a>
            </div>
        </div></div>
       
	
	<footer>
		<p>&copy; 2024 Merchant. All rights reserved.</p>
	</footer>
</body>
</html>
