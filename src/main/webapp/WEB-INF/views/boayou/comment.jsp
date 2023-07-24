<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comment Page</title>
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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	integrity="sha384-vp86vTRFVJgpjF9jiIGPEEqYqlDwgyBgEF109VFjmqGmIY/Y4HV4d3Gp2irVfcrp"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/main2.css">
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
    
    <style>
        .comment-box {
            border: 1px solid #ccc;
            padding: 1em;
            margin: 1em 0;
        }
        
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    $(document).ready(function () {
        $('#submitComment').on('click', function (e) {
            e.preventDefault();
            const user_id = $("#user_id").val();
            const comment_content = $("#comment_content").val();
            const community_no = '${community_no}';

            $.ajax({
                url: `${pageContext.request.contextPath}/boayou/comments/${community_no}`,
                type: 'POST',
                data: {
                    user_id: user_id,
                    comment_content: comment_content
                },
                contentType: "application/x-www-form-urlencoded",
                success: function () {
                    location.reload();
                },
                error: function () {
                    alert('댓글 추가에 실패했습니다. 다시 시도해주세요.');
                }
            });
        });
    });

    </script>
</head>
<body>
    <h1>Comments</h1>

    <div id="comments-container">
        <c:forEach var="comment" items="${comments}">
        		<p>작성자:${comment.user_id }</p>
            <div class="comment-box">
                <p>${comment.comment_content}</p>
            </div>
        </c:forEach>        
    </div>

    <hr>

    <h2>Leave a comment</h2>
    <form id="commentForm">
    <label for="user_id">User ID:</label><br>
    <input type="text" id="user_id" name="user_id" value=${sessionScope.loginUser.user_id} required><br><br>
    <label for="comment_content">Comment:</label><br>
    <textarea id="comment_content" name="comment_content" rows="4" cols="50" required></textarea><br><br>
    <button type="button" id="submitComment">Submit</button>
</form>

</body>
</html>
