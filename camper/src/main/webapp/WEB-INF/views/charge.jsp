<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/assets/css/main.css" />
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
		<div id="main" align="center">
			<div class="inner2" align="center">
				<div class="col-12" align="center" style="display: flex;">
				<img src="/images/kakao.png" width="120px" height="50px" style="margin-top:10px; margin-right:15px; margin-left: 120px;">
				<h1>����Ʈ ������</h1>
				</div>
				<!-- Form -->
				<section class="box">
						<p style="font-weight: bold; margin-bottom:-5px;">���� ��� ���� �ݾ� : ${mypage.uwallet }��</p>
						<div align="center" style="margin-left: 45px;">
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="10000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">10,000��</div>
						<input type="radio" name="cp_item" value="50000" style="margin-top: 20px; margin-left: 20px;"><div style="margin : 20px 70px 0px -20px">50,000��</div>
						<input type="radio" name="cp_item" value="100000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">100,000��</div>
						</div>
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="150000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">150,000��</div>
						<input type="radio" name="cp_item" value="200000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">200,000��</div>
						<input type="radio" name="cp_item" value="250000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">250,000��</div> 
						</div>
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="300000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">300,000��</div> 
						<input type="radio" name="cp_item" value="350000" style="margin-top: 20px; margin-left: 5px;"><div style="margin : 20px 50px 0px -20px">350,000��</div>
						<input type="radio" name="cp_item" value="500000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">500,000��</div>
						</div>
						</div>
						<p style="color: #ac2925; margin-top: 30px">
						īī�������� �ּ� �����ݾ��� 10,000���̸� �ִ� �����ݾ��� 500,000�� �Դϴ�.</p>
						<button type="button" id="charge_kakao">����</button>
				</section>



			</div>
		</div>

	</div>
	
	<script>
    $('#charge_kakao').click(function () {
        // getter
        var IMP = window.IMP;
        IMP.init('imp58371652');
        var money = $('input[name="cp_item"]:checked').val();
        console.log(money);

        IMP.request_pay({
            pg: 'kakaopay.TC0ONETIME',
            merchant_uid: 'merchant_' + new Date().getTime(),

            name: '����Ʈ ��õ : ' + money,
            amount: money,
            buyer_email: 'iamport@siot.do',
            buyer_name: '�������̸�',
            buyer_tel: '010-1234-5678',
            buyer_addr: '��õ������ ����',
            buyer_postcode: '123-456'
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = money + '�� ������ �Ϸ�Ǿ����ϴ�.';
                msg += '���� �ݾ� : ' + rsp.paid_amount;
                $.ajax({
                    type: "GET", 
                    url: "/chargeSuccess", //���� �ݾװ��� ���� url ����
                    data: {
                        "amount" : money
                    },
                });
            } else {
                var msg = '������ �����Ͽ����ϴ�.';
                msg += '�������� : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="/charge"; //alertâ Ȯ�� �� �̵��� url ����
        });
    });
</script>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>