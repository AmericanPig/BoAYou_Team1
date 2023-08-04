

      

        function verifyField() {
            let element = document.getElementById("user_id");
            let msg = 'id 입력';
            if (!isValid(element, msg)) {
                return false;
            }
            
            element = document.getElementById("pwd");
            msg = 'pwd 입력';
            if (!isValid(element, msg)) {
                return false;
            }
         
            element = document.getElementById("pw-double");
            msg = "비밀번호 확인을 입력하세요.";
            if(!isValid (element,msg)){
                return false;
            }

            element = document.getElementById("name");
            msg = 'name 입력';
            if (!isValid(element, msg)) {
                return false;
            }
            
            element = document.getElementById("age");
            msg = 'age 입력';
            if (!isValid(element, msg)) {
                return false;
            }


            element = document.getElementById("jumin");
            msg = 'jumin 입력';
            if (!isValid(element, msg)) {
                return false;
            }

            let originObj = document.getElementById("pwd");
            let checkObj = document.getElementById("pw-double");
            if(originObj.value != checkObj.value){
                alert("pwd확인하기");
                checkObj.focus();
                return false;
            }
            return true;
        }

        function isValid(element, msg) {
            let result = false;
            if (element.value == '') {
                alert(msg);
                element.focus();
                result = false;
            } else {
                result = true;
            }
            return result;
        }

        function double(value) {
            let origin = document.getElementById("pwd").value;
            let boxSpan = document.getElementById("box-span");

            if (origin == value) {
                boxSpan.className = "box-span-on";
                boxSpan.textContent = "일치";
            } else {
                boxSpan.className = "box-span-off";
                boxSpan.textContent = "불일치";
            }

        }
        


$(function(){
 
    
    
    $("#checkId").click(function(){
    
        let user_id = $("#user_id").val();
         
        $.ajax({
            type:'post', //post 형식으로 controller 에 보내기위함!!
            url:"/controller/boayou/checkId", // 컨트롤러로 가는 mapping 입력
            data: {"user_id":user_id}, // 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
            beforeSend: function () { // 추가된 콜백 함수
                console.log("Sending user_id: ", user_id);                
            },
            success: function(result){ 
                if (result == 1) {
                   console.log("result: ", result);
                    $("#id_feedback").html('이미 사용중인 아이디입니다.');
                    $("#id_feedback").css('color', '#dc3545');
                } else {
                   console.log("result: ", result);
                    $("#id_feedback").html('사용할 수 있는 아이디입니다.');
                    $("#id_feedback").css('color', '#28a745');
                }
            },
            error : function(error){alert(error);}
        });
        
    });
    
});
 
 
