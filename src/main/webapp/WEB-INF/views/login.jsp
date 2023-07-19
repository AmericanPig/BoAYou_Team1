<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Login</h1>
    <h1>로그인 페이지</h1>
    
    <form action="loginProcess" method="post">
        <p>아이디: <input type="text" name="user_id" required></p>
        <p>비밀번호: <input type="password" name="pwd" required></p>
        <button type="submit">로그인</button>
    </form>
    
    <c:if test="${not empty msg}">
        <p>${msg}</p>
    </c:if>
</body>
</html>