
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Home Page</title>
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
            <img src="https://dynamic.design.com/preview/logodraft/23afde1a-ad4f-4058-a963-8b6189e79bdb/image/large.png" alt="Spicart Logo">
            <h2>Spicart Customer</h2>
             
        </div>
            <ul class="nav-links">
                <li><a href="/">Home</a></li>
              
                
                 <li><a href="/logout">Logout</a></li>
            </ul>
        </nav>
    </header>
         <center><h1> ${pass} 	${fail} </h1></center>
         <div class="container">
        <h1>Welcome! Customer</h1>

        <div class="role-options">
           <div class="role">
                <a href="/customer/products-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSbGKHBSmCEENu5SLpfUN0feMQnaWmwjHjAYw&s" alt="Customer">
                    <p>View Products</p>
                </a>
            </div>
           <div class="role">
                <a href="/customer/cart-view">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1yu9-Pi7dFfHTfyVlKhJ5dMMTWbb1WoE8Yg&s" alt="Merchant">
                    <p>View Cart</p>
                </a>
            </div>

            <div class="role">
                <a href="/WishlistHome.jsp">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShhhQBlSSz1zjpUjR75JgPiGuEgWE7SGJJOA&s" alt="Customer">
                    <p>Wishlist</p>
                </a>
            </div>
            <div class="role">
              <a href="/customer/orders-view">
                    <img src="data:image/png;base64,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" alt="Merchant">
                    <p>View Orders</p>
                </a>
            </div>
        </div></div>
       
  
    <footer>
        <p>&copy; 2024 Customer. All rights reserved.</p>
    </footer>
</body>
</html>


 