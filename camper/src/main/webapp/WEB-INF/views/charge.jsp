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
<title>Untitled</title>
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
		<div id="main">
			<div class="inner2">
				<div class="col-12" style="text-align: center;">
					<h1>����Ʈ ������</h1>
				</div>
				<!-- Form -->
				<section>
						<p style="font-weight: bold">���� ���� �ݾ�</p>
						<input type="radio" name="cp_item" value="5000"><div style="margin-top: -10px; margin-left: 60px;">5,000��</div>
						<input type="radio" name="cp_item" value="10000"><div style="margin-top: -10px; margin-left: 60px;">10,000��</div>
						<input type="radio" name="cp_item" value="15000"><div style="margin-top: -10px; margin-left: 60px;">15,000��</div>
						<input type="radio" name="cp_item" value="20000"><div style="margin-top: -10px; margin-left: 60px;">20,000��</div>
						<input type="radio" name="cp_item" value="25000"><div style="margin-top: -10px; margin-left: 60px;">25,000��</div>
						<input type="radio" name="cp_item" value="30000"><div style="margin-top: -10px; margin-left: 60px;">30,000��</div> 
						<input type="radio" name="cp_item" value="35000"><div style="margin-top: -10px; margin-left: 60px;">35,000��</div> 
						<input type="radio" name="cp_item" value="40000"><div style="margin-top: -10px; margin-left: 60px;">40,000��</div>
						<input type="radio" name="cp_item" value="50000"><div style="margin-top: -10px; margin-left: 60px;">50,000��</div>
						<p style="color: #ac2925; margin-top: 30px">
						īī�������� �ּ� �����ݾ��� 5,000���̸� <br />�ִ� �����ݾ��� 50,000�� �Դϴ�.</p>
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
                msg += '����ID : ' + rsp.imp_uid;
                msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
                msg += '���� �ݾ� : ' + rsp.paid_amount;
                msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
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