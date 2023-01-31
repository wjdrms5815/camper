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
							<h1>��й�ȣ ã��</h1>
                        </div>			<!-- Form -->
								<section>
									<form method="post" action="#">
										<div class="row gtr-uniform">
										
											<div class="col-12">
												<input type="text" name="findpwId" id="findpwId" value="" placeholder="���̵�" />
											</div>
											<div class="col-6">
												<input type="text" name="findpwFirstName" id="findpwFirstName" value="" placeholder="��" />
											</div>
											<div class="col-6">
												<input type="text" name="findpwLastName" id="findpwLastName" value="" placeholder="�̸�" />
											</div>
											<div class="col-12">
												<select name="spwdq" id="spwdq" required>
													<option value="��￡ ���� �߾��� ��Ҵ�?">��￡ ���� �߾��� ��Ҵ�?</option>
													<option value="�ڽ��� �λ� �¿����?">�ڽ��� �λ� �¿����?</option>
													<option value="���� ��￡ ���� ������ ������?">���� ��￡ ���� ������ ������?</option>
													<option value="�ڽ��� ���� ��1ȣ��?">�ڽ��� ���� ��1ȣ��?</option>
													<option value="������� ���� �������� ģ���� �̸���?">������� ���� �������� ģ���� �̸���?</option>
													<option value="�ٽ� �¾�� �ǰ� ���� ����?">�ٽ� �¾�� �ǰ� ���� ����?</option>
													<option value="�λ� ���� ���� å �̸���?">�λ� ���� ���� å �̸���?</option>
												</select>
												</div>
												<div class="col-12">
												<input type="text" name="spwda" id="spwda" value="" required placeholder="����">
											</div>

											<div class="col-12" style="text-align: center;">
                                                <input type="submit" value="Ȯ��" class="primary" />
                                                <input type="button" value="���" />
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

	</body>
</html>