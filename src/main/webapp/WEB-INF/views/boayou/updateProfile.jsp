<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>프로필 변경</title>
</head>
<body>
  <h1>프로필 변경</h1>
  <form id="updateProfileForm" method="post" enctype="multipart/form-data">
    <div>
      <img id="currentImage" src="${sessionScope.loginUserProfile.img }" style = "align-content: center;"><br>
      <label for="profileImage">새 프로필 이미지 : </label>
      <input type="file" id="profileImage" name="profileImage" accept="image/png, image/jpg" onchange="previewImage()">
    </div>
    <div>
      <label for="profileMessage">새 프로필 메시지: </label>
      <textarea id="profileMessage" name="profileMessage" rows="5" cols="40"></textarea>
    </div>
    <button type="submit">저장</button>
  </form>

  <script>
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
</body>
</html>
