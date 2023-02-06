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
							<h1>로그인</h1>
                        </div>			<!-- Form -->
								<section>
									<form action="/Login" method="post" id="submitLogin">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="uid" id="uid" value="" required placeholder="아이디" />
															
											</div>
                                            <div class="col-12">
												<input type="password" name="upw" id="upw" value="" required placeholder="비밀번호" />
												<span id = "spanlogin" name = "spanlogin" style = "color:red; font-size:10pt"></span>
											</div>
											
                                            <br>
	<!-- 										<div class="col-6 col-12-small">
												<input type="checkbox" id="demo-copy" name="demo-copy">
												<label for="demo-copy">Email me a copy</label>
											</div>
											<div class="col-6 col-12-small">
												<input type="checkbox" id="demo-human" name="demo-human" checked>
												<label for="demo-human">Not a robot</label>
											</div> -->
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" name = "login_btn" id = "login_btn" value="로그인" class="primary" />
                                                <input type="button" value="회원가입" onclick = "location.href='/join'"/>
                                                <input type="button" value="ID/PW 찾기" onclick = "location.href='/findId'"/>
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
			
			<script type = "text/javascript">
			//var id = document.getElementById($('uid')).value;
			
				var message = '${msg}';
				var returnUrl = '${url}';
				if(message !== "") {
					//console.log(typeof message);
					//console.log(message === "");
					//console.log(message);
					//console.log(returnUrl);
					alert(message);
				}
				

				
				
			</script>
			

	</body>
</html>