<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Admin My Page_UserList</title>

<script src="https://code.jquery.com/jquery-3.7.0.js" integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>

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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/css/glightbox.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.css">
<!-- Template Main CSS File -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/main.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/searchBox.css">

<style>

	table, table td, table th {
		border: 1px green solid;
		text-align: center;
	}
	
	#clo-list1 {
		flex: 8;
		box-sizing: border-box;
		padding-right: 5%;
	}
	
	#clo-list2 {
		flex: 2;
		box-sizing: border-box;
		padding-letf: 5%;
	}

</style>

<script>

	$(function(){
		var checkObj = document.getElementsByName("checkRow");
		var checkRowCnt = checkObj.length;
		$("input[name='selectAll']").click(function(){
			var checkArr = $("input[name='checkRow']");
			for (var i=0; i<checkArr.length; i++){
				checkArr[i].checked = this.checked;
			}
		});
		$("input[name='checkRow']").click(function(){
			if($("input[name='checkRow']:checked").length == checkRowCnt){
				$("input[name='selectAll']")[0].checked = true;
			}else{
				$("input[name='selectAll']")[0].checked = false;
			}
		});		
	});
	function deleteBtn() {
	    var url = "delete";
	    var valueArr = new Array();
	    var list = $("input[name='checkRow']");

	    for (var i = 0; i < list.length; i++) {
	        if (list[i].checked) {
	            valueArr.push(list[i].value);
	        }
	    }
	    if (valueArr.length == 0) {
	        alert("선택된 정보가 없습니다.");
	    } else if (valueArr.includes('admin00')) { // 'admin00'이 포함되어 있는지 확인
	        alert("admin00 관리자아이디는 삭제할 수 없습니다. 관리자아이디는 체크해제 해주세요.");
	    } else {
	        var submit = confirm("선택한 정보를 삭제하시겠습니까?");
	        $.ajax({
	            url: '/controller/boayou/delete',
	            type : 'POST',
	            traditional : true,
	            data : {valueArr : valueArr},
	            success : function(jdata){
	                if (jdata == 1) {
	                    alert("삭제실패");
	                } else {
	                    alert("삭제성공");
	                    location.reload();
	                }
	            },
	            error: function (xhr, status, error) {
	                alert(`오류 발생: ${error}`);
	            }
	        });
	    }
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
	<!-- C:\STS-3\workspace\BoAYou_Team1\src\main\webapp\resources\assets\css\main.css -->
	<!-- /* 프로필 박스 변경 */ .gallery-single .portfolio-description .testimonial-item  -->
	<!-- ======= Gallery Single Section ======= -->
	<section id="gallery-single" class="gallery-single">
		<div class="container">
			<div class="row justify-content-between gy-4 mt-4">
				<div class="">
					<div class="d-flex">
						<div class="clo-list" id="clo-list1">
							<h3>회원 전체 목록</h3>
								<table>
							    <thead>
							    <tr>
							        <th><input type="checkbox" name="selectAll" /></th>
							        <th>USER_ID</th>
							        <th>PWD</th>
							        <th>NAME</th>
							        <th>AGE</th>
							        <th>JUMIN</th>
							        <th>USER_LEVEL</th>
							    </tr>
							    </thead>
							    <tbody id="checkboxContainer">
							    <c:forEach var="user" items="${userList}">
							        <tr >
							            <td><input type="checkbox" name="checkRow" value="${user.user_id}"/></td> 
							            <td>${user.user_id}</td>
							            <td>${user.pwd}</td>
							            <td>${user.name}</td>
							            <td>${user.age}</td>
							            <td>${user.jumin}</td>
							            <td>${user.user_level}</td>
							        </tr>
							    </c:forEach>
							    </tbody>
							</table>
							<%@ include file="../import/page-nation-user.jsp" %>
							<input type="button" value="선택항목삭제" onclick="deleteBtn();" /> 							
						</div>
						<div class="div-box" id="clo-list2">
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
													<span> <a href="#">공지사항띄우기</a></span>
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
			</div>
		</div>		
		</section>
		<!-- End Gallery Single Section -->
	</main>
	<!-- End #main -->
	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>PhotoFolio</span></strong>. All Rights Reserved
			</div>
			<div class="credits">
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>
	<!-- End Footer -->
	<a href="#" class="scroll-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>
	<div id="preloader">
		<div class="line"></div>
	</div>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/vendor/aos/aos.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>
	<script src="${pageContext.request.contextPath}/resources/assets/js/homePage.js"></script>	
</body>
</html>