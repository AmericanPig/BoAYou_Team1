<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>PhotoFolio Bootstrap Template - Index</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap"
        rel="stylesheet">

    <!-- Vendor CSS Files -->
   <link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/css/glightbox.min.css">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.css">

<!-- Template Main CSS File -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <script>

		

        function verifyField() {
            let element = document.getElementById("user_id");
            let msg = 'id 입력';
            if (!isValid(element, msg)) {
                return false;
            }
            
            element = document.getElementById("pwd");
            msg = 'pwd 입력';
            if (!isValid(element, msg)) {
                return false;
            }
			
            element = document.getElementById("pw-double");
            msg = "비밀번호 확인을 입력하세요.";
            if(!isValid (element,msg)){
                return false;
            }

            element = document.getElementById("name");
            msg = 'name 입력';
            if (!isValid(element, msg)) {
                return false;
            }
            
            element = document.getElementById("age");
            msg = 'age 입력';
            if (!isValid(element, msg)) {
                return false;
            }


            element = document.getElementById("jumin");
            msg = 'jumin 입력';
            if (!isValid(element, msg)) {
                return false;
            }

            let originObj = document.getElementById("pwd");
            let checkObj = document.getElementById("pw-double");
            if(originObj.value != checkObj.value){
                alert("pwd확인하기");
                checkObj.focus();
                return false;
            }
            return true;
        }

        function isValid(element, msg) {
            let result = false;
            if (element.value == '') {
                alert(msg);
                element.focus();
                result = false;
            } else {
                result = true;
            }
            return result;
        }

        function double(value) {
            let origin = document.getElementById("pwd").value;
            let boxSpan = document.getElementById("box-span");

            if (origin == value) {
                boxSpan.className = "box-span-on";
                boxSpan.textContent = "일치";
            } else {
                boxSpan.className = "box-span-off";
                boxSpan.textContent = "불일치";
            }

        }
        </script>

<script>
$(function(){
 
    
    
    $("#checkId").click(function(){
    
        let user_id = $("#user_id").val();
         
        $.ajax({
            type:'post', //post 형식으로 controller 에 보내기위함!!
            url:"/controller/boayou/checkId", // 컨트롤러로 가는 mapping 입력
            data: {"user_id":user_id}, // 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
            beforeSend: function () { // 추가된 콜백 함수
                console.log("Sending user_id: ", user_id);                
            },
            success: function(result){ 
                if (result == 1) {
                	console.log("result: ", result);
                    $("#id_feedback").html('이미 사용중인 아이디입니다.');
                    $("#id_feedback").css('color', '#dc3545');
                } else {
                	console.log("result: ", result);
                    $("#id_feedback").html('사용할 수 있는 아이디입니다.');
                    $("#id_feedback").css('color', '#28a745');
                }
            },
            error : function(error){alert(error);}
        });
        
    });
    
});
 
 
</script>
</head>

<body>

   	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div
			class="container-fluid d-flex align-items-center justify-content-between">

			<a href="${pageContext.request.contextPath}/boayou/homePage"
				class="logo d-flex align-items-center  me-auto me-lg-0"> <!-- Uncomment the line below if you also wish to use an image logo -->
				<!-- <img src="img/logo.png" alt=""> --> <i class="bi bi-list"></i>
				<h1>Boayou</h1>
			</a>

			<nav id="navbar" class="navbar">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/boayou/homePage"
						class="active">Home</a></li>

					<li class="dropdown"><a href="#"><span>영화정보</span> <i
							class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>

							<li class="dropdown"><a href="#"><span>영화목록</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">한국영화</a></li>
									<li><a href="#">외국영화</a></li>
									
								</ul>
							</li>
							
							<li class="dropdown"><a href="#"><span>관람등급</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">전체관람가</a></li>
									<li><a href="#">12세관람가</a></li>
									<li><a href="#">15세관람가</a></li>
									<li><a href="#">18세관람가(청소년관람불가)</a></li>
									<li><a href="#">미성년자관람불가</a></li>
									
								</ul>
							</li>
							
								<li class="dropdown"><a href="#"><span>개봉연도</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">2023</a></li>
									<li><a href="#">2022</a></li>
									<li><a href="#">2021</a></li>
									<li><a href="#">이전</a></li>
																		
								</ul>
							</li>
							<li class="dropdown"><a href="#"><span>장르</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="#">드라마</a></li>
									<li><a href="#">범죄 액션</a></li>
									<li><a href="#">로맨스 멜로</a></li>
									<li><a href="#">공포</a></li>
									<li><a href="#">판타지 SF</a></li>
																		
								</ul>
							</li>
							
							

						</ul></li>
					<li><a href="myProfilePage.html">커뮤니티</a></li>
					<li><a href="myProfilePage.html">마이페이지</a></li>
					<li><a href="login.html">로그인</a></li>
					<li><a href="join.html">회원가입</a></li>
				</ul>
			</nav>
			<!-- .navbar -->

			<!--  <div class="header-social-links">
        <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
        <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
        <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
        <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></i></a>
      </div>
    -->
			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> <i
				class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

		</div>
	</header>
	<!-- End Header -->

    <form action="${pageContext.servletContext.contextPath  }/boayou/InsertJoin" method="post" role="form" class="php-email-form">
        <div class="col-lg-12 text-center">
            <div class="header" >
                <h3>로그인</h3>
            </div>
            <br>
            <div class="box-input">
               <label for="user_id"></label> <input type="text"
								id="user_id" name="user_id" placeholder="아이디">
							<input type="button" id="checkId" value="중복검사"><br/>
  							<div><span id="id_feedback" style="font-size:12px;"></span></div>
							<div class="box-line-height"></div>
             			    <br>
                
							<label for="pwd"></label> <input type="password"
								id="pwd" name="pwd" placeholder="비밀번호">
							<div class="box-line-height"></div>
							<br>
							<label for="pw-double"></label> <input type="password"
								id="pw-double" placeholder="비밀번호 확인" onkeyup="double(this.value);"
								> <span id="box-span"
								class="box-span-on"></span>
							<div class="box-line-height"></div>
							<br>
							<label for="name"></label> <input type="text"
								id="name" name="name" placeholder="이름">
							<div class="box-line-height"></div>
							<br>
							<label for="age"></label> <input type="text" id="age"
								name="age" placeholder="나이">
							<div class="box-line-height"></div>
							<br>
							
							<label for="jumin"></label> <input type="text"
								id="jumin" name="jumin" placeholder="주민번호">
							<div class="box-line-height"></div>
							<br>
							
 </div>
<br>
            <div class="box-submit">
               <input type="submit" value="전송" onclick="return verifyField();">
               <a href="javascript:history.back();">돌아가기</a>
            </div>
        </div>
    </form>
    <!-- ======= Footer ======= -->
    <footer id="footer" class="footer">
        <div class="container">
            <div class="copyright">
                &copy; Copyright <strong><span>PhotoFolio</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </div>
    </footer><!-- End Footer -->

    <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i
            class="bi bi-arrow-up-short"></i></a>

    <div id="preloader">
        <div class="line"></div>
    </div>

    <!-- Vendor JS Files -->
  <script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.js"></script>
<script src="${pageContext.request.contextPath}/resources/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>

</html>