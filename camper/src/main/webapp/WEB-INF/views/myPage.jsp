<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
   Alpha by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
		<section id="main" class="container medium">
			<div class="inner2">

				<header>
					<div class="col-12" style="text-align: center;">
						<h1>마이 페이지</h1>
					</div>
				</header>
				<c:if test="${sessionId == null}">
					<div align = "center" class="box">
				 		<h2>로그인이 필요한 페이지입니다.</h2><br><h3>로그인 후 이용해주세요</h3>	 		
				 	</div>
					</c:if>
					<c:if test="${sessionId != null}">
				<div class="box">
					<form method="post" action="/myPageModify">
						<div class="row gtr-50 gtr-uniform">

							<div class="col-12">
								<div id="id">아이디</div>
								<tr>
									<%--  <td>${ mypage.uid }</td> --%>
									<input type="text" name="uid" value="${mypage.uid}" disabled/>
								</tr>
							</div>

							<div class="col-6 col-12-mobilep">
								<input type="password" name="upw" id="upw"
									value="${mypage.upw}" placeholder="패스워드" />
							</div>
							<div class="col-6 col-12-mobilep">
								<input type="password" name="newPassword" id="newPassword"
									value="" placeholder="패스워드 재입력" />
									<span id = "spanpw" name = "spanpw" style = "color:red; font-size:15pt"></span>
							</div>

							<div class="col-12">

								<select id="passQustion" name="qid">
									<c:forEach var="question" items="${question}">
										<option value="${question.qid }">${question.qques}</option>
									</c:forEach>
								</select> <br> <input type="text" name="uanswer" id="answer"
									value="${ mypage.uanswer }" placeholder="정답" />
							</div>


							<div class="col-6 col-12-mobilep">
								<input type="text" name="ufirstname" id="ufirstName"
									value="${ mypage.ufirstname }" placeholder="이름" />
							</div>
							<div class="col-6 col-12-mobilep">
								<input type="text" name="ulastname" id=ulastName"
									value="${mypage.ulastname}" placeholder="이름" />
							</div>
							<div class="col-6">
								<input type="text" name=upostcode id="myZipcode"
									value="${ mypage.upostcode }" placeholder="우편번호" />
							</div>
							<div class="col-3">
								<input type="button" name="find_zipcode" id="find_zipcode"
									value="우편번호 찾기" />
							</div>

							<div class="col-12">
								<input type="text" name="uaddr" id="address"
									value="${ mypage.uaddr }" placeholder="주소" />
							</div>
							<div class="col-12">
								<input type="text" name="uaddrdetail" id="addressDetail"
									value="${ mypage.uaddrdetail }" placeholder="상세주소" />
							</div>
							
							<div class="col-12">
							포인트
								<input type="text" name="uwallet" id="uwallet"
									value="<fmt:formatNumber value="${mypage.uwallet }" pattern="#,###"/>" disabled/>
							</div>

							<div class="col-12">
								<br>
								<ul class="actions special">
									<li><input type="submit" value="확인" id="modifyBtn"></li>
									<li><input type="button" value="취소" onClick="location.href='/'"></li>
								</ul>
							</div>
						</div>
					</form>
					</div>
				</div>
		</section>
</c:if>
		<!-- Footer -->

	</div>

	<script>
      $("#passQustion").val(${mypage.qid}).prop("selected", true);
      </script>
	<!-- Scripts -->
	<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
				<script>
			$("#find_zipcode").click(function(){
	               new daum.Postcode({
	                  oncomplete:function(data) {
	                     jQuery("#myZipcode").val(data.zonecode);
	                     jQuery("#address").val(data.address);
	                     jQuery("#addressDetail").focus();
	                  }
	               }).open();
	            });
			
			function Validation(){
				
			}
			
			/* 패스워드 일치 여부 */
			$('#newPassword').keyup(function(){
				var p1 = $('#upw').val();
				var p2 = $(this).val();
				var nullpw = "";
				if(p1==p2){
					$('#spanpw').text("비밀번호가 일치합니다.");
					$("#modifyBtn").attr('disabled', false);
				}
				else{
					$('#spanpw').text("비밀번호가 일치하지 않습니다.");
					$("#modifyBtn").attr('disabled', true);
				}
				
			});
			
			$('#upw').keyup(function(){
				var RegExp = /^[a-zA-Z0-9]{4,12}$/; 
				var p = $(this).val();
				var nullpw = "";
				if(!RegExp.test(p)){
					$('#spanpw').text("패스워드는 4~12자의 영문 대소문자와 숫자로만 입력해주세요.");
					$("#modifyBtn").attr('disabled', true);
				}
				else{
					$('#spanpw').text("사용할 수 있는 패스워드입니다.");
					$("#modifyBtn").attr('disabled', false);
				}
				
			});
			</script>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
</body>
</html>