<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
						<div class="inner2">
                            <div class="col-12" style="text-align: center;">
							<h1>아이디 확인</h1>
                        </div>			<!-- Form -->
								<section>
									<form >
										<div class="row gtr-uniform">
											<div class="col-12">
												<c:choose>
													<c:when test = "${empty user}">
														<input type="text" name="uaddr" id="uaddr" disabled align = "center" placeholder="조회 결과가 없습니다." />
													</c:when>
													<c:otherwise>
														<input type="text" name="uaddr" id="uaddr" value="${user.uid }" disabled align = "center"/>
													</c:otherwise>
												</c:choose>
											</div>
											<div class="col-12" style="text-align: center;">
                                                <button type = "button" class="primary" onclick = "history.back(-1)">확인</button>
											</div>
										</div>
									</form>
								</section>
						</div>
					</div>

			</div>
			<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
	</body>
</html>