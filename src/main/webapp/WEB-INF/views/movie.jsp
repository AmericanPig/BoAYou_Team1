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
<table border="1">
	<tr>
		<th>docid</th>
		<th>title</th>
		<th>directornm</th>
		<th>nation</th>
		<th>company</th>
		<th>plot</th>
		<th>runtime</th>
		<th>rating</th>
		<th>reprlsdate</th>
		<th>posters</th>
		<th>flocation</th>
		<th>genre</th>
	</tr>
	<c:forEach var="movie" items="${Movie_List}">
	<tr>
		<td>${movie.docid}</td>
		<td>${movie.title}</td>
		<td>${movie.directornm}</td>
		<td>${movie.nation}</td>
		<td>${movie.company}</td>
		<td>${movie.plot}</td>
		<td>${movie.runtime}</td>
		<td>${movie.rating}</td>
		<td>${movie.reprlsdate}</td>
		<td>${movie.posters}</td>
		<td>${movie.flocation}</td>
		<td>${movie.genre}</td>
		
	
	</tr>
	
	</c:forEach>
</table>
</body>
</html>