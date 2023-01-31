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
							<h1>���೻��</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
													<input type="checkbox" id="demo-human1">
													<label for="demo-human1">
													�����ڸ� : <span>������</span>
													<br>
													���� ��� : <span>���� ķ�μһ��̾�Ƽ ���Ÿ��۷���&��ũ��</span>
													<br>
													���� �ݾ� : <span>120000��</span>
													</label>

													<input type="checkbox" id="demo-human2">
													<label for="demo-human2">
													�����ڸ� : <span>������</span>
													<br>
													���� ��� : <span>���� ����� ķ��</span>
													<br>
													���� �ݾ� : <span>150000��</span>
													</label>
											
                                            <br>
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="�������" class="primary" />
												<input type="reset" value="�ڷΰ���"  />
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