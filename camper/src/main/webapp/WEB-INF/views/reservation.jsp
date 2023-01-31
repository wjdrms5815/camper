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
				<jsp:include page = "header.jsp"></jsp:include>


				<!-- Main -->
					<div id="main">
						<div class="inner2">
                            <div class="col-12" style="text-align: center;">
							<h1>예약내역</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
													<input type="checkbox" id="demo-human1">
													<label for="demo-human1">
													예약자명 : <span>박지연</span>
													<br>
													예약 장소 : <span>진주 캠핑소사이어티 럭셔리글램핑&피크닉</span>
													<br>
													결제 금액 : <span>120000원</span>
													</label>

													<input type="checkbox" id="demo-human2">
													<label for="demo-human2">
													예약자명 : <span>육정근</span>
													<br>
													예약 장소 : <span>파주 영어마을 캠핑</span>
													<br>
													결제 금액 : <span>150000원</span>
													</label>
											
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