<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isErrorPage="true"%>

<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>MovieSearchPage</title>
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
<style>
.pagenation {
   text-align: right;
}
</style>
<script>
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
                        <h2>
                           <c:out value="${ param.movieCate }" />
                          
                        </h2>

                     </div>
                  </div>
               </div>
            </div>
            <!-- End Page Header -->

            <!-- ======= Gallery Section ======= -->
            <section id="gallery" class="gallery">
               <div style="text-align: center;" class="container-fluid">

                  <!-- 페이지 변수 선언 -->
                  <c:set var="pageSize" value="12" />
                  <c:set var="totalCount" value="${fn:length(searchMovie)}" />
                  <c:set var="totalPages"
                     value="${(totalCount + pageSize - 1) / pageSize}" />
                  <c:set var="currentPage"
                     value="${param.page != null ? param.page : 1}" />

                  <!-- 시작 및 끝 인덱스 설정 -->
                  <c:set var="start" value="${pageSize * (currentPage - 1)}" />
                  <c:set var="end" value="${pageSize * currentPage - 1}" />

                  <div class="row gy-4 justify-content-center">
                     <c:forEach var="i" begin="${start}" end="${end}" step="1">
                        <c:if test="${i < totalCount}">
                           <div class="col-xl-2 col-lg-4 col-md-6">
                              <div class="gallery-item h-80">
                                 <img src="${searchMovie.get(i).getPosters()}"
                                    class="img-fluid" alt="">
                                 <div
                                    class="gallery-links d-flex align-items-center justify-content-center">
                                    <a href="${searchMovie.get(i).getPosters() }" title="${searchMovie.get(i).getTitle() }"
                                       class="glightbox preview-link"><i
                                       class="bi bi-arrows-angle-expand"></i></a> <a
                                       href="${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=검색&Docid=${searchMovie.get(i).getDocid() }" class="details-link"><i
                                       class="bi bi-link-45deg"></i></a>
                                 </div>
                              </div>
                           </div>
                        </c:if>
                     </c:forEach>
                  </div>
                  <!-- 페이징 레이아웃 추가 -->
                  <div class="pagenation">
                     <%-- 이전 10 단위 페이지 버튼 추가 --%>
                     <c:if test="${currentPage > 10}">
                        <a
                           href="?movieCate=${param.movieCate}&title=${param.title }&page=${((currentPage - 1) - ((currentPage - 1) % 10))}"><<</a>&nbsp;
                   </c:if>

                     <%-- 이전 페이지 버튼 추가 --%>
                     <c:if test="${currentPage > 1}">
                        <a
                           href="?movieCate=${param.movieCate}&title=${param.title }&page=${currentPage - 1}">&lt;</a>&nbsp;
                   </c:if>

                     <c:forEach var="i" begin="1" end="${totalPages}">
                        <c:if
                           test="${i >= ((currentPage - 1) - ((currentPage - 1) % 10)) && i <= (currentPage + (10 - ((currentPage - 1) % 10))) - 1}">
                           <c:choose>
                              <c:when test="${i == currentPage}">
                                 <%-- 현재 페이지 번호 표시 --%>
                                 <span class="current">${i}</span>&nbsp;
                               </c:when>
                              <c:otherwise>
                                 <%-- 페이지 번호 표시 --%>
                                 <a href="?movieCate=${param.movieCate}&title=${param.title }&page=${i}">${i}</a>&nbsp;
                            </c:otherwise>
                           </c:choose>
                        </c:if>
                     </c:forEach>
                     <%-- 다음 페이지 버튼 추가 --%>
                     <c:if test="${currentPage < totalPages}">
                        <a
                           href="?movieCate=${param.movieCate}&title=${param.title }&page=${currentPage + 1}">&gt;</a>&nbsp;
                   </c:if>

                     <%-- 다음 10 단위 페이지 버튼 추가 --%>
                     <c:if test="${currentPage < (totalPages - (totalPages % 10))}">
                        <a
                           href="?movieCate=${param.movieCate}&title=${param.title }&page=${(currentPage + (10 - ((currentPage - 1) % 10)))}">>></a>
                     </c:if>
                  </div>
               </div>
            </section>
         </main>
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