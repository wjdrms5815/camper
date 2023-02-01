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
							<h1>ȸ������</h1>
                        </div>			<!-- Form -->

									<form method="post" action="#">
									<div class="box">
										<div class="row gtr-uniform">
											<div class="col-12">
												<input type="text" name="signUpid" id="signUpid" value="" placeholder="���̵�" />
											</div>
                                            <div class="col-12">
												<input type="password" name="Password" id="Password" value="" placeholder="��й�ȣ" />
											</div>
											<div class="col-12">
												<input type="password" name="PasswordCheck" id="PasswordCheck" value="" placeholder="��й�ȣ ���Է�" />
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
												<input type="text" name="spwda" id="spwda" value="" required placeholder="����">
											</div>
											<div class="col-6">
												<input type="text" name="signUpFirstName" id="signUpFirstName" value="" placeholder="��" />
											</div>
											<div class="col-6">
												<input type="text" name="signUpLastName" id="signUpLastName" value="" placeholder="�̸�" />
											</div>
												 <div class="col-6">
													<input type="text" name="address" id="u_address" value="" placeholder="�����ȣ" />
												</div>
												<div class="col-3">
													<input type="button" name="find_zipcode" id="find_zipcode" value="�����ȣ ã��" />
												</div>
												<div class="col-12">
													<input type="text" name="addressdetail" id="u_address_detail" value="" placeholder="���ּ�" />
												</div>
												<div class="col-12">	
												<input type="text" name="saddressdetail" id="u_address_detail" value="" placeholder="���ּ�"required>
												</div> 
												
											</div>		
											
											
                                            <br>
											
											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="ȸ������" class="primary" />
												<input type="reset" value="�������"  />
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