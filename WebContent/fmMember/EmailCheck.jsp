<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>
	$(document).ready(function(){
		$("#check_bt").click(function(){
			if($("#num_check").val()==""){
				alert("입력하세요");
				return false;
			}
			if($("#num_check").val() == $("#num").val()){
				alert("인증이 완료되었습니다.");
				$(opener.document).find("#email").attr("readonly",true);
				$(opener.document).find("#email_check_bt").attr("disabled",true);
				$(opener.document).find("#email_check").val("1");
	           	self.close();	
			}
		})
	})	
</script>

<input type="hidden" id="num" value ="${num }">
  ${email } 로 인증번호를 전송했습니다.<br>
인증번호를 입력하시오 : <input type="text" id="num_check">
<input type="button" id="check_bt" value="확인">



</body>
</html>