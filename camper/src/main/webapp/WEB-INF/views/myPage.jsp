<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
   Alpha by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <head>
      <title>My Page</title>
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
            <section id="main" class="container medium">
            <div class="inner2">
               <header>
                  <div class="col-12" style="text-align: center;">
                  <h1>마이 페이지</h1>
                  </div>
               </header>
               <div class="box">
                  <form method="post" action="#">
                     <div class="row gtr-50 gtr-uniform">
                     
                        <div class="col-12">
                           <div id = "id">아이디</div>
					        <tr>
					          <td>${ mypage.uid }</td>
					        </tr>
                           <hr class = "one">
                        </div>
                        
                        <div class="col-6 col-12-mobilep">
                           <input type="password" name="password" id="password" value="" placeholder=${ mypage.upw } />
                        </div>
                        <div class="col-6 col-12-mobilep">
                           <input type="password" name="newPassword" id="newPassword" value="" placeholder="패스워드 재입력" />
                        </div>
                        
                        <div class="col-12">
                           <select id="passQustion" name="passQustion">
                              <option value="1">기억에 남는 추억의 장소는?</option>
                              <option value="2">자신의 인생 좌우명은?</option>
                              <option value="3">가장 기억에 남는 선생님 성함은?</option>
                              <option value="4">자신의 보물 제 1호는?</option>
                              <option value="5">유년시절 가장 생각나는 친구의 이름은?</option>
                              <option value="6">다시 태어나면 되고 싶은 것은?</option>
                              <option value="7">인상 깊게 읽은 책 이름은?</option>
                           </select>
                           <br>
                        <input type="text" name="answer" id="answer" value="" placeholder=${ mypage.uanswer } />
                        </div>
                        
                        
                        <div class="col-6 col-12-mobilep">
                           <input type="text" name="firstName" id="firstName" value="" placeholder="${ mypage.uname }" />
                        </div>
<!--                         <div class="col-6 col-12-mobilep">
                           <input type="text" name="LastName" id="LastName" value="" placeholder= "이름" />
                        </div>
                         -->
                         <div class="col-6 col-12-mobilep"></div>
                         <br>
                        <div class="col-6">
                           <input type="text" name="myZipcode" id="myZipcode" value="" placeholder="${ mypage.upostcode }" />
                        </div>
                        <div class="col-3">
                           <input type="button" name="find_zipcode" id="find_zipcode" value="우편번호 찾기" />
                        </div>
                        <div class="col-12">
                           <input type="text" name="address" id="address" value="" placeholder="${ mypage.uaddr }" />
                        </div>
                        <div class="col-12">
                           <input type="text" name="addressDetail" id="addressDetail" value="" placeholder="${ mypage.uaddrdetail }" />
                        </div>
                        
                        <div class = "col-12">
                        <br>
                           <ul class = "actions special">
                              <li><input type = "submit" value = "확인"></li>
                              <li><input type="button" value="취소"></li>
                           </ul>
                        </div>
                     </div>
                  </form>
               </div>
               
            </section>

         <!-- Footer -->

      </div>
      
      <script>
      $("#passQustion").val(${mypage.qid}).prop("selected", true);
      </script>
      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/jquery.dropotron.min.js"></script>
         <script src="assets/js/jquery.scrollex.min.js"></script>
         <script src="assets/js/browser.min.js"></script>
         <script src="assets/js/breakpoints.min.js"></script>
         <script src="assets/js/util.js"></script>
         <script src="assets/js/main.js"></script>
   </body>
</html>