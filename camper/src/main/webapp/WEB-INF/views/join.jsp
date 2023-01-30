<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<body class="is-preload">
		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Header -->
					<header id="header">
						<div class="inner">

							<!-- Logo -->
                            <div ></div>
								<a href="index.html" class="logo">
									<span class="symbol"><img src="images/logo.svg" alt="" /></span><span class="title">Camper</span>
								</a>

						</div>
					</header>


				<!-- Main -->
					<div id="main">
						<div class="inner2">
                            <div class="col-12" style="text-align: center;">
							<h1>Join</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="signUpid" id="signUpid" value="" placeholder="ID" />
											</div>
                                            <div class="col-12">
												<input type="password" name="Password" id="Password" value="" placeholder="Password" />
											</div>
											<div class="col-12">
												<input type="password" name="PasswordCheck" id="PasswordCheck" value="" placeholder="PasswordCheck" />
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
												<input type="text" name="spwda" id="spwda" value="" required placeholder="Answer">
											</div>
											<div class="col-6">
												<input type="text" name="signUpFirstName" id="signUpFirstName" value="" placeholder="FirstName" />
											</div>
											<div class="col-6">
												<input type="text" name="signUpLastName" id="signUpLastName" value="" placeholder="LastName" />
											</div>
												 <div class="col-6 col-12-small">
													<input type="text" name="szipcode" id="uZipcode" value=""  placeholder="Address" required>
												</div>	
													<div class="col-6 col-12-small">	
													<input type="button" name="findZipcode" id="findZipcode" value="우편번호 찾기" style="display: inline;">
												</div>
												<div class="col-12">	
													<input type="text" name="saddress" id="u_address" value=""  placeholder="Address" required>
												</div>
												<div class="col-12">	
												<input type="text" name="saddressdetail" id="u_address_detail" value="" placeholder="AddressDetail"required>
												</div> 
												
											</div>		
											
											
                                            <br>
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="Join" class="primary" />
												<input type="reset" value="reset"  />
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
			<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
	</body>
	
</html>