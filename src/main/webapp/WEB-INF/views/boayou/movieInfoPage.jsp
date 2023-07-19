<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isErrorPage="true"%>
<%@ page import="org.springframework.beans.factory.annotation.Autowired"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>PhotoFolio Bootstrap Template - About</title>
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


<!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
						      ${sessionScope.loginUser.name}님
						       <a href="logout">로그아웃</a>
						       <li><a href="myProfilePage">마이페이지</a></li>
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
	
	<c:choose>

		<c:when test="${param.movieCate eq '한국영화'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getKoreaMovie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getKoreaMovie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getKoreaMovie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getKoreaMovie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getKoreaMovie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getKoreaMovie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getKoreaMovie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getKoreaMovie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getKoreaMovie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getKoreaMovie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getKoreaMovie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>

		<c:when test="${param.movieCate eq '외국영화'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getForeignMovie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getForeignMovie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getForeignMovie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getForeignMovie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getForeignMovie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getForeignMovie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getForeignMovie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getForeignMovie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getForeignMovie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getForeignMovie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getForeignMovie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>

		<c:when test="${param.movieCate eq '전체관람가'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRatingAllMovie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRatingAllMovie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRatingAllMovie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRatingAllMovie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRatingAllMovie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRatingAllMovie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRatingAllMovie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRatingAllMovie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRatingAllMovie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRatingAllMovie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRatingAllMovie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>

		<c:when test="${param.movieCate eq '12세관람가'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRating12Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRating12Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRating12Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRating12Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRating12Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRating12Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRating12Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRating12Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRating12Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRating12Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRating12Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>

		<c:when test="${param.movieCate eq '15세관람가'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRating15Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRating15Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRating15Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRating15Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRating15Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRating15Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRating15Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRating15Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRating15Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRating15Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRating15Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
	
		<c:when test="${param.movieCate eq '18세관람가'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRating18Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRating18Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRating18Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRating18Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRating18Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRating18Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRating18Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRating18Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRating18Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRating18Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRating18Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>	
	
		<c:when test="${param.movieCate eq '기타'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRatingEtcMovie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRatingEtcMovie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRatingEtcMovie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRatingEtcMovie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRatingEtcMovie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRatingEtcMovie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRatingEtcMovie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRatingEtcMovie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRatingEtcMovie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRatingEtcMovie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRatingEtcMovie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>	
	
		<c:when test="${param.movieCate eq '2023'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRepRlsDate2023Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRepRlsDate2023Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRepRlsDate2023Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRepRlsDate2023Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRepRlsDate2023Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRepRlsDate2023Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRepRlsDate2023Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRepRlsDate2023Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRepRlsDate2023Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRepRlsDate2023Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRepRlsDate2023Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '2022'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRepRlsDate2022Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRepRlsDate2022Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRepRlsDate2022Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRepRlsDate2022Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRepRlsDate2022Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRepRlsDate2022Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRepRlsDate2022Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRepRlsDate2022Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRepRlsDate2022Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRepRlsDate2022Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRepRlsDate2022Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '2021'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRepRlsDate2021Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRepRlsDate2021Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRepRlsDate2021Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRepRlsDate2021Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRepRlsDate2021Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRepRlsDate2021Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRepRlsDate2021Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRepRlsDate2021Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRepRlsDate2021Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRepRlsDate2021Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRepRlsDate2021Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '이전'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getRepRlsDateBeforeMovie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getRepRlsDateBeforeMovie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getRepRlsDateBeforeMovie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getRepRlsDateBeforeMovie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getRepRlsDateBeforeMovie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getRepRlsDateBeforeMovie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getRepRlsDateBeforeMovie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getRepRlsDateBeforeMovie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getRepRlsDateBeforeMovie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getRepRlsDateBeforeMovie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getRepRlsDateBeforeMovie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '드라마가족코메디'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getGenre1Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getGenre1Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getGenre1Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getGenre1Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getGenre1Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getGenre1Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getGenre1Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getGenre1Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getGenre1Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getGenre1Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getGenre1Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '멜로로맨스'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getGenre2Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getGenre2Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getGenre2Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getGenre2Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getGenre2Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getGenre2Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getGenre2Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getGenre2Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getGenre2Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getGenre2Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getGenre2Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '공포스릴러범죄전쟁'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getGenre3Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getGenre3Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getGenre3Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getGenre3Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getGenre3Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getGenre3Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getGenre3Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getGenre3Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getGenre3Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getGenre3Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getGenre3Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
	
		<c:when test="${param.movieCate eq '액션SF판타지'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getGenre4Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getGenre4Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getGenre4Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getGenre4Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getGenre4Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getGenre4Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getGenre4Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getGenre4Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getGenre4Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getGenre4Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getGenre4Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
		
		<c:when test="${param.movieCate eq '기타'}">

			<main id="main" data-aos="fade" data-aos-delay="1500">

				<!-- ======= End Page Header ======= -->
				<div class="page-header d-flex align-items-center">
					<div class="container position-relative">
						<div class="row d-flex justify-content-center">
							<div class="col-lg-6 text-center">
								<h2>영화 상세정보</h2>
								<p>
									<c:out value="${ param.movieCate }" />
								</p>



							</div>
						</div>
					</div>
				</div>
				<!-- End Page Header -->

				<!-- ======= About Section ======= -->
				<section id="about" class="about">
					<div class="container">

						<div class="row gy-4 justify-content-center">
							<div class="col-lg-4">
								<img src="${getGenre5Movie.posters }" class="img-fluid" alt="">
								<!--사진 업로드폼 박스만들기-->
							</div>
							<div class="col-lg-5 content">

								<h2>영화제목 : ${getGenre5Movie.title }</h2>


								<div class="row">
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
												<span>${getGenre5Movie.directornm } </span></li>

											<li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
												<span>${getGenre5Movie.actornm } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
												<span>${getGenre5Movie.nation } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
												<span>${getGenre5Movie.company }</span></li>
										</ul>
									</div>
									<div class="col-lg-6">
										<ul>
											<li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
												<span>${getGenre5Movie.rating } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
												<span>${getGenre5Movie.reprlsdate } </span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
												<span>${getGenre5Movie.runtime }</span></li>
											<li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
												<span>${getGenre5Movie.genre }</span></li>
										</ul>
									</div>
								</div>

								<p class="py-3">${getGenre5Movie.plot }</p>





							</div>
						</div>

					</div>
				</section>
				<!-- End About Section -->

				<!-- ======= Testimonials Section ======= -->
				<section id="testimonials" class="testimonials">
					<div class="container">

						<div class="section-header">
							<h2>Testimonials</h2>
							<p>What they are saying</p>
						</div>

						<div class="slides-3 swiper">
							<div class="swiper-wrapper">

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Proin iaculis purus consequat sem cure digni ssim donec
											porttitora entum suscipit rhoncus. Accusantium quam,
											ultricies eget id, aliquam eget nibh et. Maecen aliquam,
											risus at semper.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-1.jpg"
												class="testimonial-img" alt="">
											<h3>Saul Goodman</h3>
											<h4>Ceo &amp; Founder</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Export tempor illum tamen malis malis eram quae irure
											esse labore quem cillum quid cillum eram malis quorum velit
											fore eram velit sunt aliqua noster fugiat irure amet legam
											anim culpa.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-2.jpg"
												class="testimonial-img" alt="">
											<h3>Sara Wilsson</h3>
											<h4>Designer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Enim nisi quem export duis labore cillum quae magna
											enim sint quorum nulla quem veniam duis minim tempor labore
											quem eram duis noster aute amet eram fore quis sint minim.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-3.jpg"
												class="testimonial-img" alt="">
											<h3>Jena Karlis</h3>
											<h4>Store Owner</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Fugiat enim eram quae cillum dolore dolor amet nulla
											culpa multos export minim fugiat minim velit minim dolor enim
											duis veniam ipsum anim magna sunt elit fore quem dolore
											labore illum veniam.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-4.jpg"
												class="testimonial-img" alt="">
											<h3>Matt Brandon</h3>
											<h4>Freelancer</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

								<div class="swiper-slide">
									<div class="testimonial-item">
										<div class="stars">
											<i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
												class="bi bi-star-fill"></i>
										</div>
										<p>Quis quorum aliqua sint quem legam fore sunt eram irure
											aliqua veniam tempor noster veniam enim culpa labore duis
											sunt culpa nulla illum cillum fugiat legam esse veniam culpa
											fore nisi cillum quid.</p>
										<div class="profile mt-auto">
											<img src="assets/img/testimonials/testimonials-5.jpg"
												class="testimonial-img" alt="">
											<h3>John Larson</h3>
											<h4>Entrepreneur</h4>
										</div>
									</div>
								</div>
								<!-- End testimonial item -->

							</div>
							<div class="swiper-pagination"></div>
						</div>

					</div>
				</section>
				<!-- End Testimonials Section -->

			</main>
			<!-- End #main -->
		</c:when>
	
	</c:choose>

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