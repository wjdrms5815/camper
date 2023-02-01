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
							<span class="image main"><img src="${board.cimage}" alt="" style="float: center; width:100%; height:300px;"/></span><hr>
							<table>
								<tr>
									<td></td>
									<td><span style="float: right;">
									예약 날짜 : <input type="date" value="${board.cstartDate}"> ~ <input type="date" value="${board.cendDate}"></span>
									</td>
								</tr>
								<tr>
									<td><img src="images/call.png" width="30px" height="30px" style="margin-right: 5px;"> ${board.ctel}</td>
									<td><span style="float: right;"><a href="/goRsrv?cid=${board.cid}" class="button">예약하기</a></span></td>
								</tr>
								<tr>
									<td><img src="images/map.png" width="30px" height="30px" style="margin-right: 5px;"> ${board.cplace}</td>
									<td><span style="float: right;" id="cmoney" name="cmoney">\:${board.cmoney}</span></td>
								</tr>
							</table>
							
							<hr>
							<h2>${board.cname}</h2>
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