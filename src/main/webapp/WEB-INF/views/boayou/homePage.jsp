<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


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
<script src="https://code.jquery.com/jquery-3.7.0.js"
   integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM="
   crossorigin="anonymous"></script>
<script>
   window.onload = function() {
      getDailyMovieList();
      getWeeklyMovieList();
   }
   function getWeeklyMovieList() {
       var today = new Date();
         var year = today.getFullYear();
         var month = ('0' + (today.getMonth() + 1)).slice(-2);
         var day = ('0' + today.getDate()).slice(-2);
         var dateString = year  + month  + day;

         console.log(dateString-1);

      //외부 api
      const param = {
         key : "7b9e724f14695b5a04b7ad76a02309fd",
         targetDt : dateString-3

      };

      $
            .ajax({
               url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchWeeklyBoxOfficeList.xml",
               async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
               ,
               contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
               ,
               type : "GET" //method
               ,
               data : param,
               dataType : "xml" // 수신타입
               ,
               success : function(data, textStatus) {
                  console.log("data");
                  console.log(data);

                  var movieNmTag = data.getElementsByTagName("movieNm");
                  var movieNm0 = movieNmTag[0].textContent;
                  var movieNm1 = movieNmTag[1].textContent;
                  var movieNm2 = movieNmTag[2].textContent;
                  var movieNm3 = movieNmTag[3].textContent;
                  var movieNm4 = movieNmTag[4].textContent;
                  var movieNm5 = movieNmTag[5].textContent;
                  var movieNm6 = movieNmTag[6].textContent;
                  var movieNm7 = movieNmTag[7].textContent;
                  var movieNm8 = movieNmTag[8].textContent;
                  var movieNm9 = movieNmTag[9].textContent;
            
                  $
                        .ajax({
                           url : "http://localhost:8080/controller/api/MovieListAPI",
                           async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                           ,
                           contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                           ,
                           type : "GET" //method
                           ,
                           dataType : "xml" // 수신타입
                           ,
                           success : function(data2, textStatus) {
                           
                              var item = data2
                                    .getElementsByTagName("item");
                              var titleTag = data2
                                    .getElementsByTagName("title");
                              var posterTag = data2
                                    .getElementsByTagName("posters");
                              var docidTag = data2
                              .getElementsByTagName("docid");
                              

                              for (var i = 0; i < item.length; i++) {
                                 var title = titleTag[i].textContent;
                                 var poster = posterTag[i].textContent;
                                 var docid = docidTag[i].textContent;
                                 
                                 if (movieNm0 == title) {
                                    var posterSrc = document.getElementById("weeklyImgPoster0");
                                    var posterHref = document.getElementById("weeklyAPoster0");
                                    var docidHref = document.getElementById("weeklyADocid0");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                    
                                 } else if(movieNm1 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster1");
                                    var posterHref = document.getElementById("weeklyAPoster1");
                                    var docidHref = document.getElementById("weeklyADocid1");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;                                    
                                    
                                 }else if(movieNm2 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster2");
                                    var posterHref = document.getElementById("weeklyAPoster2");
                                    var docidHref = document.getElementById("weeklyADocid2");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;                                    
                                 }else if(movieNm3 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster3");
                                    var posterHref = document.getElementById("weeklyAPoster3");
                                    var docidHref = document.getElementById("weeklyADocid3");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;                                    
                                    
                                 }else if(movieNm4 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster4");
                                    var posterHref = document.getElementById("weeklyAPoster4");
                                    var docidHref = document.getElementById("weeklyADocid4");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;                                    
                                    
                                 }else if(movieNm5 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster5");
                                    var posterHref = document.getElementById("weeklyAPoster5");
                                    var docidHref = document.getElementById("weeklyADocid5");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                 }
                                 else if(movieNm6 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster6");
                                    var posterHref = document.getElementById("weeklyAPoster6");
                                    var docidHref = document.getElementById("weeklyADocid6");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                    
                                 }else if(movieNm7 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster7");
                                    var posterHref = document.getElementById("weeklyAPoster7");
                                    var docidHref = document.getElementById("weeklyADocid7");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                    
                                 }else if(movieNm8 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster8");
                                    var posterHref = document.getElementById("weeklyAPoster8");
                                    var docidHref = document.getElementById("weeklyADocid8");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                 }else if(movieNm9 == title){
                                    var posterSrc = document.getElementById("weeklyImgPoster9");
                                    var posterHref = document.getElementById("weeklyAPoster9");
                                    var docidHref = document.getElementById("weeklyADocid9");
                                    posterSrc.src = poster;
                                    posterHref.href = poster;
                                    docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=주간박스오피스&Docid="+docid;
                                 }
                                 
                                 else {
                           
                                 }
                              }
                           },
                           error : function(jqXHR, textStatus,
                                 errorThrown) {
                              console.log(jqXHR);
                              console.log(textStatus);
                              console.log(errorThrown);
                           }
                        });
               },
               error : function(jqXHR, textStatus, errorThrown) {
                  console.log(jqXHR);
                  console.log(textStatus);
                  console.log(errorThrown);
               }
            });
   }
      function getDailyMovieList() {
          var today = new Date();
            var year = today.getFullYear();
            var month = ('0' + (today.getMonth() + 1)).slice(-2);
            var day = ('0' + today.getDate()).slice(-2);
            var dateString = year  + month  + day;

            console.log(dateString-1);

         //외부 api
         const param = {
            key : "7b9e724f14695b5a04b7ad76a02309fd",
            targetDt : dateString-1

         };

         $
               .ajax({
                  url : "http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.xml",
                  async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                  ,
                  contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                  ,
                  type : "GET" //method
                  ,
                  data : param,
                  dataType : "xml" // 수신타입
                  ,
                  success : function(data, textStatus) {
                     console.log("data");
                     console.log(data);

                     var movieNmTag = data.getElementsByTagName("movieNm");
                     var movieNm0 = movieNmTag[0].textContent;
                     var movieNm1 = movieNmTag[1].textContent;
                     var movieNm2 = movieNmTag[2].textContent;
                     var movieNm3 = movieNmTag[3].textContent;
                     var movieNm4 = movieNmTag[4].textContent;
                     var movieNm5 = movieNmTag[5].textContent;
                     var movieNm6 = movieNmTag[6].textContent;
                     var movieNm7 = movieNmTag[7].textContent;
                     var movieNm8 = movieNmTag[8].textContent;
                     var movieNm9 = movieNmTag[9].textContent;
               
                     $
                           .ajax({
                              url : "http://localhost:8080/controller/api/MovieListAPI",
                              async : true // 비동기 쓰레드,false : 동기식(응답 받을때까지 대기함)
                              ,
                              contentType : 'application/x-www-form-urlencoded; charset=UTF-8' // 전송타입
                              ,
                              type : "GET" //method
                              ,
                              dataType : "xml" // 수신타입
                              ,
                              success : function(data2, textStatus) {
                              
                                 var item = data2
                                       .getElementsByTagName("item");
                                 var titleTag = data2
                                       .getElementsByTagName("title");
                                 var posterTag = data2
                                       .getElementsByTagName("posters");
                                 var docidTag = data2
                                 .getElementsByTagName("docid");
                                 

                                 for (var i = 0; i < item.length; i++) {
                                    var title = titleTag[i].textContent;
                                    var poster = posterTag[i].textContent;
                                    var docid = docidTag[i].textContent;
                                    
                                    if (movieNm0 == title) {
                                       
                                       var posterSrc = document.getElementById("dayImgPoster0");
                                       var posterHref = document.getElementById("dayAPoster0");
                                       var docidHref = document.getElementById("dayADocid0");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                    } else if(movieNm1 == title){
                                       var posterSrc = document.getElementById("dayImgPoster1");
                                       var posterHref = document.getElementById("dayAPoster1");
                                       var docidHref = document.getElementById("dayADocid1");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm2 == title){
                                       var posterSrc = document.getElementById("dayImgPoster2");
                                       var posterHref = document.getElementById("dayAPoster2");
                                       var docidHref = document.getElementById("dayADocid2");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                    }else if(movieNm3 == title){
                                       var posterSrc = document.getElementById("dayImgPoster3");
                                       var posterHref = document.getElementById("dayAPoster3");
                                       var docidHref = document.getElementById("dayADocid3");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm4 == title){
                                       var posterSrc = document.getElementById("dayImgPoster4");
                                       var posterHref = document.getElementById("dayAPoster4");
                                       var docidHref = document.getElementById("dayADocid4");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm5 == title){
                                       var posterSrc = document.getElementById("dayImgPoster5");
                                       var posterHref = document.getElementById("dayAPoster5");
                                       var docidHref = document.getElementById("dayADocid5");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                    }
                                    else if(movieNm6 == title){
                                       var posterSrc = document.getElementById("dayImgPoster6");
                                       var posterHref = document.getElementById("dayAPoster6");
                                       var docidHref = document.getElementById("dayADocid6");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm7 == title){
                                       var posterSrc = document.getElementById("dayImgPoster7");
                                       var posterHref = document.getElementById("dayAPoster7");
                                       var docidHref = document.getElementById("dayADocid7");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm8 == title){
                                       var posterSrc = document.getElementById("dayImgPoster8");
                                       var posterHref = document.getElementById("dayAPoster8");
                                       var docidHref = document.getElementById("dayADocid8");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }else if(movieNm9 == title){
                                       var posterSrc = document.getElementById("dayImgPoster9");
                                       var posterHref = document.getElementById("dayAPoster9");
                                       var docidHref = document.getElementById("dayADocid9");
                                       posterSrc.src = poster;
                                       posterHref.href = poster;
                                       docidHref.href = "${pageContext.request.contextPath}/boayou/movieInfoPage?movieCate=일간박스오피스&Docid="+docid;
                                       
                                       
                                    }
                                    
                                    else {
                              
                                    }
                                 }
                              },
                              error : function(jqXHR, textStatus,
                                    errorThrown) {
                                 console.log(jqXHR);
                                 console.log(textStatus);
                                 console.log(errorThrown);
                              }
                           });
                  },
                  error : function(jqXHR, textStatus, errorThrown) {
                     console.log(jqXHR);
                     console.log(textStatus);
                     console.log(errorThrown);
                  }
               });
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
                     <a> ${sessionScope.loginUser.name}님</a>
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
   
      <!-- 일간박스오피스 -->
      <section id="gallery" class="gallery">
         <div class="container-fluid">
            <div  class="row gy-4 justify-content-center">
               <h3 >일간박스오피스 TOP 10</h3>
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster0" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster0">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid0" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
 
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster1" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster1">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid1" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster2" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster2">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid2" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>



         <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster3" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster3">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid3" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster4" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster4">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid4" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster5" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster5">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid5" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster6" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster6">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid6" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster7" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster7">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid7" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster8" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster8">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid8" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>

               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="dayImgPoster9" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="dayAPoster9">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="dayADocid9" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
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
               <h3>주간박스오피스 TOP 10</h3>
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster0" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster0">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid0" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
 
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster1" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster1">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid1" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster2" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster2">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid2" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster3" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster3">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid3" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster4" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster4">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid4" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster5" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster5">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid5" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster6" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster6">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid6" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster7" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster7">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid7" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster8" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster8">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid8" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               <div style="text-align: center;" class="col-xl-1 col-lg-4 col-md-6">
                  <div class="gallery-item h-100">

                     <img id="weeklyImgPoster9" class="img-fluid" alt="">
                     <div
                        class="gallery-links d-flex align-items-center justify-content-center">
                        <a id="weeklyAPoster9">
                         <i
                           class="bi bi-arrows-angle-expand"></i>
                        </a> <a id="weeklyADocid9" class="details-link"><i
                           class="bi bi-link-45deg"></i></a>
                     </div>
                  </div>
               </div>
               
               

            </div>
         </div>
      </section>
      <!-- End주간박스오피스 -->
      
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