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
							<h1>회원가입</h1>
                        </div>			<!-- Form -->

									<form method="post" action="#">
									<div class="box">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="signUpid" id="signUpid" value="" placeholder="아이디" />
											</div>
                                            <div class="col-12">
												<input type="password" name="Password" id="Password" value="" placeholder="비밀번호" />
											</div>
											<div class="col-12">
												<input type="password" name="PasswordCheck" id="PasswordCheck" value="" placeholder="비밀번호 재입력" />
											</div>
											<div class="col-12">
											<select name="spwdq" id="spwdq" required>
												<option value="기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
												<option value="자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
												<option value="가장 기억에 남는 선생님 성함은?">가장 기억에 남는 선생님 성함은?</option>
												<option value="자신의 보물 제1호는?">자신의 보물 제1호는?</option>
												<option value="유년시절 가장 생각나는 친구의 이름은?">유년시절 가장 생각나는 친구의 이름은?</option>
												<option value="다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
												<option value="인상 깊게 읽은 책 이름은?">인상 깊게 읽은 책 이름은?</option>
											</select>
											</div>
											<div class="col-12">
												<input type="text" name="spwda" id="spwda" value="" required placeholder="정답">
											</div>
											<div class="col-6">
												<input type="text" name="signUpFirstName" id="signUpFirstName" value="" placeholder="성" />
											</div>
											<div class="col-6">
												<input type="text" name="signUpLastName" id="signUpLastName" value="" placeholder="이름" />
											</div>
												 <div class="col-6">
													<input type="text" name="address" id="u_address" value="" placeholder="우편번호" />
												</div>
												<div class="col-3">
													<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
												</div>
												<div class="col-12">
													<input type="text" name="addressdetail" id="u_address_detail" value="" placeholder="상세주소" />
												</div>
												<div class="col-12">	
												<input type="text" name="saddressdetail" id="u_address_detail" value="" placeholder="상세주소"required>
												</div> 
												
											</div>		
											
											
                                            <br>
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="회원가입" class="primary" />
												<input type="reset" value="내용삭제"  />
											</div>
										</div>
										
									</form>


						</div>
					</div>

			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
			<script>
			$("#find_zipcode").click(function(){
	               new daum.Postcode({
	                  oncomplete:function(data) {
	                     jQuery("#u_zipcode").val(data.zonecode);
	                     jQuery("#u_address").val(data.address);
	                     jQuery("#u_detail_address").focus();
	                  }
	               }).open();
	            });
			</script>
			
	</body>
	
</html>