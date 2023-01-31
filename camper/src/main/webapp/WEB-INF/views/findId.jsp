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
		<title>Find ID</title>
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
						<div class="inner2">
                            <div class="col-12" style="text-align: center;">
							<h1>아이디 찾기</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="findaddress" id="findaddress" value="" placeholder="주소" />
											</div>
											<div class="col-6">
												<input type="text" name="findNickName" id="findNickName" value="" placeholder="성" />
											</div>
											<div class="col-6">
												<input type="text" name="findLastName" id="findLastName" value="" placeholder="이름" />
											</div>

											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="확인" class="primary" />
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