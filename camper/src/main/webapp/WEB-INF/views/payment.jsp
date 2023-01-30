<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Alpha by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Untitled</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	<!-- Wrapper -->
		<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
								<a href="index.html" class="logo">
									<span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title">Camper</span>
								</a>

							<!-- Nav -->
								<nav>
									<ul>
										<li><a href="#menu">Menu</a></li>
									</ul>
								</nav>

						</div>
					</header>
					
				<!-- Menu -->
					<nav id="menu">
						<h2>Menu</h2>
						<ul>
							<li><a href="index.html">Home</a></li>
							<li><a href="generic.html">Ipsum veroeros</a></li>
							<li><a href="generic.html">Tempus etiam</a></li>
							<li><a href="generic.html">Consequat dolor</a></li>
							<li><a href="elements.html">Elements</a></li>
							<li><a href="join.html">Join</a></li>
							<li><a href="myPage.html">My page</a></li>
						</ul>
					</nav>

			<!-- Main -->
				<section id="main" class="container medium">
				<div class="inner">
					<header>
						<div class="col-12" style="text-align: center;">
						<h1>Payment</h1>
						</div>
					</header>
					<div class="box">
						<form method="post" action="#">
							<div class="row gtr-50 gtr-uniform">
							
								<div class="col-12">
									<label>Payment Method</label>
								</div>
								<div class = "col-12">
									<select id = "pamentMethod">
										<option value = "visa">Visa</option>
										<option value = "mastercard">MasterCard</option>
										<option value = "jcb">JCB</option>
									</select>
								</div>
								
								<div class="col-12">
									<label>Card Num</label>
								</div>
								<div class = "col-12">
									<input type="text" name="cardNum" id="cardNum" value="" placeholder="0000-0000-0000-0000" />
								</div>
								
								
								<div class="col-9">
									<label>Validity</label>
								</div>
								<div class="col-3">
									<label>Cvc Num</label>
								</div>
								
								<div class="col-2">
									<select id = "validity">
										<option value = "01">01</option>
										<option value = "02">02</option>
										<option value = "03">03</option>
										<option value = "04">04</option>
										<option value = "05">05</option>
										<option value = "06">06</option>
										<option value = "07">07</option>
										<option value = "08">08</option>
										<option value = "09">09</option>
										<option value = "10">10</option>
										<option value = "11">11</option>
										<option value = "12">12</option>
									</select>
								</div>
								
								<div class="col-3">
									<select id = "validity">
										<option value = "2023">2023</option>
										<option value = "2024">2024</option>
										<option value = "2025">2025</option>
										<option value = "2026">2026</option>
										<option value = "2027">2027</option>
										<option value = "2028">2028</option>
										<option value = "2029">2029</option>
										<option value = "2030">2030</option>
										<option value = "2031">2031</option>
										<option value = "2032">2032</option>
										<option value = "2033">2033</option>
									</select>
								</div>
								
								<div class = "col-4"></div>
								
								<div class="col-3">
									<input type="text" name="cvc" id="cvc" value="" placeholder="cvc" />
								</div>
								
								<div class="col-12">
									<label>Name</label>
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="firstName" id="firstName" value="" placeholder="FirstName" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="LastName" id="LastName" value="" placeholder= "LastName" />
								</div>
								
								<div class="col-12">
									<label>Address</label>
								</div>
								<div class="col-6">
									<input type="text" name="address" id="address" value="" placeholder="Address" />
								</div>
								<div class="col-3">
									<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
								</div>
								<div class="col-12">
									<input type="text" name="addressDetail" id="addressDetail" value="" placeholder="Address Detail" />
								</div>
								
								<div class="col-12">
									<label>Phone</label>
								</div>
								<div class="col-12">
									<input type="text" name="phone" id="phone" value="" placeholder="010-0000-0000" />
								</div>
								
								<div class = "col-12">
								<br>
									<ul class = "actions special">
										<li><input type = "submit" value = "Continue"></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
					
				</section>

			<!-- Footer -->
				<footer id="footer">

						<ul class="icons">
							<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
							<li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
						</ul>
						<ul class="copyright">
							<li>&copy; Untitled. All rights reserved.</li>
						</ul>
				</footer>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>