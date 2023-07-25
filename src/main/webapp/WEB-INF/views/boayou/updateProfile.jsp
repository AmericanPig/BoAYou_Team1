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
</script>
<html>
<head>
  <title>프로필 변경</title>
</head>
<body>
  <h1>프로필 변경하기</h1>
  <form:form action="updateUserProfile" method="post">
    <label for="pwd">변경할 패스워드</label>
    <input name="pwd" value="변경할 비밀번호 입력" />
    <br/><br/>
    <input type="submit" value="변경사항 적용" onclick="submitAndClose()"/>
  </form:form>
</body>
</html>