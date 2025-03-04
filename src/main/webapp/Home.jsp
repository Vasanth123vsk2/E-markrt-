
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spicart - Home</title>
<link rel="stylesheet"
	href="/webjars/bootstrap/5.3.0/css/bootstrap.min.css">


<style>
body {
	font-family: 'Tahoma', sans-serif;
	background-color: #ffecb3;
	margin: 0;
	padding: 0;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	background-color: #343a40;
	padding: 10px 20px;
	color: white;
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
.main-content {
	padding: 20px;
}
.featured-products h2 {
	text-align: center;
}

.footer {
	background-color: #343a40;
	color: white;
	text-align: center;
	padding: 10px 0;
	position: fixed;
	bottom: 0;
	width: 100%;
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

</style>
</head>
<body>
	<header class="header">

		<div class="logo">
			<img
				src="https://dynamic.design.com/preview/logodraft/23afde1a-ad4f-4058-a963-8b6189e79bdb/image/large.png"
				alt="Spicart Logo">
			<h2>Spicart</h2>
		</div>
		
	</header>
	<center>
		<h2>${fail}</h2>
		<h2>${pass}</h2>
	</center>
	
  <div class="container">
        <h1>Welcome! Spicart Choose Your Role</h1>

        <div class="role-options">
            <div class="role">
                <a href="AdminLogin.jsp">
                    <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJQAAACUCAMAAABC4vDmAAABSlBMVEX///+ncvJ8Vtg/Pz9ZWVni4uL/wab/3MDExMRUVFT5qZGkbfJ7VNhPT0+mcPL/17s2NjZzc3Ompqbt7e14UNjQ0ND8+v/c3Ny0iPR2TNfGx8M8Pjfq3/zYwvl/Wtjx6f2hZ/Guf/Pp6+NpaWlWWFP1uK+AV+KZmZlUWE7k1fv07v3BnvaNaL+rlOWgiNzalKO7lPXRt/jGpfa0fuj7spmeitN8Y59/Xq+eb+Hx0bfsuJ9wQ9Xd2eS2qd5USnCJiYm1tbVhXGk1Oyqxod6La9zJweDLlrzSx+/z4NG0rMtMRleyneaWbNJvYIdkXHFnVYF3W6BnUKRyVLtgTJadgN7OtaGxno+Wh3yBeHBtXFWCaV+lgnKzkoJ3VchZS4OIdJrzzcrOpOHlvs+3h8URJCrdtNXMnoqmeMnao7XHo8rCvszayMSMhZgkJCTl1pvfAAAOGklEQVR4nMWceXvaxhbGzSIHqkFgMyyyQWxxHPBScOPENhAcI+IQkzZNsbP3+qa3aerefP9/78xom5FGYgTG933y1C6x0S/nnDnLaMTKyiLKV0rNcuegXazVIooSqdWK7YNOuVmq5Bd62/l5Ws3OTrGmVKtVWVYiphRZlqvVSK2402m27pYsXykfFBEOgrFxaKGXEZpcPCjfmckq5XYNWYRHw6IhC9ba5cryiVrloiwAZAtZrLhcrnxpp1blOizIYEq1tlNalhuRkapyWCTLXsVyawlI+XJRCeE2D5Zy+1j5ck1W5rOSJUWulW/Vic3anH5jsZRa89aQSjvVBRzHYFXbpVtBanUit4SEJUc6txBapWL19pCwqsVFfZi/VTMZUiKdhQK+0ubmSsWlsFjV9gI5vskrKAhhMtkleoK0uzs5ivDrsr9keW4XdjjXUiJHr189iz8kOiPafPn0ySRkylCUzlxIrQNeNB29evbw/v04UTJmanMz9vgorLEO5liF+baXSVEePzOBGCjMFXsSlqoYOtxLNQ7T0auH8TgfKhY7exoOKiLXQibSCpfp5/txf6jY2S+hqUItwqYIkxtqHluFWIQ8O0Uir1xMHqjY2euwcSVuK148RSKP3UxeqNjmk5D5Xziu8jwmZfLMzcSDeqmFg0JUQmuwxckFCOrxQwGo2NmvPlSkGvFKktwWyVfcnKkc0QnKH2rzqcalIkRogkaTtIfqYDZTh9+pPPEy8aBiZ28Aj0o+yLdarR7ShcdW1ZkVp8lFikR+EYX6DUQZKoUyh4Q0jHrffEZiqPgUVp73uFCxlw+itK3MwZ6CglHSrVPXUeTAxMAreOTXjrxh7gMVexClqORI86CKe3MKCmiKclAqUleS20FL0CegUEIQh4pGHSqShnZkWWmXLajRVFNBR5J6NFVQWPkFVETZtaGSRCxUBslef58BxtIMO+HUmN9pNw1LSESjvUP8hbFVxDeHtop+VcK2VOPy8urq7bt3DSQTKpV6/+Hjx08fMwwUpvKkawNKqtfJlx6VpJWiX7byc54DlXx3j+jY0ImpVaSTDOU+QqV4SojEqE7bys+BJT8kJ9CTb+9RSq9SsqEemFDgyOMSyUXVo13Dd6DPyiMyU0Lqyh/KSQkmlO5Z6JJbUwdK3uExNQOHTqNvSV36Qq2+J6ba/N2CikLdHSceJpXKaFVOCs3XAnohufYvA+rYH+oDgTp7HQU21aQSCKVDHHnONbzJqhzgPOWn60uSBZIBUJ+MoDp5rtlUKhO9rUqvRzP1u+QHnX95OZShIl/uHRsZIQiKML1fXX0OOVGVP9/XANAvRhSVQW/bSqm53R1kKPnfKAmsJZ2M4A+V+bC6ujXBFwMAqBcO0wVUAX5Ju3AW35C85NRvt6n88yaunl8QwdukOyO4oE7eY6hP6Ls/AKozWOf2+++rpk+BumdTjXQkZC7LVu4MWg5wnlK7RgRXGMrICJeXxzTUydcTB+or+u45iML9CpLz9l0rzBAV7UFJ2odR21YKY6p8MSjMCdQljikMddxAte/SgfqICt+HExMqdmJC7TF+0O3Yx5mCSaD7JALNrosZmkvBG2PYfemrVDyOWI7foq9JEvFpe9FlPho5gXzF7mOhmqrDhEzV80KZtqrSaX0naDJS5C/EW1cE5bhhp/a0k55SBI84D0FBF1SZhoqq/boHyrQVndYrtUBDmVD3ruIYKs5CGYk8hqH+82mVD3XBQg15UIatqOG0HOy96p/mcsMBfvwORzx2pNt9X7+a6/AvN9R5l4E650EZWbTqhHpAPmCgjLalkUoZyzBtlhcj0B15oJiYinY5MRU1u1WlaHtvxk0gnDxpKk9K+MowbenuQM9PocMEp3UuFLGVUrX8N8N7KCcw1cUnedr6hi4Dpk0ke4Gfd+2cAKCTp/AcSPNqjv/8RhjKVDshoLZIUgKqqnadjD60MjqEfSejd9EPURkM28oabGasPULVvr6+FoHa2vpm9uioqKl7Ti7sayoEAKr62PHcIcSljxHqoQ3/lQU2nOUHmuah8kI916LUPx1oVN9W6U8n+v645wRUz01EZJYa7o6GR5o6nA01gcx12H4qn+8V6ArT7/KgABlbA+sebazP7nD3QH1j8hHjPiKmEiP3qRwoo4luie7LV/+eBfUXpN8eTN39reQSl6qLgyp4YKCkRI6Dob6xTBNPz+2Gqk8hBwqvWf8R1OPAv4OhJkyMAM3Tc7uZRhonqki/GtghsKaqXQdBPWejHKXJ80AoPhPK+DjOxbeZ5XYA1JbuvgQw++F8ngdVH3FTAho3WiKp0xEb6yzUxBsfQMVUrYnWrzhQvfFkgkpy/ZxrJ/RL0dJKKcw9REX50w/qD07MorReRkwQQDC0oPoahOq0J42ifCYUVE3xxWdSfeFDcZlwXPWneN2rexbUEEcenPrZCanbnNkiuCT/dM2D+hH6XMOsbtCBAvbL6D/e6kfqQCfcjQvlp63VtAfqhx/5hnIu5IIiYGgy1CcTz/qA+4KVj4GyqCyoRz/MhILTEtIIad9m6Ep1KZfY6GP30mCwGLgr5Qe1anClLaTZUFGoGr2T6U38BbfFCGqoYqNRVECf1Z/7QWGu9KNHhEgEyricEUEADvtoRZpQfRVCfUx1xUBbqYVioqFQKNkSgzKl7kn1i+4Ut6C5ROJmqGvjjZupXZwx1NyWYqF8V7jHXMbcZ4w0CCqxQf4kqOK8Es5QsnLAh9KhKBa8oGoNhjK0QVGFgpJrB6P6Cw7Uo38S46l/OmSYmAnLgUps3NhvsBKiHMsHI/xGaS/UNX7P8UQVwAIavZVAQx3av70ieExFkeWdkflux26oS9MBY13AhyimuFBOpEeDA13Bx26Jqu2R81YnLNSW4wFUblUiCPmNSZTZ4OgZMW5A2SGlBeYpOVLb6XTKWPSmBPIg0eojoq0E5YPEuE80PNQ1bt+AoK2Zpq93u+rhjYG1MVbNtQKCoGRlxzmUnGW7RqrMpBOMCnUiZIX+FHqwwGRv3/IeyprYmROTKnG4v28M15p/mZHZk1ccqjSHKUe1lvXR1B36sF+3TG41w+rUsvKGEeuozPgV5Kr7jBoL9cKC+sdlKOanCvuqB8pCHppmBNGxHVcGVM2vdVE8o0jWQ5WexUT2yn2gJLvaQRcUal34TR7v9pvkpkp7mHKSR+xox4MCLijU5HHbYbntZXKbSnqRdjMlvExSj5kGOe6D+k2CgULtcImz+rz3NLlU99xMHENJ0jntQOgkzp4OjRxxaBvqxrBUkzti+d07dV0um3NB8ZgkiZ69cAs8NV+/iaqoSe8eWkQ6+jtgjFicYVRRfO5951mmFSknwFTv0/7DN41Glq2Guj4dWwlhaA4ReBjljO2K7xE+2oFZbDmaius8bBFX++DcMkI9+obtO92KMTS2czY4/M/pUFBZw525mUxSz7UAtZHzd9Q/qm9OD2TwoZefcepWDjhPkTVl/4+UMyVl/bSnPsAy90L1kU/r0jcsSraCqE0zZfcx0X/XfbVtyPh+jahhaM1XPz8lemOUW53e26ehxiYUrm7U9qLy2jh+m0yJKSOmTUMGFMpLPRcUiSur8QQauRPpVD/lCe+cja/4B3B89cbaSp/28Mq7saHGfcdO1r2KshNSu3cBRaimXZKvENR4X4v2N27sxUf2Z1D6tO93c08k3TpUFE7QggT2hIzS04W1owA0I0c6t0GWCvXyM7XtT2pcr26P7XZvbx/7sBuF5UJpUVbd0Wg0Ho8PmSymDs3cU7KSAv+U27KgADKYZtQ75zXVvnNStKHuLw1q0z4uxFC5Ns1Qf27J9t/dQnFEHfqw25cj7wHhO4UCgOpP7E5hiVBPBaBIh2DJOizBPWN6h1Bd+h6FXf/ch/PvFgrqTCNnHcD5P0OxPZN1VMnzyMBdQnmOFpqHupYI9ftMKDub21FFqrISBiqZimVmw4hDAc1zBpOYSvE+XeGnVGOAOs+UMNbmb7OgoNtQpql4TzLwrRRfz0mFROJ0IEq1+euMTT6OoYwBQhiqkUCDTQHPMNuCUGdvZkB1+14mckwXNeliUKe4ly2QyUrQVmefg6FcOcpSKSIKlVyTbKhEInUbUAD6POjQqSq8hz44UKc0lJipZkBR7QGrVlEWhMpRUIL+C4aC3iPZdqxHdoWg4rnwltoMggLAfVqAduBEDCoR3lKBUOqeP9NK/jAp5L7tLGWptYWhfFaepV5SiKpRcKBORZCQPvs7T53xPF1OyH3JQcGGigvmdF8oAD070W6tizlwYEKdijkPz6K+AXUx+xG/7ZQIVWptPZE7PR0IV2TP2GczeY5ZcZQdiNkq3mgkxZI51uZTH6iADMWoIUSFrCWMhKF8mDTBB7clQaownefm79yMAIHwQ79ZMarFoaAW4qHtghDVwlBQC6guc9pqUSgIQj7cLhJXC0JBLfwnOQxm5qvFoLyPagkoOzOLhoL6zXW0UZ3O9zkcp/FgFy4ABTxHeIWVC+4ZQkExExZUF/jYICkwsOaFAqq+2IfzrAe4cE4oCOZ2naXCmq+xQkFZsygyU6iMyVf21C9lhYIyu2EIL27nE84KgxgXKxQU6VxAd3J7n0CVW+Otw1BQxHPaYh9d5NZpI+XBCgcFVW14259qlk2suRdiKCioD5fxcXkIK5WaDyrzPbkUJKLCgPaiKFQm08hll4WEJZ0icyVDQGUyse3cMoksrkEjjlfjTKhMJtVYvwMioqx0ur0WTwVNM5nM9+/Jwba0VLd5lM8W1tfise/fqU+VMGgy3zOx+Nrg9I6BbGULucT6gBpKU8nGAI3OhcV4/geTiFaWem/fQAAAAABJRU5ErkJggg==" alt="Admin">
                    <p>Admin</p>
                </a>
            </div>

            <div class="role">
                <a href="MerchantLogin.jsp">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyO_g3Oh9Bf1hUc8XnwWBkvEx5ZNW4j52bNg&s" alt="Merchant">
                    <p>Merchant</p>
                </a>
            </div>

            <div class="role">
                <a href="CustomerLogin.jsp">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJQc1C28j_utt_7WDTt38sAqvkv-XYxvr_xw&s" alt="Customer">
                    <p>Customer</p>
                </a>
            </div>
        </div></div>
    
	<footer class="footer">
		<p>&copy; 2024 Spicart. All rights reserved.</p>
	</footer>
	<script type="text/javascript"
		src="/webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
</body>
</html>
