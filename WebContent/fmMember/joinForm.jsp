<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>  
body{
	padding : 30px;
}

	body { background: #fff; }
	#blueone {
	  border-collapse: collapse;
	}  
	#blueone th {
	  padding: 10px;
	  color: #168;
	  border-bottom: 3px solid #726B57;
	  text-align: left;
	}
	#blueone td {
	  color: #669;
	  padding: 10px;
	  border-bottom: 1px solid #726B57;
	}
	#blueone tr:hover td {
	  color: #004;
	}
	
</style>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>

var emailPattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
var pw_p= /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,}$/;
$(document).ready(function(){
    $("#pw1").keyup(function(){
        $("#pw2").val("");
        $("#pwcheck").remove();
        return false;
    });
    $("#pw2").keyup(function() {
        if ($("#pw1").val() != "") {
            if ($("#pw1").val() != $("#pw2").val()) {
                $("#pwcheck").remove();
             	   $("span").append("<div style='color:red' id='pwcheck'>비밀번호 틀림</div>");
             	   return false;
            } else {
                $("#pwcheck").remove();
            	    $("span").append("<div style='color:green'  id='pwcheck'>비밀번호 맞음</div>");
             }
        }
    });
    $("#btnIn").click(function(){
    	if(!$("#pw1").val().match(pw_p)){
    		alert("비밀번호는 영어,특수문자를 포함해야합니다.")
    		return false;
    	}
        if ($("#pw1").val() != $("#pw2").val()) {
          	alert("비밀번호 맞지않음");
        	return false;
        }
        if($("#name").val()==""){
        	alert("이름입력"); 
        	return false;
        }
        if($("#id").val()==""){
        	alert("아이디입력"); 
        	return false;
        }
        if(!$("#email").val().match(emailPattern)){
        	alert("이메일 형식이 아닙니다.");
        	return false;
        }
         	$("#frm").submit();
         });
    $("#idcheck").click(function(){
    	url="IdCheck.jsp"
    	window.open(url,"confirm","width=500 height=150");
    });
});
$(function(){
	$("#btnZip").click(function(){
		window.open("zipcheck.jsp","","width=500 height =500");
	})	
});
</script>
<body>
<h1>회원가입</h1>
<form name ="frm" id="frm" action ="join.do">
<input type ="hidden" name="userid" id="id1">
<div class="container">
<table id="blueone">
	<tr>
		<th></th>
		<th colspan=2 class="col-xs-8">
	</tr>
	<tr>
		<td> 이름  *</td>
		<td class="col-xs-4"><input type ="text" name="name" id="name" class = "form-control" >  </td>
		<td></td>
	</tr> 
	<tr>
		<td> ID  *</td>
		<td class="col-xs-5"><input type ="text" disabled  id="id" class = "form-control" > </td>
		<td><input type ="button" id="idcheck" value ="중복체크" class="btn btn-default"></td>
	</tr>
	<tr>
		<td> PASSWORD  *</td>
		<td colspan=2 class="col-xs-3"><input type ="password" id ="pw1" name="pwd"  class = "form-control"  placeholder="(영문,특수기호포함)" ></td>
	</tr>
	<tr>
		<td> 암호확인   *</td>
		<td ><input type ="password"  id ="pw2" class = "form-control" ></td>
		<td><span></span></td>
	</tr>
	<tr>
		<td>성별</td>
		<td><input type ='radio' value="남" name="gender">남 &nbsp; <input type ='radio' value="여" name="gender">여</td>
		<td></td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td class="col-xs-2"><input type ="text" name= "birth" id="birth" class = "form-control" maxlength="6" >  </td>
		<td></td>
	</tr>
	<tr>
		<td>주민번호 뒷자리</td>
		<td class="col-xs-2"><label class="sr-only" for="rnum">아이디를 찾기위해 필요합니다.</label><input type="password" name="rnum" id="rnum" class = "form-control" maxlength="7" aria-describedby="helpBlock"></td>
		<td></td>
	</tr>
	<tr>
		<td> E-MAIL</td>
		<td colspan=2 class="col-xs-4"><input type ="email" name= "email" id="email" class = "form-control" ></td>
	</tr>
	<tr>
		<td> PHONE</td>
		<td class="col-xs-4"><input type ="text" name="cellPhone" id="cellPhone"  class = "form-control" maxlength="13"></td>
		<td></td>
	</tr>
	<tr>
		<td>우편번호</td>
		<td  class="col-xs-3"><input type ="text" name="zipcode" id= "zipcode" class = "form-control"></td>
		<td><input type ="button" name="btnZip" id="btnZip" value='검색' class="btn btn-default"></td>
	</tr>
	<tr>
		<td> 주소</td>
		<td colspan=2 class="col-xs-5"><input type ="text" name="addr" id="addr" class = "form-control"></td>
	</tr>
	<tr>
		<td>질문</td>
		<td colspan=2><input type="text" name="pwq" id="pwq"  class = "form-control"></td>
	</tr> 
	<tr>
		<td>답</td>
		<td colspan=2><input type="text" name="question" id="question" class = "form-control"></td>
	</tr>
	<tr>
		<td></td>
		<td colspan=2><input type ="button" id ="btnIn" value ="확인" class="btn btn-default"> &nbsp;&nbsp; <input type ="button" value ="취소" class="btn btn-default"></td>
	</tr>
</table>
</div>
</form>
</body>
<script>
function autoHypenPhone(str){
    str = str.replace(/[^0-9]/g, '');
    var tmp = '';
    if( str.length < 4){
        return str;
    }else if(str.length < 7){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3);
        return tmp;
    }else if(str.length < 11){
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 3);
        tmp += '-';
        tmp += str.substr(6);
        return tmp;
    }else{              
        tmp += str.substr(0, 3);
        tmp += '-';
        tmp += str.substr(3, 4);
        tmp += '-';
        tmp += str.substr(7);
        return tmp;
    }
    return str;
}

var cellPhone = document.getElementById('cellPhone');
cellPhone.onkeyup = function(event){
event = event || window.event;
var val = this.value.trim();
this.value = autoHypenPhone(val) ;
}
</script>
</html>