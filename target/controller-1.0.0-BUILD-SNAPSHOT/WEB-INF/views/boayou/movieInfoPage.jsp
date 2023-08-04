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

<title>MovieInfoPage</title>
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
<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/assets/css/star.css">   
<link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/assets/css/insertMymMovie.css?after">   

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
  $(document).ready(function () {
    $("#myform").submit(function (event) {
      event.preventDefault(); 
  
      var formData = $(this).serialize();
  
      $.ajax({
        type: "POST",
        url: "insertReview",
        data: formData,
        contentType: "application/x-www-form-urlencoded",
        success: function (response) {
          alert("리뷰 작성 성공");
          location.reload();
        },
        error: function (error) {
          alert("리뷰 작성 실패");
        },
      });
    });
  });
  function ReviewDelete() {
      var confirmation = confirm("정말로 삭제하시겠습니까?");
      if (confirmation) {
          document.getElementById("deleteForm").submit();
      }
  }	
  $(document).ready(function () {
	  $(".trigger").on("click", function () {
	    $(".modal-wrapper").toggleClass("open");
	    $(".page-wrapper").toggleClass("blur-it");
	    return false;
	  });
	});  
  document.addEventListener('DOMContentLoaded', function () {
    var errorMessage = "${sessionScope.errorMessage}";
    if (errorMessage) {
      alert(errorMessage);
      // 세션에서 에러 메시지 삭제 (다음 이동에서도 메시지가 나오지 않도록)
      <%
        session.removeAttribute("errorMessage");
      %>
    }
  });
  function onItemClick(value) {
      var inputElement = document.querySelector('input[name="movielist_name"]');
      inputElement.value = value;
  }
</script>
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
						        <a>${sessionScope.loginUser.name} 님</a>
						        <a href="logout">로그아웃</a>						
						        <c:choose>
						            <c:when test="${sessionScope.loginUser.user_id=='admin00'}">
						                <li><a href="adminMyPage">관리자페이지</a></li>
						            </c:when>
						            <c:otherwise>
						                <li><a href="myPage">마이페이지</a></li>
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
                        <img src="${movieList.posters}" class="img-fluid" alt="">
                        <br>
                        <div class="page-wrapper">
                        <a class="btn trigger" href="#">MyMovieList 등록</a>  
						</div>                        											                     
                     </div>
                     <div class="col-lg-5 content">

                        <h2>${movieList.title}</h2>


                        <div class="row">
                           <div class="col-lg-6">
                              <ul>
                                 <li><i class="bi bi-chevron-right"></i> <strong>영화감독:</strong>
                                    <span>${movieList.directornm} </span></li>

                                 <li><i class="bi bi-chevron-right"></i> <strong>주연배우명:</strong>
                                    <span>${movieList.actornm} </span></li>
                                 <li><i class="bi bi-chevron-right"></i> <strong>국가명:</strong>
                                    <span> ${movieList.nation}</span></li>
                                 <li><i class="bi bi-chevron-right"></i> <strong>제작사:</strong>
                                    <span>${movieList.company}</span></li>
                              </ul>
                           </div>
                           <div class="col-lg-6">
                              <ul>
                                 <li><i class="bi bi-chevron-right"></i> <strong>관람등급:</strong>
                                    <span>${movieList.rating} </span></li>
                                 <li><i class="bi bi-chevron-right"></i> <strong>개봉일:</strong>
                                    <span>${movieList.reprlsdate} </span></li>
                                 <li><i class="bi bi-chevron-right"></i> <strong>상영시간:</strong>
                                    <span>${movieList.runtime} 분</span></li>
                                 <li><i class="bi bi-chevron-right"></i> <strong>장르:</strong>
                                    <span>${movieList.genre}</span></li>
                              </ul>
                           </div>
                        </div>

                        <p class="py-3">${movieList.plot }</p>





                     </div>
                  </div>

               </div>
            </section>
            <!--작업마치면 로그인 후 에만 사용 가능하게 추가  -->
            
            <!-- End About Section -->

            <!-- ======= Testimonials Section ======= -->
                        <section id="testimonials" class="testimonials">
               <div class="container">

                  <div class="section-header">
                     <h2>REVIEW</h2>                     
                  </div>
                  <section id="contact" class="contact">
			<div class="container">


				<div class="row justify-content-center mt-4">
					
					<div class="col-lg-9">
					<c:if test="${not empty sessionScope.loginUser}"><!-- loginUser if문 start -->
<%-- 						<c:if test = "${ !userReviewState}"> --%>
						<form action="insertReview" id="myform" method="post" role="form" class="php-email-form">		
							<fieldset>
								<span class="text-bold">별점을 선택해주세요</span>
								<input type="radio" name="review_star" value="5" id="rate1"><label
									for="rate1"><i class="bi bi-star-fill"></i></label>
								<input type="radio" name="review_star" value="4" id="rate2"><label
									for="rate2"><i class="bi bi-star-fill"></i></label>
								<input type="radio" name="review_star" value="3" id="rate3"><label
									for="rate3"><i class="bi bi-star-fill"></i></label>
								<input type="radio" name="review_star" value="2" id="rate4"><label
									for="rate4"><i class="bi bi-star-fill"></i></label>
								<input type="radio" name="review_star" value="1" id="rate5"><label
									for="rate5"><i class="bi bi-star-fill"></i></label>
							</fieldset>																											
							<!-- Hidden input field for selected docid -->
							<input type="hidden" name="docid" value="${movieList.docid}"/>
							<div class="row">
								<div class="form-group mt-3">
									<input type="text" name="user_id" class="form-control"
										id=user_id value=${sessionScope.loginUser.user_id}
										placeholder="${sessionScope.loginUser.user_id}" required
										readonly>
								</div>
							</div>							
							<div class="form-group mt-3">
								<textarea class="form-control" name="review_content" rows="5"
									placeholder="Content" required></textarea>
							</div>
														
							<div>
								<button type="submit">등록</button>
							</div>
						</form>
						
						</c:if><!-- loginUser if문 end -->
					</div>
					<!-- End Contact Form -->
				</div>

			</div>
		</section>
		<br>				
                  <div class="slides-3 swiper">
                     <div class="swiper-wrapper">
						<c:forEach var="review" items="${reviewList}">
                        <div class="swiper-slide">
                           <div class="testimonial-item">
                              <div class="stars">
                               <c:forEach begin="1" end="${review.review_star}" varStatus="loop">
		                           <i class="bi bi-star-fill"></i>
		                       </c:forEach>
		                              </div>
		                      <a href="${pageContext.request.contextPath }/boayou/userPage?user_id=${review.user_id}"><h3>작성자:${review.user_id }</h3></a>                                    
                              <div class="profile mt-auto">
                                 <img src="assets/img/testimonials/testimonials-1.jpg"
                                    class="testimonial-img" alt="">                                                               
                              </div>
                              <p>${review.review_content }</p>
                              <c:if test="${not empty sessionScope.loginUser and sessionScope.loginUser.user_id == review.user_id}">
                              <button type="button" onclick="ReviewDelete()" class="button large">삭제</button>
                              </c:if>
                              <form id="deleteForm" action="deletereview" method="POST">
									<input type="hidden" name="review_no" value="${review.review_no}">
									<input type="hidden" name="docid" value="${movieList.docid}">									
							  </form>
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
           <div class="modal-wrapper">
			  <div class="modal">
			    <div class="head">
			    <a class="btn-close trigger" href="#">
			        <i class="fa fa-times" aria-hidden="true"></i>
			      </a>
			    <h2>MyMovieList</h2>			      
			    </div>
			    <div class="listcontent">
			        <div class="good-job">
			          <i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
			          <form action="${pageContext.servletContext.contextPath  }/boayou/insertMyMovieList" method="post">
			          <input type="text" name="movielist_name" placeholder="MovieListName"><input type="submit" value="등록" onclick="//">	
			          <c:forEach var="movieListName" items="${uniqueMovieListNames}">
          			  <li style="border:.5px solid white; list-style-type: none;"onclick="onItemClick('${movieListName}')">${movieListName}</li>
        			  </c:forEach>
			          <input type="hidden" name="user_id" value="${sessionScope.loginUser.user_id}">
				      <input type="hidden" name="docid" value="${movieList.docid}">	         			       
			          	                
		            
		            </form>		            
			        </div>
			    </div>
			  </div>
			</div>
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