<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<script type="text/javascript" src="../fm/script.js"></script>
</head>

<script>
	$(document).ready(function(){
		$("#submit_bt").click(function(){
			if($("#name").val() ==""){
				alert("이름 입력하세요");
				return false;
			}
			if($("#email").val() ==""){
				alert("이메일 입력하세요");
				return false;
			}
			if($("#phone").val() ==""){
				alert("폰을 입력하세요");
				return false;
			}
			$.ajax({
				type:"post",
				url : "search.do?name="+$("#name").val()+"&email="+$("#email").val()+"&phone="+$("#phone").val(),
				success:function(data){
					if(data.trim() =="-1"){
						$("#result").val("");
						alert("가입한 정보가 없습니다.");
					}
					else{
						$("#result").val(data);
					}
				},
				error :function(e){
					alert(e);
				},
				
			});
		});
	});

	
</script>


<body>
아이디찾을라면 가입정보를 입력하세요<br>


 이름 : <input type="text" id="name" name="name" ><br>
 이메일: <input type="text" id="email" name="email"><br>
 전화번호: <input type="text" name="phone" id="phone" class="form-control" maxlength="13"><br>
 <input type="button" id="submit_bt" value="확인" ><br><br>

당신의 아이디 : <input type="text" id="result" ><br>
<input type="button" value="비밀번호찾기" onClick="location.href='searchPWD.jsp'">
<input type="button" value="로그인화면" onClick="location.href='naverlogin.jsp'">
</body>

<script>
    function autoHypenPhone(str) { // 폰번호 하이픈 하는 함수
    	str = str.replace(/[^0-9]/g, '');
    	var tmp = '';
    	if (str.length < 4) {
    		return str;
    	} else if (str.length < 7) {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3);
    		return tmp;
    	} else if (str.length < 11) {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3, 3);
    		tmp += '-';
    		tmp += str.substr(6);
    		return tmp;
    	} else {
    		tmp += str.substr(0, 3);
    		tmp += '-';
    		tmp += str.substr(3, 4);
    		tmp += '-';
    		tmp += str.substr(7);
    		return tmp;
    	}
    	return str;
    }
	    var cellPhone = document.getElementById('phone');
	    
	    cellPhone.onkeyup = function(event) {
	   	event = event || window.event;
    	var val = this.value.trim();
    	this.value = autoHypenPhone(val);
   }
</script>

</html>