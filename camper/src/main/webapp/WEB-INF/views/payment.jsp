<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
	Alpha by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Camper</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
	<!-- Wrapper -->
		<div id="wrapper">

				<!-- Header -->
				<jsp:include page = "header.jsp"></jsp:include>
				
			<!-- Main -->
				<section id="main" class="container medium">
				<div class="inner2">
					<header>
						<div class="col-12" style="text-align: center;">
						<h1>결제</h1>
						</div>
					</header>
					<c:if test="${sessionId == null}">
					<div align = "center" class="box">
				 		<h2>로그인이 필요한 페이지입니다.</h2><br><h3>로그인 후 이용해주세요</h3>	 		
				 	</div>
					</c:if>
					<c:if test="${sessionId != null}">
					<div class="box">
						<form method="post" action="#">
							<div class="row gtr-50 gtr-uniform">
							
								<div class="col-12">
									<label>결제 수단</label>
								</div>
								<div class = "col-12">
									<select id = "pamentMethod">
										<option value = "visa">Visa</option>
										<option value = "mastercard">MasterCard</option>
										<option value = "jcb">JCB</option>
									</select>
								</div>
								
								<div class="col-12">
									<label>카드 번호</label>
								</div>
								<div class = "col-12">
									<input type="text" name="cardNum" id="cardNum" value="" placeholder="0000-0000-0000-0000" />
								</div>
								
								
								<div class="col-9">
									<label>유효기간</label>
								</div>
								<div class="col-3">
									<label>CVC</label>
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
									<hr><h3>개인정보 입력</h3></hr>
								</div>
								
								<div class="col-6 col-12-mobilep">
									<input type="text" name="firstName" id="firstName" value="" placeholder="성" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="LastName" id="LastName" value="" placeholder= "이름" />
								</div>
								
								<div class="col-12">
									<input type="text" name="phone" id="phone" value="" placeholder="010-0000-0000" />
								</div>
								
								<div class="col-6">
									<input type="text" name="address" id="address" value="" placeholder="우편번호" />
								</div>
								<div class="col-3">
									<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
								</div>
								<div class="col-12">
									<input type="text" name="addressDetail" id="addressDetail" value="" placeholder="주소" />
								</div>
								
							
								
								
								<div class = "col-12">
								<br>
									<ul class = "actions special">
										<li><input type = "submit" value = "확인"></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
					
				</section>
</c:if>

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