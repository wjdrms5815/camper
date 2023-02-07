<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
					<c:if test="${sessionId == null}">
					<div align = "center" class="box">
				 		<h2>로그인이 필요한 페이지입니다.</h2><br><h3>로그인 후 이용해주세요</h3>	 		
				 	</div>
					</c:if>
					<c:if test="${sessionId != null}">
					<div class="box">
						<form method="post" action="/goRsrv" id="submitRsrv">
							<div class="row gtr-50 gtr-uniform">
	
								<div class="col-12">
									<Br><h3>개인정보</h3>
								</div>
								
								<div class="col-6 col-12-mobilep">
									<input type="text" name="rfirstname" id="rfirstname" value="${userVO.ufirstname}" placeholder="성" />
								</div>
								<div class="col-6 col-12-mobilep">
									<input type="text" name="rlastname" id="rlastname" value="${userVO.ulastname}" placeholder= "이름" />
								</div>
								
								<div class="col-12">
									<input type="text" name="rphonenum" id="rphonenum" value="" placeholder="010-0000-0000" />
								</div>
								
								<div class="col-12">
									<Br><h3>보유 포인트</h3>
									<table><tr>
									
									<td>결제 전 :</td>
									<td><input type="text"  value="<fmt:formatNumber value="${userVO.uwallet}" pattern="#,###"/>" >
									<input type="text" value="${userVO.uwallet }" id="uwallet">
									
									
									</td>
									<td>
									<button type="button" onclick="location.href='/charge'">충전</button>
									</td>
									
									
									</tr>
									<tr>
									<td>
									결제 후 :
									</td>
									<td colspan="1">
									<input type="text"  value="<fmt:formatNumber value="${userVO.uwallet-board.cmoney}" pattern="#,###"/>">
									<input type="hidden" name="uwallet" value="${userVO.uwallet-board.cmoney}" >
									</td>
									
									</tr>
									</table>
									
								</div>
								 
								<div class="col-12">
									<br><h3>캠핑 상세정보</h3>
								</div>
								<input type="hidden" name="cid" id="cid" value="${board.cid}"  >
								<input type="hidden" name="uid" id="uid"value="${userVO.uid}"  >
								<input type="hidden" name="ccheck" id="ccheck"value="1"  >
								<div class="col-12">
								<input type="hidden" name="cmoney" id="cmoney" value="${board.cmoney}"  >
								<table style="border:1px">
									<tr>
										<td><span style="float: left;" id="cmoney" >\:<fmt:formatNumber value="${board.cmoney}" pattern="#,###"/></span></td>
										<td><span style="float: right;" >예약 날짜 : ${board.cstartDate} ~ ${board.cendDate}</span></td>
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
					</c:if>
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
					const rfirstname = $("#rfirstname").val().replaceAll(" ", "");
					const rlastname = $("#rlastname").val().replaceAll(" ", "");
					const rphonenum = $("#rphonenum").val().replaceAll(" ", "");
					const raddress = $("#raddress");
					const uwallet = $("#uwallet").val();
					const cmoney = $("#cmoney").val();
					const raddressdetail = $("#raddressdetail");

					if (!rfirstname) {
						alert("성을 입력하세요.");
					}else if (!rlastname) {
						alert("이름을 입력하세요.");
					} else if (!rphonenum) {
						console.log("@@@@@@@@@@@@@@2");
						console.log(uwallet);
						console.log(cmoney);
						alert("번호를 입력하세요.");
					} else if(uwallet < cmoney){
						alert("보유 포인트가 부족합니다.");
					} else{
						$("#submitRsrv").submit();
					}
				})
			})

			</script>
	</body>
</html>