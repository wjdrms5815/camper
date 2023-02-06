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
									<form method="post" action="/findID">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="uaddr" id="uaddr" value="" required placeholder="주소" />
											</div>
											<div class="col-6">
												<input type="text" name="ufirstname" id="ufirstname" value="" required placeholder="성" />
											</div>
											<div class="col-6">
												<input type="text" name="ulastname" id="ulastname" value="" required placeholder="이름" />
											</div>
											<div class="col-6">
												<span id = "spanid" name = "spanid" style = "color:red; font-size:8pt"></span>
											</div>
											<div class="col-12" style="text-align: center;">
                                                <input id = "uidCheck" type="submit" value="확인" class="primary" />
												<input type="button" value="취소" onclick = "history.back(-1)"/>
												<input type="button" value="비밀번호 찾기" onclick = "location.href='/findPW'"/>
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
			<script>
			/* $('#uidCheck').click(function(){
				var addr = $('#uaddr').val();
				var firstname = $('#ufirstname').val();
				var lastname = $('#ulastname').val();
				var data = {uaddr : addr, ufirstname : firstname, ulastname : lastname}
				$.ajax({
					type:"get",
					url:"/user/findid",
					data:data,
					success:function(result){
							$('#spanid').text('${user.uid}')
				})
			}); */
			
			</script>
	</body>
</html>