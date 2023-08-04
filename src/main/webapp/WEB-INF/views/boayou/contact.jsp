<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>community creation</title>
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
<script>
    function fetchSearchResults() {
        var title = document.getElementById('movie_title_search').value;
        document.getElementById('search_results').innerHTML = "Loading...";
        fetch("search?title=" + title)
            .then(response => response.text())
            .then(text => {
                document.getElementById('search_results').innerHTML = text;
            });
    }

    function selectDocId(docId) {
        document.getElementById('selected_docid').value = docId;
        alert("선택된 영화의 docid: " + docId);
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
						        <c:choose>
						            <c:when test="${sessionScope.loginUser.user_id=='admin00'}">
						                <li><a href="adminMyPage">관리자페이지</a></li>
						            </c:when>
						            <c:otherwise>
						                <!-- ===user profile section start===-->
							   		<li class="dropdown"><a href="${pageContext.request.contextPath}/boayou/myPage">
									  <img src="${sessionScope.loginUserProfile.img}" style="margin-right: 10px;" width="30px" height="30px" />
									  ${sessionScope.loginUser.name} 님
									</a>
									<ul style="width:300px;"><div style="display:flex;" onclick = "goToMyPage(event);">
										<img src="${sessionScope.loginUserProfile.img}" class="testimonial-img" alt="" style="margin-right: 20px; font-size: 10pt; width:60px; height:60px;" onclick="goToMyPage(event);">
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

	<main id="main" data-aos="fade" data-aos-delay="1500">

		<!-- ======= End Page Header ======= -->
		<div class="page-header d-flex align-items-center">
			<div class="container position-relative">
				<div class="row d-flex justify-content-center">
					<div class="col-lg-6 text-center">
						<h2>community creation</h2>

					</div>
				</div>
			</div>
		</div>
		<!-- End Page Header -->

		<!-- ======= Contact Section ======= -->
		<section id="contact" class="contact">
			<div class="container">


				<div class="row justify-content-center mt-4">

					<div class="col-lg-9">
						<form action="community-insert" method="post" role="form"
							class="php-email-form">
							<!-- Search movie -->
							<div class="form-group mt-3">
								<input type="text" class="form-control" id="movie_title_search"
									placeholder="Search movie title">
								<button type="button" onclick="fetchSearchResults();">Search</button>
							</div>
							<div id="search_results" style="padding: 10px;"></div>
							
							<!-- Hidden input field for selected docid -->
							<input type="hidden" id="selected_docid" name="docid">
							<div class="row">
								<div class="form-group mt-3">
									<input type="text" name="user_id" class="form-control"
										id=user_id value="${sessionScope.loginUser.user_id}"
										placeholder="${sessionScope.loginUser.user_id}" required
										readonly>
								</div>
							</div>
							<div class="form-group mt-3">
								<input type="text" class="form-control" name="community_title"
									id="community_title" placeholder="TITLE" required>
							</div>
							<div class="form-group mt-3">
								<textarea class="form-control" name="community_content" rows="5"
									placeholder="Content" required></textarea>
							</div>
							<div class="my-3">
								<div class="loading">Loading</div>
								<div class="error-message"></div>
								<div class="sent-message">Your message has been sent.
									Thank you!</div>
							</div>
							<div>
								<button type="submit">Save</button>
							</div>
						</form>
					</div>
					<!-- End Contact Form -->

				</div>

			</div>
		</section>
		<!-- End Contact Section -->

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
	<script
		src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>


</body>

</html>