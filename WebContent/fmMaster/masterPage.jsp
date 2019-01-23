<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
 	$(document).ready(function(){
 		$("#delete").hide();
 		
		$("#member").click(function(){
			$.ajax({
				type:"post",
				url:"mem_manage.do",
				success:function(data){
					var data = JSON.parse(data);
					var htmlStr='';
					htmlStr+="<table border=1>";
					htmlStr +="<tr><td>아이디</td><td>이름</td><td>이메일</td><td>주소</td><td>수익</td><td>순위</td><td>판매글 갯수</td></tr>"
					for(var i=0;i<data.length;i++){
						htmlStr+="<tr>";
						htmlStr+="<td>"+data[i].userid+"</td>";
						htmlStr+="<td>"+data[i].name+"</td>";
						htmlStr+="<td>"+data[i].email+"</td>";
						htmlStr+="<td>"+data[i].addr+"</td>";
						htmlStr+="<td>"+data[i].income+"</td>";
						htmlStr+="<td>"+data[i].rank+"</td>";
						htmlStr+="<td>"+data[i].sellcount+"</td>";
						htmlStr+="</tr>";
					}
					htmlStr+="</table>";
					$("#result").html(htmlStr);
					$("#delete").show();
				},
				error:function(e){
					
				},
			});
		});
		$("#fleamarket").click(function(){
			$.ajax({
				type:"post",
				url:"flea_manage.do",
				success:function(data){
					var data = JSON.parse(data);
					var htmlStr='';
					htmlStr+="<table border=1>";
					htmlStr +="<tr><td>상품번호</td><td>카테고리ID</td><td>판매아이디</td><td>상품이름</td><td>가격</td></tr>"
					for(var i=0;i<data.length;i++){
						htmlStr+="<tr>";
						htmlStr+="<td>"+data[i].num+"</td>";
						htmlStr+="<td>"+data[i].category+"</td>";
						htmlStr+="<td>"+data[i].userid+"</td>";
						htmlStr+="<td>"+data[i].title+"</td>";
						htmlStr+="<td>"+data[i].price+"</td>";
						htmlStr+="</tr>";
					}
					htmlStr+="</table>";
					htmlStr+="<input type='button' value='fashion' onclick='fashion()'>";
					$("#result").html(htmlStr);
					
				},
				error:function(e){
					
				},
			});
		});
		$("#back").click(function(){
			location.href="../fm/main.jsp";
		})
		$("#delete_bt").click(function(){
			if($("#id").val()==""){
				alert("아이디를입력하세요");
				return false;
			}
			//location.href="memberDelete.do?id="+$("#id").val();
			$.ajax({
				type:"post",
				url:"memberDelete.do?id="+$("#id").val(),
				success:function(data){
					if(data.trim()=="ok"){
						alert("삭제성공");
						$("#member").click();
					}
					else{
						alert("아이디를 다시확인해보세요");
					}
					
				},
				error:function(e){
					
				}
			});
		});
		
	}); 
	
	

</script>
 관리자페이지 입니다.
 
 <input type="button" value="회원관리" id="member" >
 <input type="button" value="플리마켓관리" id="fleamarket">
 <input type="button" value="스토어관리" id="store">
 <input type="button" value="돌아가기" id="back">
 
 <div id="result">
  ㅎㅎ
 </div>
 <div id="delete">
 삭제하실 ID를 정확하게 입력하세요 <input type="text" id="id"> <input type="button" value="삭제하기" id="delete_bt">
 </div>
</body>
</html>