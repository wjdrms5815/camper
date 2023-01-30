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
							<h1>Reservation Check</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
											<fieldset>
												<legend>
													<input type="checkbox">
													<label for="rest">
													예약자명
													<div>박지연</div>
													예약 장소
													<div>진주 캠핑소사이어티 럭셔리글램핑&피크닉</div>
													결제 금액
													<div>120000원</div>
													</label>
												</legend>
											</fieldset>
											
											<div class="row gtr-uniform">
												<input type="checkbox">
												<div class="col-12">
													예약자명
													<div>육정근</div>
												</div>
												<div class="col-12">
													예약 장소
													<div>거창 휴일엔펜션&캠핑</div>
												</div>
												<div class="col-12">
													결제 금액
													<div>150000원</div>
												</div>
													
												</div>	
											
											
                                            <br>
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="예약취소" class="primary" />
												<input type="reset" value="뒤로가기"  />
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