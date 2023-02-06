<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<!--
	Phantom by Pixelarity
	pixelarity.com | hello@p ixelarity.com
	License: pixelarity.com/license
-->
<html>
	<head>
		<title>Camper</title>
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
						<div class="inner">
							<h1>${board.cname}</h1>
							<span class="image main"><img src="${board.cimage}" alt="" style="float: center; width:100%; height:300px;"/></span><hr>
							<table>
								<tr>
									<td></td>
									<td><span style="float: right;">
									���� ��¥ : <input type="date" value="${board.cstartDate}"> ~ <input type="date" value="${board.cendDate}"></span>
									</td>
								</tr>
								<tr>
									<td><img src="images/call.png" width="30px" height="30px" style="margin-right: 5px;"> ${board.ctel}</td>
									<td><span style="float: right;"><a href="/goRsrv?cid=${board.cid}" class="button">�����ϱ�</a></span></td>
								</tr>
								<tr>
									<td><img src="images/map.png" width="30px" height="30px" style="margin-right: 5px;" id="cplace"> ${board.cplace}</td>
									<td><span style="float: right;" id="cmoney" name="cmoney">\:<fmt:formatNumber value="${board.cmoney}" pattern="#,###"/></span></td>
								</tr>
								<tr>
									<td colspan="2"><div id="map" style="width:100%;height:300px;"></div></td>
								</tr>
							</table>
							
							<hr>
							<h2>${board.cname}</h2>
							<p>${board.cinfo}</p>
							</div>
					</div>

				<!-- Footer -->
				
			</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
			<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f818e5b6f4164025b1222bdedc3d0ac7&libraries=services"></script>
			<script>
			var cplace1= "${board.cplace}";
			
			var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
			    mapOption = {
			        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
			        level: 3 // ������ Ȯ�� ����
			    };  
			
			// ������ �����մϴ�    
			var map = new kakao.maps.Map(mapContainer, mapOption); 
			
			// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
			var geocoder = new kakao.maps.services.Geocoder();
			
			// �ּҷ� ��ǥ�� �˻��մϴ�
			geocoder.addressSearch(cplace1, function(result, status) {
			
			    // ���������� �˻��� �Ϸ������ 
			     if (status === kakao.maps.services.Status.OK) {
			
			        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
			
			        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
			        var marker = new kakao.maps.Marker({
			            map: map,
			            position: coords
			        });
			
			        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
			        var infowindow = new kakao.maps.InfoWindow({
			            content: '<div style="width:150px;text-align:center;padding:6px 0;">${board.cname}</div>'
			        });
			        infowindow.open(map, marker);
			
			        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
			        map.setCenter(coords);
			    } 
			});    
</script>

	</body>
</html>