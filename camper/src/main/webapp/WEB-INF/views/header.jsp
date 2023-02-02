<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#nav ul.sub").hide();
			$("#nav div.menu li").hover(function(){
				$("ul",this).slideToggle("slow");
			});
		});
	</script>
	
</head>
<body>
	<div id="wrapper">
		<!-- Header -->
		<header id="header">
			<div class="inner">
				<!-- Logo -->
				<a href="/" class="logo"> <span class="symbol"><img src="/images/logo.svg" alt="" /></span><span class="title">CAMPER</span></a>
				<c:if test="${sessionId != null}">
				<span style="float: right;" id="uname" name="uname">${sessionId}님 환영합니다!</span>
				</c:if>
				<nav>
					<ul>
						<li><a href="#menu">메뉴</a></li>
					</ul>
				</nav>
				<!-- Menu -->
				<nav id="menu">
					<h2>Menu</h2>
					<ul>
						<div class="nav">
						<li><a href="/">메인화면</a></li>
						</div>
						<div id="nav">
						<li><a href="/member/myPage">마이 페이지</a></li>
						<li><a href="/member/reservation">예약 내역</a></li>
						</div>
						<div id="nav">
						 <div class="menu">
						  <li><a href="#">로그인</a>
						   <ul class="sub">
						    <li><a href="/join">회원가입</a></li>
						    <c:if test="${empty userId}">
						    	<li><a href="/login">로그인</a></li>
						    </c:if>
						    <li><a href="/findId">아이디 찾기</a></li>
						    <li><a href="/findPw">비밀번호 찾기</a></li>
						   </ul>
						  </li>
						 </div>
						<c:if test="${not empty userId}">
							<li><a href="/user/logout">로그아웃</a></li>
						</c:if>
						<!-- <li><a href="generic.html">상세 페이지</a></li>
						<li><a href="generic.html">Consequat dolor</a></li>
						<li><a href="elements.html">Elements</a></li> -->
						
						
						
					</ul>
				</nav>
			</div>
		</header>
	</div>
</body>
</html>