<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>

<!--
	Phantom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>Untitled</title>
<meta charset="utf-8" />

<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="/assets/css/noscript.css" />
</noscript>
</head>
<script>
	$("#find_zipcode").click(function() {
		new daum.Postcode({
			oncomplete : function(data) {
				jQuery("#u_zipcode").val(data.zonecode);
				jQuery("#u_address").val(data.address);
				jQuery("#u_detail_address").focus();
			}
		}).open();
	});
</script>
<body class="is-preload">
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<jsp:include page="header.jsp"></jsp:include>


		<!-- Main -->
		<div id="main">
			<div class="inner2">
				<div class="col-12" style="text-align: center;">
					<h1>예약내역</h1>
				</div>
				<!-- Form -->
				<form action="/reservationDelete" method="post">
					<section>
						<c:forEach var="reservation" items="${reservation}">
							<div class="col-12">
								<input type="checkbox" name="rid" value="${reservation.rid}">
								<input type="hidden" name="uid" value="${reservation.uid }">
								<input type="hidden" name="cid" value="${reservation.cid}">
								<div style="margin-left: 50px; margin-top: -20px;">
								예약자명 : <span>${reservation.rfirstname}${reservation.rlastname }</span><br> 
								예약 장소 : <span>${reservation.cplace}</span><br>
								결제 금액 : <span>${reservation.cmoney}</span>
								</div>
							</div>
							<br>
						</c:forEach>
						<div class="col-12" style="text-align: center;">
							<input type="submit" class="primary" value="예약취소"> <input
								type="button" value="뒤로가기" onClick="location.href='/'">
						</div>
			</div>
			</section>
			</form>


		</div>
	</div>

	</div>
	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
</body>

</html>