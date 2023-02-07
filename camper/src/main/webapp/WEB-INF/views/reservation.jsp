<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>

<!--
	Phantom by Pixelarity
	pixelarity.com | hello@pixelarity.com
	License: pixelarity.com/license
-->
<html>
<head>
<title>Camper</title>
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
						<c:if test="${sessionId == null}">
					<div align = "center" class="box">
				 		<h2>로그인이 필요한 페이지입니다.</h2><br><h3>로그인 후 이용해주세요</h3>	 		
				 	</div>
					</c:if>
				<!-- Form -->
				<section>
				<c:if test="${check == 0}">
					<div align = "center" class="box">
				 		<h2>Camper</h2><br><h3>예약 내역이 없습니다.</h3>	 		
				 	</div>
					</c:if>
				<c:if test="${check !=0}">
					
				<form action="/reservationDelete" method="post" id="deleteForm">
				<c:forEach var="reservation" items="${reservation}">
					
						
							<div class="col-12">
								<input type="checkbox" name="rid" id="rid" value="${reservation.rid}">
								<input type="hidden" name="uid" value="${reservation.uid }">
								<input type="hidden" name="cid" value="${reservation.cid}">
								<div style="margin-left: 50px; margin-top: -20px;">
								예약자명 : <span>${reservation.rfirstname}${reservation.rlastname }</span><br> 
								예약 장소 : <span>${reservation.cplace}</span><br>
								결제 금액 : <span><fmt:formatNumber value="${reservation.cmoney}" pattern="#,###"/></span>
								
								</div>
							</div>
							
							<input type="hidden" name="uwallet" value="${userVO.uwallet+reservation.cmoney}">
							<br>
						
					
				</c:forEach>
				</c:if>
						<div class="col-12" style="text-align: center;">
							<input type="submit" class="primary" id="delete" value="예약취소"> <input
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
<script>

				$("#delete").click(function () {

					const rid = $("#rid").val();
					console.log(rid);
					if (!$("input:checked[id='rid']").is(":checked")){ 
						alert("취소할 상품을 선택하세요");
						return false;
					} 
				})
			</script>
</html>