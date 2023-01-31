<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
							<header>
								<h1>Let's go camping together!</h1>
								<p>전국 캠핑장을 한 눈에 편리하게</p>
							</header>
							<section class="tiles">
							<c:forEach var="board" items="${ board }">
							<article class="style${board.cid}">
								
									<span class="image">
										<img src=${board.cimage} alt="" / style="";>
										
									</span>
									<a href="/generic">
										<h2>${board.cname}</h2>
										<div class="content">
											${board.cinfo}
											${board.ctel}${board.cloaction}<Br>
											${board.cmoney}
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