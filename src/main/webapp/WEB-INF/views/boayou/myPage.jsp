<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="javax.servlet.http.HttpSession" %>
<html lang="en">
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
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
  
document.getElementById("updateProfileForm").addEventListener("submit", (event) => {
    event.preventDefault();
    const formData = new FormData(event.target);
    const url = "/controller/boayou/updateProfileProcess";

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

</script>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>My Page</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Inter:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Cardo:ital,wght@0,400;0,700;1,400&display=swap" rel="stylesheet">

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
	href="${pageContext.request.contextPath}/resources/assets/css/user.css?after">
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/pwd.css?after">
	
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/assets/css/profile.css?after">

  <!-- =======================================================
  * Template Name: PhotoFolio
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/photofolio-bootstrap-photography-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
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
table {
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 100%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
}

th {
  text-align: left;
}
  
thead {
  font-weight: bold;
  color: #fff;
  background: #73685d;
}
  
 td, th {
  padding: 1em .5em;
  vertical-align: middle;
}
  
 td {
  border-bottom: 1px solid rgba(0,0,0,.1);
  background: #353535;
}

a {
  color: #73685d;
}
  
 @media all and (max-width: 768px) {
    
  table, thead, tbody, th, td, tr {
    display: block;
  }
  
  th {
    text-align: right;
  }
  
  table {
    position: relative; 
    padding-bottom: 0;
    border: none;
    box-shadow: 0 0 10px rgba(0,0,0,.2);
  }
  
  th {
    float: left;
    white-space: nowrap;
  }
  
  tbody {
    overflow-x: auto;
    overflow-y: hidden;
    position: relative;
    white-space: nowrap;
  }
  
  tr {
    display: inline-block;
    vertical-align: top;
  }
  
  th {
    border-bottom: 1px solid #a39485;
  }
  
  td {
    border-bottom: 1px solid #e5e5e5;
  }
  
  
  }
</style>
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

  <main id="main" data-aos="fade" data-aos-delay="1500">

    <!-- ======= End Page Header ======= -->
    <div class="page-header d-flex align-items-center">
      <div class="container position-relative">
        <div class="row d-flex justify-content-center">
          <div class="col-lg-6 text-center">
          
				   <h2>마이페이지</h2>   

          </div>
        </div>
      </div>
    </div><!-- End Page Header -->

    <!-- ======= Gallery Single Section ======= -->
    <section id="gallery-single" class="gallery-single">
      <div class="container">
        <div class="row justify-content-between gy-4 mt-4">

          <div class="col-lg-8">
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

          <div class="col-lg-3">
            <div class="portfolio-info">
				<c:choose>
					<c:when test="${not empty sessionScope.loginUser}">
						<h3>${sessionScope.loginUser.name}님의 정보</h3>
						<ul>
							<li><strong>아이디</strong> <span>${sessionScope.loginUser.user_id}</span></li>
							<li><strong>이름</strong> <span>${sessionScope.loginUser.name}</span></li>
							<li><strong>나이</strong> <span>${sessionScope.loginUser.age}</span></li>
							<li><strong>생년월일</strong> <span>${sessionScope.loginUser.jumin.substring(0,2)}년 
							${sessionScope.loginUser.jumin.substring(2,4)}월 
							${sessionScope.loginUser.jumin.substring(4,6)}일</span></li>
						<br>
						<li><div class="pwd-page-wrapper">
						<a class="btn pwd-trigger" style="background-color: black; color: green;  width: 150px; text-align : left; padding-left : 0px;" href="#">비밀번호 변경</a>
						</div></li>
						<li></li>
						<li><a href="logout" style="color : green;">로그아웃</a></li>
						<li><div class="page-wrapper">
						<a class="btn trigger" href="#">myMovieList</a>
						</div></li>
						</ul>	
					</c:when>
				</c:choose>
            </div>
          </div>
        </div>
      </div>
    </section><!-- End Gallery Single Section -->
    
    
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
  				<form id="updateProfileForm" action="${pageContext.request.contextPath}/boayou/updateProfileProcess" method="post" enctype="multipart/form-data">
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
    
    <div class="modal-wrapper">
			<div class="modal">
				<div class="head">
					<a class="btn-close trigger" href="#"> <i class="fa fa-times"
						aria-hidden="true"></i>
					</a>
					<h2>MovieBox</h2>
				</div>
				<div class="tab">
					<ul class="tabnav">
						<c:forEach var="movieName" items="${uniqueMovieListNames}"
							varStatus="nameStatus">
							<li><a href="#tab${nameStatus.count}">${movieName}</a></li>
						</c:forEach>
					</ul>
					<div class="tabcontent">
						<c:forEach var="movieName" items="${uniqueMovieListNames}"
							varStatus="nameStatus">
							<div id="tab${nameStatus.count}">
								<table>
									<tr>
										<th>순서</th>
										<th>영화 제목</th>
										<th>영화 감독</th>
										<th>국가</th>
										<th>영화 장르</th>
										<th>영화 관람등급</th>
										<th>영화 포스터</th>
									</tr>
									<c:set var="count" value="0" />
									<c:forEach var="mylist" items="${myMovieList}"
										varStatus="status">
										<c:if test="${mylist.movielist_name == movieName}">
											<c:set var="count" value="${count + 1}" />
											<tr>
												<td>${count}</td>
												<td>${mylist.title}</td>
												<td>${mylist.directorNm}</td>
												<td>${mylist.nation}</td>
												<td>${mylist.genre}</td>
												<td>${mylist.rating}</td>
												<td><a
													href="${pageContext.request.contextPath}/boayou/movieInfoPage?Docid=${mylist.docid}">
														<img src="${mylist.posters}" />
												</a></td>
												<td>
												<form id="deleteForm" action="deletemyMovieList" method="POST">
												<button type="submit"
												class="button large">삭제</button>
												<input type="hidden" name="myMovieList_no"
												value="${mylist.myMovieList_no}">												
											</form>
												</td>
											</tr>											
											
											
										</c:if>
									</c:forEach>
								</table>
							</div>
						</c:forEach>
					</div>
				</div>

			</div>
		</div>
    
    <!-- ======= MyReviewMovie Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container">

				<div class="section-header">
					<h2>My Selection</h2>
					<p>리뷰를 작성한 영화</p>
				</div>

				<div class="slides-3 swiper" style="height : 50%">
					<div class="swiper-wrapper">
						<c:forEach var="myReviewMovie" items="${myReviewMovieList}" varStatus="status">
							<div class="swiper-slide">
								<div class="testimonial-item">
									<h4>${myReviewMovie.genre}</h4>
									<h2>${myReviewMovie.title}</h2>																	
									<div class="profile mt-auto">			
										<a href="${pageContext.request.contextPath}/boayou/movieInfoPage?Docid=${myReviewMovie.docid}" class="image featured">																		
										<img src="${myReviewMovie.posters}" class="testimonial-img" alt=""></a>							
									</div>
								</div>
							</div>
							<!-- End testimonial item -->
						</c:forEach>
					</div>
<!-- 					<div class="swiper-pagination"></div> -->
				</div>
			</div>
		</section>
		<!-- End MyReviewMovie Section -->
		
		
		<!-- ======= MyCommunityMovie Section ======= -->
		<section id="testimonials" class="testimonials">
			<div class="container">
			<div class="section-header">
				<h2>My Community</h2>
				<p>내 커뮤니티</p>
			</div>
			
			<table id="communityTable">
                     <thead>
                        <tr>
                           <th>No.</th>
                           <th>영화 이미지</th>
                           <th>영화명</th>
                           <th>Title</th>
                           <th>Content</th>
                           <th>좋아요</th>
                           <th>싫어요</th>
                           <th>댓글 수</th>
                        </tr>
                     </thead>
                     <tbody>
                     
                     <c:forEach var="myCommunity" items="${myCommunityList}" varStatus="status">
                     	<tr>
                     		<td>${myCommunity.community_no }</td>
                     		<td>
                     			<a href="${pageContext.request.contextPath}/boayou/movieInfoPage?Docid=${myCommunity.docid}" class="image featured">																		
								<img src="${myCommunity.posters}" class="testimonial-img" alt=""></a>
							</td>
							<td>${myCommunity.title }</td>
							<td>${myCommunity.community_title }</td>
							<td>${myCommunity.community_content }</td>
							<td>${myCommunity.joayo }</td>
							<td>${myCommunity.siroyo }</td>
							<td>${myCommunity.comment_count }</td>
                     	</tr>
							<!-- End testimonial item -->
						</c:forEach>
                     </tbody>
                  </table>
			
			</div>
		</section>
		<!-- End MyCommunityMovie Section -->

  </main><!-- End #main -->

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

  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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