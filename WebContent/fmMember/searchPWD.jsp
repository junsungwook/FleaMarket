<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<script>
$(document).ready(function(){
	$("#submit_bt").click(function(){
		if($("#id").val() ==""){
			alert("id 입력하세요");
			return false;
		}
		if($("#email").val() ==""){
			alert("이메일 입력하세요");
			return false;
		}
		$.ajax({
			type:"post",
			url : "pwd_search.do?id="+$("#id").val()+"&email="+$("#email").val(),
			success:function(data){
				if(data.trim() =="-1"){
					alert("가입한 정보가 없습니다.");
				}
				else{
					alert("해당 메일로 임시비밀번호를 전송했습니다.");
					self.close();
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
비번찾기<br>

비번찾을라면 가입했던 id/email 입력하세요
id <input type="text" id="id" name="id" >
email <input type="text" id="email" name="email">
<input type="button" id="submit_bt">

</body>
</html>