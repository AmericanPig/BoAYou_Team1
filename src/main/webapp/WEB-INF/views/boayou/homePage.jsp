<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


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
  <script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
  
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
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=한국영화">한국영화</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieNation=외국영화">외국영화</a></li>
									
								</ul>
							</li>
							
							<li class="dropdown"><a href="#"><span>관람등급</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=전체관람가">전체관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=12세관람가">12세관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=15세관람가">15세관람가</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=18세관람가">18세관람가(청소년관람불가)</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=기타">기타</a></li>
									
								</ul>
							</li>
							
								<li class="dropdown"><a href="#"><span>개봉연도</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2023">2023</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2022">2022</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=2021">2021</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieRepRlsDate=이전">이전</a></li>
									
																		
								</ul>
							</li>
							<li class="dropdown"><a href="#"><span>장르</span> <i
									class="bi bi-chevron-down dropdown-indicator"></i></a>
								<ul>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=드라마가족코메디">드라마, 가족, 코메디</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=멜로로맨스">멜로, 로맨스</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=공포스릴러범죄전쟁">공포, 스릴러, 범죄, 전쟁</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=액션SF판타지">액션, SF, 판타지</a></li>
									<li><a href="${pageContext.request.contextPath }/boayou/movieListPage?movieGenre=기타">기타</a></li>
																		
								</ul>
							</li>
							
							

						</ul></li>
					<c:choose>
						   <c:when test="${not empty sessionScope.loginUser}">
						        ${sessionScope.loginUser.name} 님
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
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero"
		class="hero d-flex flex-column justify-content-center align-items-center"
		data-aos="fade" data-aos-delay="1500">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<h2>Boayou 에 오신걸 환영합니다.</h2>
					<p>Boayou는 영화정보 알려드리고 커뮤니티 소통을 통해 서로의 정보를 공유하는 커뮤니티 사이트입니다.!</p>

				</div>
			</div>
		</div>
	</section>
	<!-- End Hero Section -->

	<main id="main" data-aos="fade" data-aos-delay="1500">

		<!-- ======= Gallery Section ======= -->
		<section id="gallery" class="gallery">
			<div class="container-fluid">


				<!-- 우리 movie_list2 포스터 -->
				<div class="row gy-4 justify-content-center">
					<h3 id="test1">주간 ? 일간? 박스 오피스 테스트 해볼꺼다</h3>
					<div class="col-xl-2 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img
								src="${Movie_List.get(0).getPosters()}"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a
									href="${pageContext.request.contextPath}/resources/assets/img/gallery/gallery-1.jpg"
									title="Gallery 1" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="movieInfoPage.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-2 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img
								src="${Movie_List.get(0).getPosters()}"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a
									href="${Movie_List.get(0).getPosters()}"
									title="Gallery 2" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="movieInfoPage.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-2 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img
								src="${Movie_List.get(0).getPosters()}"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a
									href="${Movie_List.get(0).getPosters()}"
									title="Gallery 3" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="movieInfoPage.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-2 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img
								src="${Movie_List.get(0).getPosters()}"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a
									href="${Movie_List.get(0).getPosters()}"
									title="Gallery 4" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="movieInfoPage.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->
					<div class="col-xl-2 col-lg-4 col-md-6">
						<div class="gallery-item h-100">
							<img
								src="${Movie_List.get(0).getPosters()}"
								class="img-fluid" alt="">
							<div
								class="gallery-links d-flex align-items-center justify-content-center">
								<a
									href="${Movie_List.get(0).getPosters()}"
									title="Gallery 5" class="glightbox preview-link"><i
									class="bi bi-arrows-angle-expand"></i></a> <a
									href="movieInfoPage.html" class="details-link"><i
									class="bi bi-link-45deg"></i></a>
							</div>
						</div>
					</div>
					<!-- End Gallery Item -->


				</div>

			</div>
		</section>
		<!-- End Gallery Section -->

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
		class="scroll-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

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