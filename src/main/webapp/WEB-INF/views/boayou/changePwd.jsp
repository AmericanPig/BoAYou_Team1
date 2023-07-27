<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<script>
function submitAndClose() {
	document.getElementById('updateForm').submit();
	sessionStorage.setItem('profileUpdated', 'yes');
    window.close();
}

function done(){
	alert('비밀번호가 변경되었습니다');
	windows.close();
}

</script>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>패스워드 변경</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main2.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">
<style>
body {
	color: white;
	background-Color: black;
	width:100%;
	height:100%;
	margin: 0;
	padding-bottom: 26%; 
 	min-height: 100%; 
 	position: relative;
}

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body onresize="resizeTo(500, 500);">
<br>
  <h1 style=" text-align : center; font-size : 15pt;">패스워드 변경하기</h1><br><br>
  <form id="updateForm" action="${pageContext.request.contextPath}/boayou/updateUserPwd" method="post">
    <label for="pwd">변경할 패스워드 : </label>
    <input name="pwd" placeholder="변경할 비밀번호 입력" />
    <input style = "float: right" type="submit" value="변경사항 적용" onclick="done()">
</form>
</body>
</html>