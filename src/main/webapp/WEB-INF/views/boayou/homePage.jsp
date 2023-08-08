<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>BoAYou 홈페이지</title>
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

<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/assets/css/searchBox.css?after">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/assets/css/serachuser.css?after">   

<!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
                              href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=전체관람가">전체 관람가</a></li>
                           <li><a
                              href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=12세관람가">12세 관람가</a></li>
                           <li><a
                              href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=15세관람가">15세 관람가</a></li>
                           <li><a
                              href="${pageContext.request.contextPath }/boayou/movieListPage?movieRating=18세관람가">18세 관람가(청소년관람불가)</a></li>
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
						        <c:choose>
						            <c:when test="${sessionScope.loginUser.user_id=='admin00'}">
						                <li><a href="adminMyPage">관리자 페이지</a></li>
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
<h3 style="margin-top:150px; text-align:center;">
			   <button class="page-wrapper">
               <a class="btn trigger" href="#">사용자 검색</a>  
			   </button></h3>
   <!-- ======= Hero Section ======= -->
   <section id="hero"style="padding-top:50px; padding-bottom:50px;"
      class="hero d-flex flex-column justify-content-center align-items-center"
      data-aos="fade" data-aos-delay="1500">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-auto text-center">
               <h2>Boayou 에 오신걸 환영합니다.</h2>
               <p>Boayou는 영화정보를 검색하고 커뮤니티 소통을 통해 서로의 정보를 공유하는 커뮤니티 사이트입니다</p>

            </div>
         </div>
      </div>

      <!-- 검색창  -->
      <div class="search-container">
         <input type="text" id="searchBox" placeholder="검색할 영화명을 입력하세요"><a
            id="searchMove"><button style="border-radius: 5px;">검색</button>
         </a>
         <div id="searchResults"></div>
      </div>


   </section>
   <!-- End Hero Section -->

   <main id="main" data-aos="fade" data-aos-delay="1500">

      <!-- 일간박스오피스 -->
      <section id="gallery" class="gallery">
         <div class="container-fluid">
            <div class="row gy-4 justify-content-center">
               <h3>
                  <span style="color: skyblue;">일간</span> 박스오피스 <span
                     style="color: red; font-weight: bold;">TOP 10</span>
               </h3>

               <!-- 일간박스오피스 1위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">
                     <img id="dayImgPoster0" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster0"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid0" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc0"></div>
                  <div id="audiCnt0"></div>
                  <div id="audiChange0"></div>
               </div>

               <!-- 일간박스오피스 2위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster1" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster1"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid1" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc1"></div>
                  <div id="audiCnt1"></div>
                  <div id="audiChange1"></div>
               </div>

               <!-- 일간박스오피스 3위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster2" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster2"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid2" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc2"></div>
                  <div id="audiCnt2"></div>
                  <div id="audiChange2"></div>
               </div>

               <!-- 일간박스오피스 4위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster3" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster3"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid3" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc3"></div>
                  <div id="audiCnt3"></div>
                  <div id="audiChange3"></div>
               </div>

               <!-- 일간박스오피스 5위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster4" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster4"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid4" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc4"></div>
                  <div id="audiCnt4"></div>
                  <div id="audiChange4"></div>
               </div>

               <!-- 일간박스오피스 6위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster5" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster5"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid5" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc5"></div>
                  <div id="audiCnt5"></div>
                  <div id="audiChange5"></div>
               </div>

               <!-- 일간박스오피스 7위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster6" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster6"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid6" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc6"></div>
                  <div id="audiCnt6"></div>
                  <div id="audiChange6"></div>
               </div>

               <!-- 일간박스오피스 8위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster7" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster7"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid7" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc7"></div>
                  <div id="audiCnt7"></div>
                  <div id="audiChange7"></div>
               </div>

               <!-- 일간박스오피스 9위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster8" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster8"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid8" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc8"></div>
                  <div id="audiCnt8"></div>
                  <div id="audiChange8"></div>
               </div>

               <!-- 일간박스오피스 10위  -->
               <div
                  style="text-align: center; border: solid 1.5px; border-radius: 10px; padding-top: 12px;"
                  class="col-xl-auto col-lg-auto col-md-auto">
                  <div class="gallery-item h-80">

                     <img id="dayImgPoster9" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster9"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid9" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
                  <div id="audiAcc9"></div>
                  <div id="audiCnt9"></div>
                  <div id="audiChange9"></div>
               </div>

            </div>
         </div>
      </section>
      <!-- End일간박스오피스 -->

      <br>

      <!-- 주간박스오피스 -->
      <section id="gallery" class="gallery">
         <div class="container-fluid">
            <div class="row gy-4 justify-content-center">
               <h3>
                  <span style="color: skyblue;">주간</span> 박스오피스 <span
                     style="color: red; font-weight: bold;">TOP 10</span>
               </h3>
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster0" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster0"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid0" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster1" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster1"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid1" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster2" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster2"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid2" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster3" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster3"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid3" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster4" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster4"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid4" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster5" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster5"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid5" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster6" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster6"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid6" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster7" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster7"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid7" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster8" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster8"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid8" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-80">

                     <img id="weeklyImgPoster9" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster9"> <i class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid9" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>



            </div>
         </div>
      </section>
      <!-- End주간박스오피스 -->
		<!-- 유저 검색 -->
		<div class="modal-wrapper">
			<div class="modal">
				<div class="head">
					<a class="btn-close trigger" href="#"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<h2>사용자 찾기</h2>
				</div>				
				<div class="listcontent">
					<div class="good-job">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
						<form action="userSearch" method="POST">
							<input type="text" id="searchBox2" name="user_id"
								placeholder="USER_ID" autocomplete="off">
						</form>
						<!-- 검색 결과 영역 -->
						<div id="searchResults2"></div>						
					</div>					
				</div>				
			</div>
		</div>
		<!-- End유저 검색  -->
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
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/homePage.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/assets/js/searchUser.js"></script>   
   <script>
   function goToMyPage(event) {
 	  event.stopPropagation(); // 이벤트 버블링 방지
 	    location.href = "${pageContext.request.contextPath}/boayou/myPage";
 	  }
   <c:if test="${not empty alertMessage}">
	   alert('${alertMessage}');
	   window.location.href = "/controller/boayou/homePage";
	</c:if>
   </script>

</body>

</html>