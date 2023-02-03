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
		<title>Untitled</title>
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
							<h1>비밀번호 찾기</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="/user/findPW">
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
													<option value= 1>기억에 남는 추억의 장소는?</option>
													<option value= 2>자신의 인생 좌우명은?</option>
													<option value= 3>가장 기억에 남는 선생님 성함은?</option>
													<option value= 4>자신의 보물 제1호는?</option>
													<option value= 5>유년시절 가장 생각나는 친구의 이름은?</option>
													<option value= 6>다시 태어나면 되고 싶은 것은?</option>
													<option value= 7>인상 깊게 읽은 책 이름은?</option>
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