<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
						<h1>예약</h1>
						</div>
					</header>
					<div class="box">
						<form method="post" action="/goRsrv">
							<div class="row gtr-50 gtr-uniform">
							
								<div class="col-12">
									<label>카드</label>
								</div>
								<div class = "col-12">
									<select id = "pamentMethod" name="rcard">
										<option value = "visa">Visa</option>
										<option value = "mastercard">MasterCard</option>
										<option value = "jcb">JCB</option>
									</select>
								</div>
								
								<div class="col-12">
									<label>카드 번호</label>
								</div>
								<div class = "col-12">
									<input type="text" name="rcardnum" id="rcardnum" value="" placeholder="0000-0000-0000-0000" />
								</div>
								
								
								<div class="col-9">
									<label>유효기간</label>
								</div>
								<div class="col-3">
									<label>CVC</label>
								</div>
								
								<div class="col-2">
									<select id = "rvalmon" name="rvalmon">
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
									<select id = "rvalyear" name="rvalyear">
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
									<Br><h3>개인정보</h3>
								</div>
								
								<div class="col-6 col-12-mobilep">
									<input type="text" name="rfirstname" id="rfirstname" value="" placeholder="성" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="rlastname" id="rlastname" value="" placeholder= "이름" />
								</div>
								
								<div class="col-12">
									<input type="text" name="rphonenum" id="rphonenum" value="" placeholder="010-0000-0000" />
								</div>
								
								<div class="col-6">
									<input type="text" name="raddress" id="u_address" value="" placeholder="우편번호" />
								</div>
								<div class="col-3">
									<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
								</div>

								<div class="col-12">
									<input type="text" name="raddressdetail" id="u_address_detail" value="" placeholder="상세주소" />
								</div>
								
								<div class="col-12">
									<br><h3>캠핑 상세정보</h3>
								</div>
								<input type="hidden" name="cid" value="${board.cid}">
								<input type="hidden" name="uid" value="wjdrms">
			<%-- 					<input type="hidden" name="rmoney" value="${board.cmoney}">
								<input type="hidden" name="rstartdate" value="${board.cstartDate}">
								<input type="hidden" name="renddate" value="${board.cendDate}">
								<input type="hidden" name="rplace" value="${board.cplace}">
								<input type="hidden" name="rtel" value="${board.ctel}"> --%>
								<div class="col-12">
								<table style="border:1px">
									<tr>
										<td><span style="float: left;" id="cmoney" >\:${board.cmoney}</span></td>
										<td><span style="float: right;">예약 날짜 : ${board.cstartDate} ~ ${board.cendDate}</span></td>
									</tr>
									<tr>
										<td><img src="images/map.png" width="30px" height="30px" style="margin-right: 5px;"> ${board.cplace}</td>
										<td><span style="float: right;" id="ctel" name="ctel"><img src="images/call.png" width="30px" height="30px" style="margin-right: 5px;"> ${board.ctel}</span></td>
									</tr>
								</table>
								</div>
								
								
							
								
								
								<div class = "col-12">
								<hr>
									<ul class = "actions special">
										<li><input type = "submit" value = "결제"></li>
										<li><input type = "button" onclick="history.back()" value = "취소" class="primary"></li>
									</ul>
								</div>
							</div>
						</form>
					</div>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
			<script>
			$("#find_zipcode").click(function(){
	               new daum.Postcode({
	                  oncomplete:function(data) {
	                     jQuery("#u_zipcode").val(data.zonecode);
	                     jQuery("#u_address").val(data.address);
	                     jQuery("#u_detail_address").focus();
	                  }
	               }).open();
	            });
			</script>

	</body>
</html>