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

						<form method="post" action="/user/signUp">
						<div class="box">
							<div class="row gtr-uniform">
								<div class="col-7">
									<input type="text" name="uid" id="uid" value="" placeholder="���̵�" />
									<span id = "spanid" name = "spanid" style = "color:red; font-size:5pt"></span>
								</div>
								<div class="col-4">
									<input type="button" name="uidCheck" id="uidCheck" value="�ߺ�Ȯ��" action = "/user/idCheck"/>
								</div>
								
                                <div class="col-12">
									<input type="password" name="upw" id="upw" value="" placeholder="��й�ȣ" />
								</div>
								
								<div class="col-12">
									<input type="password" name="passwordCheck" id="passwordCheck" value="" placeholder="��й�ȣ ���Է�" />
									<span id = "spanpw" name = "spanpw" style = "color:red; font-size:5pt"></span>
								</div>
								
								<div class="col-12">
								<select name="qid" id="qid" >
									<option value =1>��￡ ���� �߾��� ��Ҵ�?</option>
									<option value =2>�ڽ��� �λ� �¿����?</option>
									<option value =3>���� ��￡ ���� ������ ������?</option>
									<option value =4>�ڽ��� ���� ��1ȣ��?</option>
									<option value =5>������� ���� �������� ģ���� �̸���?</option>
									<option value =6>�ٽ� �¾�� �ǰ� ���� ����?</option>
									<option value =7>�λ� ��� ���� å �̸���?</option>
								</select>
								</div>
								
								<div class="col-12">
									<input type="text" name="uanswer" id="uanswer" value="" required placeholder="����">
								</div>
								
								<div class="col-6">
									<input type="text" name="ufirstname" id="ufirstname" value="" placeholder="��" />
								</div>
								
								<div class="col-6">
									<input type="text" name="ulastname" id="ulastname" value="" placeholder="�̸�" />
								</div>
								
								 <div class="col-6">
									<input type="text" name="upostcode" id="upostcode" value="" placeholder="�����ȣ" />
								</div>
								<div class="col-3">
									<input type="button" name="find_zipcode" id="find_zipcode" value="�����ȣ ã��" />
								</div>
								<div class="col-12">
									<input type="text" name="uaddr" id="uaddr" value="" placeholder ="�ּ�" />
								</div> 
								<div class="col-12">
									<input type="text" name="uaddrdetail" id="uaddrdetail" value="" placeholder ="���ּ�" />
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
			
			$('#passwordCheck').keyup(function(){
				var p1 = $('#upw').val();
				var p2 = $(this).val();
				var nullpw = "";
				if(p1==p2){
					$('#spanpw').text("��й�ȣ�� ��ġ�մϴ�.");
				}
				else{
					$('#spanpw').text("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
				}
				
			});
			
			var idRegular = RegExp(/[^a-zA-Z0-9]$/);
			$('#uid').keyup(function(){
				var id = $(this).val();
				if(!idRegular.test($('#uid').val())){
					$('#spanid').text("����� �� �ִ� ���̵��Դϴ�.");
				}
				else{
					$('#spanid').text("Ư�����ڴ� ����� �� �����ϴ�.");
				}
			});
			</script>
					
	</body>
	
</html>