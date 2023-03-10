<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
				<h1>포인트 충전소</h1>
				</div>
				<!-- Form -->
						<c:if test="${sessionId == null}">
					<div align = "center" class="box">
				 	<h2>로그인이 필요한 페이지입니다.</h2><br><h3>로그인 후 이용해주세요</h3>	 		
				 	</div>
					</c:if>
		<c:if test="${sessionId != null}">
				<section class="box">
						
						<input type="hidden" value="${mypage.uwallet}" id="uwallet">
						<div align="center" style="margin-left: 45px;">
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="10000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">10,000원</div>
						<input type="radio" name="cp_item" value="50000" style="margin-top: 20px; margin-left: 20px;"><div style="margin : 20px 70px 0px -20px">50,000원</div>
						<input type="radio" name="cp_item" value="100000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">100,000원</div>
						</div>
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="150000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">150,000원</div>
						<input type="radio" name="cp_item" value="200000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">200,000원</div>
						<input type="radio" name="cp_item" value="250000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">250,000원</div> 
						</div>
						<div style="display: flex;">
						<input type="radio" name="cp_item" value="300000" style="margin-top: 20px;"><div style="margin : 20px 50px 0px -20px">300,000원</div> 
						<input type="radio" name="cp_item" value="350000" style="margin-top: 20px; margin-left: 5px;"><div style="margin : 20px 50px 0px -20px">350,000원</div>
						<input type="radio" name="cp_item" value="500000" style="margin-top: 20px; margin-left: 10px;"><div style="margin : 20px 50px 0px -20px">500,000원</div>
						</div>
						</div>
						<p style="color: #ac2925; margin-top: 30px">
						카카오페이의 최소 충전금액은 10,000원이며 최대 충전금액은 500,000원 입니다.</p>
						<input type="button" id="charge_kakao" value="충전"></button>
						<input type="button" value="뒤로가기" onclick = "window.location = document.referrer;"/>
				</section>

			</div>
		</div>
</c:if>
	</div>
	
	<script>
    $('#charge_kakao').click(function () {
        // getter
        var IMP = window.IMP;
        IMP.init('imp58371652');
        var money = $('input[name="cp_item"]:checked').val();
        var uwallet = $("#uwallet").val();
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
                var amount = parseInt(rsp.paid_amount);
                var uwallet2 = parseInt(uwallet);
                var sum = parseInt(amount+uwallet2);
                var sum2 = sum.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
                msg += ' \n충전 후 잔액 :' + ' ' + sum2;
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
             /* document.location.href=""; //alert창 확인 후 이동할 url 설정  */
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