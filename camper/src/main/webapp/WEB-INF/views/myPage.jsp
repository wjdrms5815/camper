<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML>
<!--
   Alpha by Pixelarity
   pixelarity.com | hello@pixelarity.com
   License: pixelarity.com/license
-->
<html>
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
                  <h1>���� ������</h1>
                  </div>
               </header>
               <div class="box">
                  <form method="post" action="#">
                     <div class="row gtr-50 gtr-uniform">
                     
                        <div class="col-12">
                           <div id = "id">���̵�</div>
                            <c:forEach var="output" items="${ user }">
					        <tr>
					          <td>${ output.uid }</td>
					          
					        </tr>
					      </c:forEach>
                           <hr class = "one">
                        </div>
                        
                        <div class="col-6 col-12-mobilep">
                           <input type="password" name="password" id="password" value="" placeholder="��й�ȣ" />
                        </div>
                        <div class="col-6 col-12-mobilep">
                           <input type="password" name="newPassword" id="newPassword" value="" placeholder="���ο� ��й�ȣ" />
                        </div>
                        
                        <div class="col-12">
                           <select id = "passQustion">
                              <option value="��￡ ���� �߾��� ��Ҵ�?">��￡ ���� �߾��� ��Ҵ�?</option>
                              <option value="�ڽ��� �λ� �¿����?">�ڽ��� �λ� �¿����?</option>
                              <option value="���� ��￡ ���� ������ ������?">���� ��￡ ���� ������ ������?</option>
                              <option value="�ڽ��� ���� �� 1ȣ��?">�ڽ��� ���� ��1ȣ��?</option>
                              <option value="������� ���� �������� ģ���� �̸���?">������� ���� �������� ģ���� �̸���?</option>
                              <option value="�ٽ� �¾�� �ǰ� ���� ����?">�ٽ� �¾�� �ǰ� ���� ����?</option>
                              <option value="�λ� ��� ���� å �̸���?">�λ� ��� ���� å �̸���?</option>
                           </select>
                        <input type="text" name="answer" id="answer" value="" placeholder="����" />
                        </div>
                        
                        
                        <div class="col-6 col-12-mobilep">
                           <input type="text" name="firstName" id="firstName" value="" placeholder="��" />
                        </div>
                        <div class="col-6 col-12-mobilep">
                           <input type="text" name="LastName" id="LastName" value="" placeholder= "�̸�" />
                        </div>
                        
                      
                        <div class="col-6">
                           <input type="text" name="myZipcode" id="myZipcode" value="" placeholder="�����ȣ" />
                        </div>
                        <div class="col-3">
                           <input type="button" name="find_zipcode" id="find_zipcode" value="�����ȣ ã��" />
                        </div>
                        <div class="col-12">
                           <input type="text" name="address" id="address" value="" placeholder="�ּ�" />
                        </div>
                        <div class="col-12">
                           <input type="text" name="addressDetail" id="addressDetail" value="" placeholder="�� �ּ�" />
                        </div>
                        
                        <div class = "col-12">
                        <br>
                           <ul class = "actions special">
                              <li><input type = "submit" value = "Ȯ��"></li>
                           </ul>
                        </div>
                     </div>
                  </form>
               </div>
               
            </section>

         <!-- Footer -->
            <footer id="footer">

                  <ul class="icons">
                     <li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
                     <li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
                     <li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
                     <li><a href="#" class="icon brands fa-github"><span class="label">Github</span></a></li>
                     <li><a href="#" class="icon brands fa-dribbble"><span class="label">Dribbble</span></a></li>
                     <li><a href="#" class="icon brands fa-google-plus"><span class="label">Google+</span></a></li>
                  </ul>
                  <ul class="copyright">
                     <li>&copy; Untitled. All rights reserved.</li>
                  </ul>
            </footer>

      </div>

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