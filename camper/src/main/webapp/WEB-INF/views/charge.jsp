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
					<h1>포인트 충전소</h1>
				</div>
				<!-- Form -->
				<section>
						<p style="font-weight: bold">현재 남은 금액</p>
						<input type="radio" name="cp_item" value="5000"><div style="margin-top: -10px; margin-left: 60px;">5,000원</div>
						<input type="radio" name="cp_item" value="10000"><div style="margin-top: -10px; margin-left: 60px;">10,000원</div>
						<input type="radio" name="cp_item" value="15000"><div style="margin-top: -10px; margin-left: 60px;">15,000원</div>
						<input type="radio" name="cp_item" value="20000"><div style="margin-top: -10px; margin-left: 60px;">20,000원</div>
						<input type="radio" name="cp_item" value="25000"><div style="margin-top: -10px; margin-left: 60px;">25,000원</div>
						<input type="radio" name="cp_item" value="30000"><div style="margin-top: -10px; margin-left: 60px;">30,000원</div> 
						<input type="radio" name="cp_item" value="35000"><div style="margin-top: -10px; margin-left: 60px;">35,000원</div> 
						<input type="radio" name="cp_item" value="40000"><div style="margin-top: -10px; margin-left: 60px;">40,000원</div>
						<input type="radio" name="cp_item" value="50000"><div style="margin-top: -10px; margin-left: 60px;">50,000원</div>
						<p style="color: #ac2925; margin-top: 30px">
						카카오페이의 최소 충전금액은 5,000원이며 <br />최대 충전금액은 50,000원 입니다.</p>
						<button type="button" id="charge_kakao">충전</button>
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

            name: '포인트 충천 : ' + money,
            amount: money,
            buyer_email: 'iamport@siot.do',
            buyer_name: '구매자이름',
            buyer_tel: '010-1234-5678',
            buyer_addr: '인천광역시 부평구',
            buyer_postcode: '123-456'
        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = money + '원 결제가 완료되었습니다.';
                msg += '고유ID : ' + rsp.imp_uid;
                msg += '상점 거래ID : ' + rsp.merchant_uid;
                msg += '결제 금액 : ' + rsp.paid_amount;
                msg += '카드 승인번호 : ' + rsp.apply_num;
                $.ajax({
                    type: "GET", 
                    url: "/chargeSuccess", //충전 금액값을 보낼 url 설정
                    data: {
                        "amount" : money
                    },
                });
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
            document.location.href="/charge"; //alert창 확인 후 이동할 url 설정
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