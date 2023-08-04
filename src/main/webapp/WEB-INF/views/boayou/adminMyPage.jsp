<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin My Page</title>

<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous" ></script> 

<meta content="" name="description">
<meta content="" name="keywords">
<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">
<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1
			,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital
			,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">
<!-- Vendor CSS Files -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css?after">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css?after">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.css?after">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/css/glightbox.min.css?after">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.css?after">
<!-- Template Main CSS File -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/main.css?after">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/user.css?after">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/pwd.css?after">	
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/profile.css?after">

<style>

	.custom-btn {
	    display: inline-block;
	    padding: 6px 12px;
	    background-color: #5cb85c;
	    border: 1px solid #4cae4c;
	    border-radius: 5px;
	    color: white;
	    font-weight: bold;
	    text-decoration: none;
	    cursor: pointer;
	}

	#div-1 {
	  flex: 50%;
	  box-sizing: border-box;
	  padding-right: 10%;
	}
	#div-2 {
	  flex: 25%;
	  box-sizing: border-box;
	}
	#div-3 {
	  flex: 25%;
	  box-sizing: border-box;
	}
	
</style>

<script>
<<<<<<< HEAD

	$(document).ready(function () {
		  $(".trigger").on("click", function () {
		    $(".modal-wrapper").toggleClass("open");
		    $(".page-wrapper").toggleClass("blur-it");
		    return false;
		  });
		});
	
	$(document).ready(function () {
		  $(".pwd-trigger").on("click", function () {
		    $(".pwd-modal-wrapper").toggleClass("pwd-open");
		    $(".pwd-page-wrapper").toggleClass("blur-it");
		    return false;
		  });
		});
		
	$(document).ready(function () {
		  $(".profile-trigger").on("click", function () {
		    $(".profile-modal-wrapper").toggleClass("profile-open");
		    $(".profile-page-wrapper").toggleClass("blur-it");
		    return false;
		  });
		});
	
	$(function(){
		  $('.tabcontent > div').hide();
		  $('.tabnav a').click(function () {
		    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
		    $('.tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });
		  
	$(function(){
		  $('.pwd-tabcontent > div').hide();
		  $('.pwd-tabnav a').click(function () {
		    $('.pwd-tabcontent > div').hide().filter(this.hash).fadeIn();
		    $('.pwd-tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });
		  
	$(function(){
		  $('.profile-tabcontent > div').hide();
		  $('.profile-tabnav a').click(function () {
		    $('.profile-tabcontent > div').hide().filter(this.hash).fadeIn();
		    $('.profile-tabnav a').removeClass('active');
		    $(this).addClass('active');
		    return false;
		  }).filter(':eq(0)').click();
		  });
		  
	function Delete() {
	var confirmation = confirm("정말로 삭제하시겠습니까?");
	if (confirmation) {
	    document.getElementById("deleteForm").submit();
	}
	}  
	
	function previewImage() {
	  const preview = document.getElementById('currentImage');
	  const file = document.getElementById('profileImage').files[0];
	  const reader = new FileReader();
	
	  reader.addEventListener("load", function () {
	    preview.src = reader.result;
	  }, false);
	
	  if (file) {
	    reader.readAsDataURL(file);
	  }
	}
	
	document.getElementById("adminUpdateProfileForm").addEventListener("submit", (event) => {
	    event.preventDefault();
	    const formData = new FormData(event.target);
	    const url = "/controller/boayou/adminUpdateProfileForm";

	    fetch(url, {
	      method: "POST",
	      body: formData
	    })
	    .then((response) => response.json())
	    .then((result) => {
	      if (result.success) {
	        alert("프로필 변경 완료");
	        window.opener.location.reload();
	        window.close();
	      } else {
	        alert("프로필 변경 실패");
	      }
	    });
	  });
	  
	function goToAdminMyPage(event) {
		  event.stopPropagation(); // 이벤트 버블링 방지
		    location.href = "${pageContext.request.contextPath}/boayou/adminMyPage";
		  }
=======
$(document).ready(function () {
	  $(".trigger").on("click", function () {
	    $(".modal-wrapper").toggleClass("open");
	    $(".page-wrapper").toggleClass("blur-it");
	    return false;
	  });
	});
>>>>>>> 6bf2f4c0b4aec8c4ddaf3d11df25e3d580074c4a

$(document).ready(function () {
	  $(".pwd-trigger").on("click", function () {
	    $(".pwd-modal-wrapper").toggleClass("pwd-open");
	    $(".pwd-page-wrapper").toggleClass("blur-it");
	    return false;
	  });
	});
	
$(document).ready(function () {
	  $(".profile-trigger").on("click", function () {
	    $(".profile-modal-wrapper").toggleClass("profile-open");
	    $(".profile-page-wrapper").toggleClass("blur-it");
	    return false;
	  });
	});

$(function(){
	  $('.tabcontent > div').hide();
	  $('.tabnav a').click(function () {
	    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });
	  
$(function(){
	  $('.pwd-tabcontent > div').hide();
	  $('.pwd-tabnav a').click(function () {
	    $('.pwd-tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.pwd-tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });
	  
$(function(){
	  $('.profile-tabcontent > div').hide();
	  $('.profile-tabnav a').click(function () {
	    $('.profile-tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.profile-tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });
	  
function Delete() {
var confirmation = confirm("정말로 삭제하시겠습니까?");
if (confirmation) {
    document.getElementById("deleteForm").submit();
}
}  

function previewImage() {
  const preview = document.getElementById('currentImage');
  const file = document.getElementById('profileImage').files[0];
  const reader = new FileReader();

  reader.addEventListener("load", function () {
    preview.src = reader.result;
  }, false);

  if (file) {
    reader.readAsDataURL(file);
  }
}
function displayProfileBox() {
  // profileBox 표시
  document.getElementById("profileBox").style.display = "block";
}

// 마우스 다른 영역으로 이동시, profileBox 숨기기
document.addEventListener("mouseover", function (event) {
  if (event.target.id !== "profileBox" && event.target.parentNode.id !== "profileBox") {
    document.getElementById("profileBox").style.display = "none";
  }
});

function goToMyPage(event) {
	  event.stopPropagation(); // 이벤트 버블링 방지
	    location.href = "${pageContext.request.contextPath}/boayou/adminMyPage";
	  }
</script>

</head>
<body>

	<!-- ======= Header ======= -->
	<header id="header" class="header d-flex align-items-center fixed-top">
		<div class="container-fluid d-flex align-items-center justify-content-between">
			<a href="${pageContext.request.contextPath}/boayou/homePage" class="logo d-flex align-items-center  me-auto me-lg-0">
			<i class="bi bi-list"></i>
				<h1> Boayou</h1>
			</a>
			<nav id="navbar" class="navbar">
				<ul>
					<li><a href="${pageContext.request.contextPath}/boayou/homePage" class="active">Home</a></li>
					<li class="dropdown"><a href="#"><span>영화정보</span>
					<i class="bi bi-chevron-down dropdown-indicator"></i></a>
						<ul>
							<li class="dropdown"><a href="#"><span>영화목록</span>
							<i class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=한국영화">한국영화</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=외국영화">외국영화</a></li>
								</ul></li>
							<li class="dropdown"><a href="#"><span>관람등급</span>
							<i class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=전체관람가">전체관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=12세관람가">12세관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=15세관람가">15세관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=18세관람가">18세관람가(청소년관람불가)</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=기타">기타</a></li>
								</ul></li>
							<li class="dropdown"><a href="#"><span>개봉연도</span>
							<i class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2023">2023</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2022">2022</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2021">2021</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=이전">이전</a></li>
								</ul></li>
							<li class="dropdown"><a href="#"><span>장르</span>
							<i class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=드라마가족코메디">드라마,가족,코메디</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=멜로로맨스">멜로,로맨스</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=공포스릴러범죄전쟁">공포,스릴러,범죄, 전쟁</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=액션SF판타지">액션,SF,판타지</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=기타">기타</a></li>
								</ul></li>
<<<<<<< HEAD
						</ul></li>
					 <c:choose>
						    <c:when test="${not empty sessionScope.loginUser}">					        				
						        <c:choose>
						            <c:when test="${sessionScope.loginUser.user_id=='admin00'}">
						                <li><a href="adminMyPage">관리자페이지</a></li>
						            </c:when>
						            <c:otherwise>
						                <!-- ===user profile section start===-->
							   		<li class="dropdown"><a href="${pageContext.request.contextPath}/boayou/adminMyPage">
									  <img src="${sessionScope.loginUserProfile.img}" style="margin-right: 10px;" width="30px" height="30px" />
									  ${sessionScope.loginUser.name} 님
									</a>
									<ul style="width:300px;"><div style="display:flex;" onclick = "goToAdminMyPage(event);">
										<img src="${sessionScope.loginUserProfile.img}" class="testimonial-img" alt="" style="margin-right: 20px; font-size: 10pt; width:60px; height:60px;" onclick="goToAdminMyPage(event);">
										${sessionScope.loginUser.user_id} 님
									</div><br>
									<h7 style="margin-left : 100px;">${sessionScope.loginUserProfile.intro }</h7><br><br>
									</ul>		
									</li>								
									<!-- ===user profile section end=== -->
						                <a href="logout">로그아웃</a>	
						            </c:otherwise>						            
						        </c:choose>
						    </c:when>
						    <c:otherwise>
						        <li><a href="login">로그인</a></li>
						        <li><a href="join">회원가입</a></li>
						    </c:otherwise>
						</c:choose>
						<li><a href="community">커뮤니티</a></li> 
            </ul> 
=======
						</ul></li>	
					<c:choose>
						<c:when test="${not empty sessionScope.loginUser}">
							<a>${sessionScope.loginUser.name} 님</a>
							<a href="logout">로그아웃</a>
							<li><a href="adminMyPage">관리자페이지</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="login">로그인</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="community">커뮤니티</a></li>
				</ul>
>>>>>>> 6bf2f4c0b4aec8c4ddaf3d11df25e3d580074c4a
			</nav>
			<i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i> 
			<i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>
		</div>
	</header>
	<!-- End Header -->
	<main id="main" data-aos="fade" data-aos-delay="1500">
		<!-- ======= End Page Header ======= -->
		<div class="page-header d-flex align-items-center">
			<div class="container position-relative">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6 text-center">
						<h3>관리자페이지</h3>
					</div>
				</div>
			</div>
		</div>
		<!-- End Page Header -->

    <!-- ======= Gallery Single Section ======= -->
    <section id="gallery-single" class="gallery-single">
			<div class="container">
				<div class="row justify-content-between gy-4 mt-4">
					<div class="div-box" id="div-1">
						<div class="portfolio-description">
							<h2>회원님의 프로필 변경하기</h2>
				             <div class="testimonial-item">
				                <div>
				                  <img src="${sessionScope.loginUserProfile.img}" class="testimonial-img" alt="">
								<c:choose>
									<c:when test="${not empty sessionScope.loginUser}">
										<h3>${sessionScope.loginUser.user_id} 님</h3><br>
										<h4 >회원등급 : ${sessionScope.loginUser.user_level} </h4><br>
										<p>
										  <i class="bi bi-quote quote-icon-left" style = "padding-left : 20px;"></i>
						                  <h3 style = "padding-left : 200px;">${sessionScope.loginUserProfile.intro}</h3>
						                  <i class="bi bi-quote quote-icon-right" style = "padding-left : 80px;"></i>
										</p>		              
									</c:when>
								</c:choose><br><br>
								<div class="profile-page-wrapper">
									<a class="btn profile-trigger" style="background-color: #161616; color: green;  width: 150px; text-align : left; padding-left : 0px;" href="#">프로필 변경</a>
									</div>
				                </div>
				              </div>
				            </div>
				          </div>

					<div class="div-box" id="div-2">
						<div class="portfolio-info">
							<c:choose>
								<c:when test="${not empty sessionScope.loginUser}">
									<h3>${sessionScope.loginUser.user_id}님의정보</h3>
									<ul>
										<li><strong>아이디</strong> <span>${sessionScope.loginUser.user_id}</span></li>
										<li><strong>이름</strong> <span>${sessionScope.loginUser.name}</span></li>
										<li><strong>나이</strong> <span>${sessionScope.loginUser.age}</span></li>
										<li><strong>생년월일</strong> <span>${sessionScope.loginUser.jumin.substring(0,2)}년
												${sessionScope.loginUser.jumin.substring(2,4)}월
												${sessionScope.loginUser.jumin.substring(4,6)}일</span></li>
										<li><div class="pwd-page-wrapper">
											<a class="btn pwd-trigger" style="background-color: black; color: green;  width: 150px; text-align : left; padding-left : 0px;" href="#">비밀번호 변경</a>
											</div></li>
											<li></li>
											<li><a href="logout" style="color : green;">로그아웃</a></li>
											<li><div class="page-wrapper">
											<a class="btn trigger" href="#">MyMovieList</a>
											</div></li>
											</ul>
								</c:when>
							</c:choose>
						</div>
					</div>
					<div class="div-box" id="div-3">
						<div class="portfolio-info">
							<c:choose>
								<c:when test="${not empty sessionScope.loginUser}">
									<h3>${sessionScope.loginUser.user_id}님의관리목록</h3>
									<ul>
										<li><strong>이용회원관리</strong>
												<span> <a href="userList">가입회원관리</a></span> 
												<span> <a href="membershipList">가입회원등급관리</a></span>
										</li>
										<li><strong>커뮤니티관리</strong>
												<span> <a href="communityList">커뮤니티관리</a></span>
												<span> <a href="#" >공지사항띄우기</a></span>
										</li>
									</ul>
									<br>
									<a href="logout">로그아웃</a>
								</c:when>
							</c:choose>
							<br> <br>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Gallery Single Section -->
		
			<!-- 		Start Profile change Section -->
			<div class="profile-modal-wrapper">
			  <div class="profile-modal">
			    <div class="profile-head">
			      <a class="btn-close profile-trigger" href="#">
			        <i class="fa fa-times" aria-hidden="true"></i>
			      </a>
			      <h2>프로필 변경</h2>
			    </div>
			    <br><br><br><br>
	  				<form id="adminnUpdateProfileForm" action="${pageContext.request.contextPath}/boayou/adminUpdateProfileForm" method="post" enctype="multipart/form-data">
					  <div style="text-align: center;">
					    <img id="currentImage" src="${sessionScope.loginUserProfile.img }" style="margin: 0 auto;" width="200" height="200"><br>
							<label for="profileImage" class="custom-btn">
							    사진을 선택하세요
							</label>
							<input type="file" id="profileImage" name="profileImage" accept="image/png, image/jpeg, image/gif" onchange="previewImage()" style="display:none"/>
	
					  </div>
					  <div>
					    <br>
					    <textarea id="profileMessage" name="profileMessage" rows="5" cols="110" style="margin: 0 auto;">${sessionScope.loginUserProfile.intro}</textarea>
					  </div>
					  <button type="submit" class="custom-btn">저장</button>
					</form>
			  </div>
			</div>
	<!-- 		End Profile Change Section -->
	    
	    <!-- 		Start Pwd change Section -->
			<div class="pwd-modal-wrapper">
			  <div class="pwd-modal">
			    <div class="pwd-head">
			      <a class="btn-close pwd-trigger" href="#">
			        <i class="fa fa-times" aria-hidden="true"></i>
			      </a>
			      <h2>패스워드 변경</h2>
			    </div>
			    <h1 style=" text-align : center; font-size : 15pt;">패스워드 변경하기</h1><br><br>
	  				<form id="updateForm" action="${pageContext.request.contextPath}/boayou/updateUserPwd" method="post">
	    				<label for="pwd" style="margin-left : 350px">변경할 패스워드 : </label>
	    				<input name="pwd" placeholder="변경할 비밀번호 입력" />
	    				<input style = "float: center" type="submit" value="변경사항 적용" onclick="alert('변경되었습니다');">
					</form>
			  </div>
			</div>
	<!-- 		End Pwd Change Section -->
		
		

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>PhotoFolio</span></strong>. All
				Rights Reserved
			</div>
			<div class="credits">
				<!-- All the links in the footer should remain intact. -->
				<!-- You can delete the links only if you purchased the pro version. -->
				<!-- Licensing information: https://bootstrapmade.com/license/ -->
				<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/ -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->
	<a href="#" class="scroll-top d-flex align-items-center justify-content-center">
	<i class="bi bi-arrow-up-short"></i></a>
	<div id="preloader">
		<div class="line"></div>
	</div>
	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.js"></script>
	<!-- Template Main JS File -->
	<script	src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/homePage.js"></script>
		
</body>
</html>