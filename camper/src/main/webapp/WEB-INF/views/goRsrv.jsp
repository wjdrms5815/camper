<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
						<form method="post" action="/goRsrv" id="submitRsrv">
							<div class="row gtr-50 gtr-uniform">
							
								<div class="col-12">
									<label>카드</label>
								</div>
								<div class = "col-12">
									<select id = "pamentMethod" name="rcard" id="rcard">
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
									<input type="text" name="rcvc" id="rcvc" value="" placeholder="cvc" />
								</div>
								
								
								<div class="col-12">
									<Br><h3>개인정보</h3>
								</div>
								
								<div class="col-6 col-12-mobilep">
									<input type="text" ame="rfirstname" id="rfirstname" value="${userVO.ufirstname}" placeholder="성" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="rlastname" id="rlastname" value="${userVO.ulastname}" placeholder= "이름" />
								</div>
								
								<div class="col-12">
									<input type="text" name="rphonenum" id="rphonenum" value="" placeholder="010-0000-0000" />
								</div>
								
								<div class="col-12">
									<br><h3>캠핑 상세정보</h3>
								</div>
								<input type="hidden" name="cid" value="${board.cid}">
								<input type="text" name="uid" value="${userVO.uid}"><!-- 세션으로 id값 받아와야함 -->
								<input type="text" name="ccheck" value="1">
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
										<li><input type = "button" value = "결제" id="goRsrv"></li>
										<li><input type = "button" onclick="history.back()" value = "취소" class="primary"></li>
									</ul>
									<p id="checking" style="height: 1px; color: #13a2dd; text-align: center;" ></p>
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
			<script>
			$(document).ready(function (e) {
				$("#goRsrv").click(function () {
					const rcardnum = $("#rcardnum").val().replaceAll(" ", "");
					const rvalmon = $("#rvalmon").val().replaceAll(" ", "");
					const rvalyear = $("#rvalyear").val().replaceAll(" ", "");
					const rcvc = $("#rcvc").val().replaceAll(" ", "");
					const rfirstname = $("#rfirstname").val().replaceAll(" ", "");
					const rlastname = $("#rlastname").val().replaceAll(" ", "");
					const rphonenum = $("#rphonenum").val().replaceAll(" ", "");
					const raddress = $("#raddress");
					const raddressdetail = $("#raddressdetail");

					if (!rcardnum) {
						alert("카드번호를 입력하세요.");
					} else if (!rvalmon) {
						alert("카드(월)을 입력하세요.");
					} else if (!rvalyear) {
						alert("카드(년도)를 입력하세요.");
					} else if (!rcvc) {
						alert("CVC번호를 입력하세요.");
					} else if (!rfirstname) {
						alert("성을 입력하세요.");
					} else if (!rlastname) {
						alert("이름을 입력하세요.");
					} else if (!rphonenum) {
						alert("번호를 입력하세요.");
					}else {
						$("#submitRsrv").submit();
					}
				})
			})

			</script>
	</body>
</html>