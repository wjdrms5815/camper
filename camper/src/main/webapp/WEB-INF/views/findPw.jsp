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
		<meta name="viewport"
			content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="/assets/css/main.css" />
		<noscript>
			<link rel="stylesheet" href="/assets/css/noscript.css" />
		</noscript>
	</head>
	<body class="is-preload">
	
		<!-- Wrapper -->
		<div id="wrapper">
			
			<!-- Header -->
			<jsp:include page="header.jsp"></jsp:include>
		
				<!-- Main -->
					<div id="main">
						<div class="inner2">
                            <div class="col-12" style="text-align: center;">
							<h1>비밀번호 찾기</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="/findPWokay">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="uid" id="uid" value="" required placeholder="아이디" />
											</div>
											<div class="col-6">
												<input type="text" name="ufirstname" id="ufirstname" value="" required placeholder="성" />
											</div>
											<div class="col-6">
												<input type="text" name="ulastname" id="ulastname" value="" required placeholder="이름" />
											</div>
											<div class="col-12">
												<select name="qid" id="qid" required>
													<c:forEach var="question" items="${question}">
														<option value="${question.qid }">${question.qques}</option>
													</c:forEach>
												</select>
												</div>
												<div class="col-12">
												<input type="text" name="uanswer" id="uanswer" value="" required placeholder="정답">
											</div>

											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="확인" class="primary" />
                                                <input type="button" value="취소" onclick = "history.back(-1)"/>
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