<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Comment Page</title>
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
	margin: 0;
	padding-bottom: 26%;
	min-height: 100%;
	position: relative;
}

.comment-box {
	border: 1px solid #212121;
	padding: 1em;
	margin: 1em 0;
}

#comment-form-container {
	border: solid 0.5px white;
	position: fixed;
	bottom: 0;
	width: 100%;
	height: 30%;
	background-color: #111111;
	padding: 15px;
	box-sizing: border-box;
	box-shadow: 0px -1px 4px rgba(0, 0, 0, 0.1);
	display: flex;
	flex-direction: column;
	align-items: flex-start;
}

#comment_content {
	width: 750px;
}

.stats {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.stats li {
	display: inline;
	margin-right: 10px;
}
</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	// 댓글 추가 ajax
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
                    alert('로그인 후 이용가능한 서비스입니다.');
                }
            });
        });
    });
    // 조야요 ajax
    function submitJoayoForm(element) {
		  var comment_no = $(element).data('comment-no');
		  var user_id = $(element).data('user-id');

		  $.ajax({
		    type: 'POST',
		    url: 'pushcommentjoayo',
		    data: { comment_no: comment_no, user_id: user_id },
		    dataType: 'json',
		    beforeSend: function() {
		      console.log('Request:', { comment_no: comment_no, user_id: user_id });
		    },
		    success: function(response) {
		      console.log('Response:', response);

		      if (response.hasOwnProperty('newJoayoCount')) {
		        $(element).text(response.newJoayoCount);
		      } else {
		        console.error('Invalid response. Please check the server.');
		      }
		    },
		    error: function(xhr, status, error) {
		      alert('로그인 후 이용가능한 서비스입니다.');
		      console.error('Error:', error);
		    },
		  });
		}
    //시러요 ajax
    function submitSiroyoForm(element) {
		  var comment_no = $(element).data('comment-no');
		  var user_id = $(element).data('user-id');

		  $.ajax({
		    type: 'POST',
		    url: 'pushcommentsiroyo',
		    data: { comment_no: comment_no, user_id: user_id },
		    dataType: 'json',
		    beforeSend: function() {
		      console.log('Request:', { comment_no: comment_no, user_id: user_id });
		    },
		    success: function(response) {
		      console.log('Response:', response);

		      if (response.hasOwnProperty('newJoayoCount')) {
		        $(element).text(response.newJoayoCount);
		      } else {
		        console.error('Invalid response. Please check the server.');
		      }
		    },
		    error: function(xhr, status, error) {
		      alert('로그인 후 이용가능한 서비스입니다.');
		      console.error('Error:', error);
		    },
		  });
		}
    //코멘트 삭제 ajax
    function CommentDelete(element) {
  var comment_no = $(element).data('comment-no');
  var community_no = $(element).data('community-no');
  
  $.ajax({
    type: 'POST',
    url: 'deletecomment',
    data: { comment_no: comment_no, community_no: community_no },
    beforeSend: function() {
      console.log('Request:', { comment_no: comment_no, community_no: community_no });
    },
    success: function(response) {
      if (response) {
        alert('삭제가 완료되었습니다.');
        location.reload();
      } else {
        console.error('오류 발생.');
      }
    },
    error: function(xhr, status, error) {
      console.error('Error:', error);
    },
  });
}

    </script>
</head>
<body>
	<div id="comments-container">
		<c:forEach var="comment" items="${comments}">
			<ul class="stats">
				<a href="${pageContext.request.contextPath }/boayou/userPage?user_id=${comment.user_id}"> <li style="float: reft;">작성자:${comment.user_id }</li></a>
				<c:if test="${not empty sessionScope.loginUser and sessionScope.loginUser.user_id == community.user_id}">
				<li>
					<button type="button" onclick="CommentDelete(this)"
					data-comment-no="${comment.comment_no}"
					data-community-no="${comment.community_no }" class="button large">삭제</button>
				</li>
				</c:if>
				<li style="float: right;"><a href="javascript:void(0)"
					class="icon solid fa-thumbs-down" style="color: white;"
					onclick="submitSiroyoForm(this);"
					data-comment-no="${comment.comment_no}"
					data-user-id="${sessionScope.loginUser.user_id}">${comment.siroyo}</a></li>
				<li style="float: right;"><a href="javascript:void(0)"
					class="icon solid fa-thumbs-up" style="color: white;"
					onclick="submitJoayoForm(this);"
					data-comment-no="${comment.comment_no}"
					data-user-id="${sessionScope.loginUser.user_id}">${comment.joayo}</a></li>
			</ul>
			<div class="comment-box">
				<p>${comment.comment_content}</p>
			</div>
		</c:forEach>
	</div>
	<hr>

	<div id="comment-form-container">
		<form id="commentForm">
			<label for="user_id">User ID:</label><br> <input type="text"
				id="user_id" name="user_id"
				value=${sessionScope.loginUser.user_id
				} required><br>
			<br>
			<textarea id="comment_content" name="comment_content" rows="4"
				cols="50" placeholder="comment_content:" required></textarea>
			<br> <br>
			<button style="float: right;" type="button" id="submitComment">Submit</button>
		</form>
	</div>

</body>
</html>
