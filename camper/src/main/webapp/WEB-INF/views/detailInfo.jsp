<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		<link rel="stylesheet" href="assets/css/main.css" />
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
				<jsp:include page = "header.jsp"></jsp:include>

				<!-- Main -->
					<div id="main">
						<div class="inner">
							<h1>${board.cname}</h1>
							<span class="image main"><img src="${board.cimage}" alt="" style="float: center; width:100%; height:300px;"/></span>
							<p>
								<div style="display: inline-block; margin: 0 5px;  float: right;">
									예약 날짜 : <input type="date"> ~ <input type="date"><button style="margin-left: 10px;">예약하기</button>
								</div>
							</p>
							<p>
								<img src="images/map.png" width="30px" height="30px" style="margin-right: 5px;">${board.cplace}
							</p>
							<p>
								<img src="images/call.png" width="30px" height="30px" style="margin-right: 5px;">${board.ctel}
							</p>
							<p>${board.cinfo}</p>
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