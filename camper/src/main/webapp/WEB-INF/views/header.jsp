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
				</a> <strong><span style="float: right;" id="loginLogout">�α׾ƿ�</span></strong>
				<span style="float: right;" id="loginLogoutName">������</span>
				<!-- Nav -->
				<nav>
					<ul>
						<li><a href="#menu">�޴�</a></li>
					</ul>
				</nav>
				<!-- Menu -->
				<nav id="menu">
					<h2>Menu</h2>
					<ul>
						<div class="nav">
						<li><a href="/">����ȭ��</a></li>
						</div>
						
						<!-- <li><a href="#" data-toggle="dropdown">�α���</a></li>
						<ul class="dropdown-menu">
							<li><a href="#">ȸ������</a></li>
							<li><a href="#">�α���</a></li>
							<li><a href="#">���̵� ã��</a></li>
							<li><a href="#">��й�ȣ ã��</a></li>
						</ul> -->
						
						<div id="nav">
						<li><a href="/myPage">���� ������</a></li>
						</div>
						<div id="nav">
						 <div class="menu">
						  <li><a href="#">�α���</a>
						   <ul class="sub">
						    <li><a href="/join">ȸ������</a></li>
						    <li><a href="/login">�α���</a></li>
						    <li><a href="/findId">���̵� ã��</a></li>
						    <li><a href="/findPw">��й�ȣ ã��</a></li>
						   </ul>
						  </li>
						 </div>
						</div>
						
						<!-- <li><a href="generic.html">�� ������</a></li>
						<li><a href="generic.html">Consequat dolor</a></li>
						<li><a href="elements.html">Elements</a></li> -->
						
						
						
					</ul>
				</nav>
			</div>
		</header>
	</div>
</body>
</html>