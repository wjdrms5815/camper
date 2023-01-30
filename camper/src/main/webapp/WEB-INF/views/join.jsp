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
												<option value="��￡ ���� �߾��� ��Ҵ�?">��￡ ���� �߾��� ��Ҵ�?</option>
												<option value="�ڽ��� �λ� �¿����?">�ڽ��� �λ� �¿����?</option>
												<option value="���� ��￡ ���� ������ ������?">���� ��￡ ���� ������ ������?</option>
												<option value="�ڽ��� ���� ��1ȣ��?">�ڽ��� ���� ��1ȣ��?</option>
												<option value="������� ���� �������� ģ���� �̸���?">������� ���� �������� ģ���� �̸���?</option>
												<option value="�ٽ� �¾�� �ǰ� ���� ����?">�ٽ� �¾�� �ǰ� ���� ����?</option>
												<option value="�λ� ��� ���� å �̸���?">�λ� ��� ���� å �̸���?</option>
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
													<input type="button" name="findZipcode" id="findZipcode" value="�����ȣ ã��" style="display: inline;">
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