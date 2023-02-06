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
								<h1>회원가입</h1>
                        	</div>			<!-- Form -->

						<form method="post" action="/signUpOkay" id = "signUpForm">
						<div class="box">
							<div class="row gtr-uniform">
								<div class="col-12">
									<input type="text" name="uid" id="uid" value="" required placeholder="아이디" />
									<span id = "spanid" name = "spanid" style = "color:red; font-size:10pt"></span>
								</div>
                                <div class="col-12">
									<input type="password" name="upw" id="upw" value="" required  placeholder="비밀번호" />
									<span id = "spanpw" name = "spanpw" style = "color:red; font-size:10pt"></span>
								</div>
								
								<div class="col-12">
									<input type="password" name="passwordCheck" id="passwordCheck" value="" required placeholder="비밀번호 재입력" />
									<span id = "spanpwokay" name = "spanpwokay" style = "color:red; font-size:10pt"></span>
								</div>
								
								<div class="col-12">
								<select name="qid" id="qid" >
									<c:forEach var="question" items="${question}">
										<option value="${question.qid }">${question.qques}</option>
									</c:forEach>
								</select>
								</div>
								
								<div class="col-12">
									<input type="text" name="uanswer" id="uanswer" value="" required placeholder="정답">
								</div>
								
								<div class="col-6">
									<input type="text" name="ufirstname" id="ufirstname" value="" required placeholder="성" />
								</div>
								
								<div class="col-6">
									<input type="text" name="ulastname" id="ulastname" value="" required placeholder="이름" />
								</div>
								
								 <div class="col-6">
									<input type="text" name="upostcode" id="upostcode" value="" required placeholder="우편번호" />
								</div>
								<div class="col-3">
									<input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
								</div>
								<div class="col-12">
									<input type="text" name="uaddr" id="uaddr" value="" required placeholder ="주소" />
								</div> 
								<div class="col-12">
									<input type="text" name="uaddrdetail" id="uaddrdetail" value="" required placeholder ="상세주소" />
								</div>
									
								</div>
								
								<br>
								<div class="col-12" style="text-align: center;">
                                    <input type="submit" name = "signUp_btn" id = "signUp_btn" value="회원가입" class="primary" />
									<input type="reset" value="내용삭제"  />
									<input type="button" value="취소" onclick = "history.back(-1)"/>
								</div>
								<p id="checking" style="height: 1px; color: #13a2dd; text-align: center;" ></p>
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
			
			/* 우편번호 */
			$("#find_zipcode").click(function(){
	               new daum.Postcode({
	                  oncomplete:function(data) {
	                     jQuery("#upostcode").val(data.zonecode);
	                     jQuery("#uaddr").val(data.address);
	                     jQuery("#uaddrdetail").focus();
	                  }
	               }).open();
	            });
			
			/* 아이디 정규식 */
			$('#uid').keyup(function(){
				var idRegular = RegExp(/[^a-zA-Z0-9]$/);
				if(!idRegular.test($('#uid').val())){
					$('#spanid').text("사용할 수 있는 아이디입니다.");
				}
				else{
					$('#spanid').text("특수문자는 사용할 수 없습니다.");
					$("#signUp_btn").attr('disabled', true);
				}
				//아이디 중복 확인
				var id = $('#uid').val();
				var data = {id : id}
				$.ajax({
					type:"get",
					url:"/idCheck",
					data:data,
					success:function(result){
						if(result == 'success'){
							$('#spanid').text("사용할 수 있는 아이디입니다.");
							//$("#uidCheck").attr('disabled', true);
							$("#signUp_btn").attr('disabled', false);
						}
						if(result == 'fail'){ 
							$('#spanid').text("중복된 아이디입니다.");
							$("#signUp_btn").attr('disabled', true);
						}
					}
				})
			});
			
			//비밀번호 정규식
			$('#upw').keyup(function(){
				var RegExp = /^[a-zA-Z0-9]{4,12}$/; 
				var p = $(this).val();
				var nullpw = "";
				if(!RegExp.test(p)){
					$('#spanpw').text("패스워드는 4~12자의 영문 대소문자와 숫자로만 입력해주세요.");
					$("#signUp_btn").attr('disabled', true);
				}
				else{
					$('#spanpw').text("사용할 수 있는 패스워드입니다.");
					$("#signUp_btn").attr('disabled', false);
				}
				
			});
			
			/* 패스워드 일치 여부 */
			$('#passwordCheck').keyup(function(){
				var p1 = $('#upw').val();
				var p2 = $(this).val();
				var nullpw = "";
				if(p1==p2){
					$('#spanpwokay').text("비밀번호가 일치합니다.");
					$("#signUp_btn").attr('disabled', false);
				}
				else{
					$('#spanpwokay').text("비밀번호가 일치하지 않습니다.");
					$("#signUp_btn").attr('disabled', true);
				}
				
			});
			
			</script>
					
	</body>
	
</html>