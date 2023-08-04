$(document).ready(function() {
    $(".trigger").on("click", function() {
        $(".modal-wrapper").toggleClass("open");
        $(".page-wrapper").toggleClass("blur-it");
        return false;
    });

    $('.tabcontent > div').hide();
    $('.tabnav a').click(function() {
        $('.tabcontent > div').hide().filter(this.hash).fadeIn();
        $('.tabnav a').removeClass('active');
        $(this).addClass('active');
        return false;
    }).filter(':eq(0)').click();

    $("#findId").click(function() {
        const name = $("#name1").val();
        const ssn = $("#ssn1").val();

        $.ajax({
            type: "POST",
            url: "find-id",
            data: { "name": name, "jumin": ssn },
            success: function(response) {
                $("#foundId").html("찾은 아이디: " + response);
            },
            error: function() {
                alert("아이디 찾기에 실패했습니다.");
            }
        });
    });

    $("#userCheckBtn").click(function() {
        const userId = $("#userId").val();
        const name = $("#name2").val();
        const ssn = $("#ssn2").val();

        $.ajax({
            type: "POST",
            url: "check-user",
            data: { "userId": userId, "name": name, "jumin": ssn },
            success: function(response) {
                if (response) {
                    $("#resetPassword").show();
                } else {
                    $("#statusInfo").html("사용자 정보가 일치하지 않습니다.");
                }
            },
            error: function() {
                alert("사용자 확인에 실패했습니다.");
            }
        });
    });

    $("#resetPasswordBtn").click(function() {
        const userId = $("#userId").val();
        const newPassword = $("#newPassword").val();

        $.ajax({
            type: "POST",
            url: "update-password", 
            data: { "userId": userId, "newPassword": newPassword },
            dataType: "json",
            success: function(response) {
                console.log(response);
                if (response.success) {
                    $("#statusInfo").html("비밀번호가 성공적으로 변경되었습니다.");
                    console.log("비밀번호 변경 완료");
                } else {
                    $("#statusInfo").html(response.message);
                }
            },
            error: function(error) {
                console.log(error);
                alert("비밀번호 변경에 실패했습니다.");
            }
        });
    });
});