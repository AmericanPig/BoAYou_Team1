<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>PhotoFolio Bootstrap Template - Index</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="img/favicon.png" rel="icon">
<link href="img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main2.css">
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



<!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>
function openCommentPopup(event, community_no) {
	  event.preventDefault();
	 
	  let popupWindow = window.open("", "popupWindow", "width=800,height=0");
	  let newUrl = "/controller/boayou/comments?community_no=" + community_no;
	  popupWindow.document.write('<iframe src="' + newUrl + '" frameborder="0" style="width: 100%; height: 100%;"></iframe>');

	  slideUpWindow(popupWindow);
	}
	  
	function slideUpWindow(popupWindow) {
	  let currentHeight = 0;
	  let increment = 20;
	  let screenHeight = window.innerHeight;
	  let windowWidth = 800;
	  
	  let slideUpInterval = setInterval(function() {
	    currentHeight += increment;
	    let newYPosition = window.screenY + (screenHeight - currentHeight) / 2;
	    let centerXPosition = window.screenX + (screen.width - windowWidth) / 2;
	    popupWindow.resizeTo(windowWidth, currentHeight);
	    popupWindow.moveTo(centerXPosition, newYPosition);

	    if (currentHeight >= screenHeight) {
	      clearInterval(slideUpInterval);
	      popupWindow.resizeTo(windowWidth, screenHeight);
	    }
	  }, 10);
	}
	  function confirmDelete() {
          var confirmation = confirm("정말로 삭제하시겠습니까?");
          if (confirmation) {
              document.getElementById("deleteForm").submit();
          }
      }	 
	  function submitJoayoForm(element) {
		  var community_no = $(element).data('community-no');
		  var user_id = $(element).data('user-id');

		  $.ajax({
		    type: 'POST',
		    url: 'pushcommunityjoayo',
		    data: { community_no: community_no, user_id: user_id },
		    dataType: 'json',
		    beforeSend: function() {
		      console.log('Request:', { community_no: community_no, user_id: user_id });
		    },
		    success: function(response) {
		      console.log('Response:', response);

		      if (response.hasOwnProperty('newJoayoCount')) {
		        $(element).text(response.newJoayoCount);
		      } else {
		        console.error('Invalid response. Please check the server.');
		      }
		    },
		    error: function(xhr, status, error) {
		      alert('로그인 후 이용가능한 서비스입니다.');
		      console.error('Error:', error);
		    },
		  });
		}
	  function submitSiroyoForm(element) {
		  var community_no = $(element).data('community-no');
		  var user_id = $(element).data('user-id');

		  $.ajax({
		    type: 'POST',
		    url: 'pushcommunitysiroyo',
		    data: { community_no: community_no, user_id: user_id },
		    dataType: 'json',
		    beforeSend: function() {
		      console.log('Request:', { community_no: community_no, user_id: user_id });
		    },
		    success: function(response) {
		      console.log('Response:', response);

		      if (response.hasOwnProperty('newSiroyoCount')) {
		        $(element).text(response.newSiroyoCount);
		      } else {
		        console.error('Invalid response. Please check the server.');
		      }
		    },
		    error: function(xhr, status, error) {
		      alert('로그인 후 이용가능한 서비스입니다.');
		      console.error('Error:', error);
		    },
		  });
		}
	  function goToMyPage(event) {
		  event.stopPropagation(); // 이벤트 버블링 방지
		    location.href = "${pageContext.request.contextPath}/boayou/myPage";
		  }
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
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=한국영화">한국영화</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=외국영화">외국영화</a></li>

								</ul></li>

							<li class="dropdown"><a href="#"><span>관람등급</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=전체관람가">전체관람가</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=12세관람가">12세관람가</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=15세관람가">15세관람가</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=18세관람가">18세관람가(청소년관람불가)</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=기타">기타</a></li>

								</ul></li>

							<li class="dropdown"><a href="#"><span>개봉연도</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2023">2023</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2022">2022</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2021">2021</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=이전">이전</a></li>


								</ul></li>
							<li class="dropdown"><a href="#"><span>장르</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=드라마가족코메디">드라마,
											가족, 코메디</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=멜로로맨스">멜로,
											로맨스</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=공포스릴러범죄전쟁">공포,
											스릴러, 범죄, 전쟁</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=액션SF판타지">액션,
											SF, 판타지</a></li>
									<li><a
										href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=기타">기타</a></li>

								</ul></li>



						</ul></li>
					<c:choose>
						<c:when test="${not empty sessionScope.loginUser}">
								<!-- ===user profile section start===-->
						   		<li class="dropdown"><a href="${pageContext.request.contextPath}/boayou/myPage">
								  <img src="${sessionScope.loginUserProfile.img}" style="margin-right: 10px;" width="30px" height="30px" />
								  ${sessionScope.loginUser.name} 님
								</a>
								<ul style="width:300px;"><div style="display:flex;" onclick = "goToMyPage(event);">
									<img src="${sessionScope.loginUserProfile.img}" class="testimonial-img" alt="" style="margin-right: 20px; font-size: 10pt; width:60px; height:60px;" onclick="${pageContext.request.contextPath}/boayou/myPage">
									${sessionScope.loginUser.user_id} 님
								</div><br>
								<h7 style="margin-left : 100px;">${sessionScope.loginUserProfile.intro }</h7><br><br>
								</ul>		
								</li>								
								<!-- ===user profile section end=== -->
						       <a href="logout">로그아웃</a>
							<li><a href="myPage">마이페이지</a></li>
						</c:when>
						<c:otherwise>
							<li><a href="login">로그인</a></li>
							<li><a href="join">회원가입</a></li>
						</c:otherwise>
					</c:choose>

					<li><a href="community">커뮤니티</a></li>
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

	<main id="main" data-aos="fade" data-aos-delay="1500">

		<!-- ======= End Page Header ======= -->
		<div class="page-header d-flex align-items-center">
			<div class="container position-relative">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6 text-center">
						<h2>Community</h2>

						<c:if test="${not empty sessionScope.loginUser}">
						<a class="cta-btn" href="contact">글 작성</a>
						</c:if>
					</div>
				</div>
			</div>
		</div>
		<!-- End Page Header -->

		<!-- ======= Testimonials Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container">

				<div class="section-header">
					<h2>Best</h2>
					<p>인기글</p>
				</div>

				<div class="slides-3 swiper">
					<div class="swiper-wrapper">
						<c:forEach var="rank" items="${communityRank}" varStatus="status">
							<div class="swiper-slide">
								<div class="testimonial-item">
									<span style="text-align:right;" class="name"><a href="${pageContext.request.contextPath }/boayou/userPage?user_id=${rank.user_id}" class="author">${rank.user_id}</a></span>
									<h2>${status.count}위</h2>
									<h3>${rank.community_title}</h3>																	
									<div class="profile mt-auto">			
										<a href="${pageContext.request.contextPath}/boayou/movieInfoPage?Docid=${rank.docid}" class="image featured">																		
										<img src="${rank.posters}" class="testimonial-img" alt=""></a>							
										<p>${rank.community_content}</p>
										<ul class="stats">
											<li style="float: left;"><a href="javascript:void(0)"
												class="icon solid fa-thumbs-up" style="color: white;"
												onclick="submitJoayoForm(this);"
												data-community-no="${rank.community_no}"
												data-user-id="${sessionScope.loginUser.user_id}">${rank.joayo}</a></li>
											<li style="float: right;"><a href="javascript:void(0)"
												class="icon solid fa-thumbs-down" style="color: white;"
												onclick="submitSiroyoForm(this);"
												data-community-no="${rank.community_no}"
												data-user-id="${sessionScope.loginUser.user_id}">${rank.siroyo}</a></li>
											<li style="float: center;"><a href="#"
												class="icon solid fa-comment" style="color: white;"
												onclick="openCommentPopup(event, ${rank.community_no});">${rank.comment_count}</a></li>
										</ul>

									</div>
								</div>
							</div>
							<!-- End testimonial item -->
						</c:forEach>

					</div>
					<div class="swiper-pagination"></div>
				</div>

			</div>

		</section>
		<!-- End Testimonials Section -->
		<!-- ======= Services Section ======= -->
		<c:forEach var="community" items="${community_List}">
			<article class="post">
				<header>
					<div class="title">
						<h2>${community.community_title}</h2>
					</div>
					<div class="meta">
						<a href="${pageContext.request.contextPath }/boayou/userPage?user_id=${community.user_id}" class="author"><span class="name">${community.user_id}</span></a>
					</div>
				</header>
				<c:if test="${not empty community.posters}">
					<a href="${pageContext.request.contextPath}/boayou/movieInfoPage?Docid=${community.docid}" class="image featured"> <img
						src="${community.posters}"/>
					</a>
				</c:if>
				<p>${community.community_content}</p>
				<footer>
					<c:if test="${not empty sessionScope.loginUser and sessionScope.loginUser.user_id == community.user_id}">
					<ul class="actions">
						<li><button type="button" onclick="confirmDelete()"
								class="button large">삭제</button></li>
					</ul>
					</c:if>
					<form id="deleteForm" action="deletecommunity" method="POST">
						<input type="hidden" name="community_no"
							value="${community.community_no}">
					</form>
					<ul class="stats">

						<li><a href="javascript:void(0)"
							class="icon solid fa-thumbs-up" style="color: white;"
							onclick="submitJoayoForm(this);"
							data-community-no="${community.community_no}"
							data-user-id="${sessionScope.loginUser.user_id}">${community.joayo}</a>
						</li>
						<li><a href="javascript:void(0)"
							class="icon solid fa-thumbs-down" style="color: white;"
							onclick="submitSiroyoForm(this);"
							data-community-no="${community.community_no}"
							data-user-id="${sessionScope.loginUser.user_id}">${community.siroyo}</a></li>
						<li><a href="javascript:void(0)"
							class="icon solid fa-comment" style="color: white;"
							onclick="openCommentPopup(event, ${community.community_no});">${community.comment_count }</a></li>
					</ul>
				</footer>
			</article>
		</c:forEach>



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

	<a href="#"
		class="scroll-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<div id="preloader">
		<div class="line"></div>
	</div>

	<!-- Vendor JS Files -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

</body>

</html>