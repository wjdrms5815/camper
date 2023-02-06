<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="/assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Header -->
				<jsp:include page = "header.jsp"></jsp:include>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<div>
							<header>
								<h1>Let's go camping together!</h1>
								<span style="float: left;" id="ctel" name="ctel">전국 캠핑장을 한 눈에 편리하게</span>
								
								<form method="post" action="/searchCampInfo">
								<span style="float: right;">
									날짜 검색 : <input type="date" name="cstartDate" value="${cstartDate}">&nbsp;&nbsp;<button class="button primary small">검색</button>
								</span>
								</form>
								<br><br><hr>
							</header>
							<c:if test="${infoCount == 0}">
							<div align="center">

							<span style="float: center;"><h2>Camper</h2></span>
						            
						               <p>선택하신 날짜에는 예약가능한 캠핑장이 없습니다.</p>
								<hr>
							</div>
							</c:if>
							<section class="tiles">
							
							<c:forEach var="board" items="${ board }">
														
							
							<article class="style${board.cid}">
								
									<span class="image">
										<img src="${board.cimage}" alt="" style="float: center; width:100%; height:300px;">
<%-- 										${board.cid} --%>
									<span style="float: left;" id="ctel" name="ctel">Tel:${board.ctel}</span>
									<span style="float: right;" id="cmoney" name="cmoney">\:<fmt:formatNumber value="${board.cmoney}" pattern="#,###"/></span>
							
									</span>
									<a href="/goDetail?cid=${board.cid}">
										<h2>${board.cname}</h2>
										<div class="content">
											<br><br>${board.cplace}

										</div>
									</a>
									
								</article>
								
							</c:forEach>
								
							</section>

							
						</div>
					</div>

				<!-- Footer -->
				

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>