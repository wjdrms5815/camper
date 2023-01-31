<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
	<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#nav ul.sub").hide();
			$("#nav div.menu li").hover(function(){
				$("ul",this).slideToggle("fast");
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
				<a href="index.html" class="logo"> <span class="symbol"><img
						src="/images/logo.svg" alt="" /></span><span class="title">CAMPER</span>
				</a> <strong><span style="float: right;" id="loginLogout">로그아웃</span></strong>
				<span style="float: right;" id="loginLogoutName">박지연</span>
				<!-- Nav -->
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
						
						<!-- <li><a href="#" data-toggle="dropdown">로그인</a></li>
						<ul class="dropdown-menu">
							<li><a href="#">회원가입</a></li>
							<li><a href="#">로그인</a></li>
							<li><a href="#">아이디 찾기</a></li>
							<li><a href="#">비밀번호 찾기</a></li>
						</ul> -->
						
						<div id="nav">
						<li><a href="/myPage">마이 페이지</a></li>
						</div>
						<div id="nav">
						 <div class="menu">
						  <li><a href="#">로그인</a>
						   <ul class="sub">
						    <li><a href="/join">회원가입</a></li>
						    <li><a href="/login">로그인</a></li>
						    <li><a href="/findId">아이디 찾기</a></li>
						    <li><a href="/findPw">비밀번호 찾기</a></li>
						   </ul>
						  </li>
						 </div>
						</div>
						
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