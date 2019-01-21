<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
<head>
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
	  border-bottom: 3px solid #0B2161;
	  text-align: left;
	}
	#blueone td {
	  color: #669;
	  padding: 10px;
	  border-bottom: 1px solid #ddd;
	}
	#blueone tr:hover td {
	  color: #004;
	}
</style>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
$(document).ready(function(){
	var msg=$("#msg").val();
	var postString = "msg="+msg+"&bnum="+${board.BOARD_NUM};
	$.ajax({
		type:"post",
		url:"commentList",
		data:postString,
		success:function(data){
			$("#result").html(data);
		},
	});
	$("#send").click(function(){
		var msg=$("#msg").val();
		var postString = "msg="+msg+"&bnum="+${board.BOARD_NUM};
		$.ajax({
			type:"post",
			url:"comment",
			data:postString,
			success:function(data){
				$("#result").html(data);
			},
		});
	})
});
</script>
</head>
<body>
	<div class="container">
		<form action="update" method="get">
			<table align="center" id="blueone">
				<tr>	
					<td>글번호</td><td>${board.BOARD_NUM }<input type="hidden" value="${board.BOARD_NUM }" name="BOARD_NUM" id="BOARD_NUM"></td>
					
				</tr>
				<tr>
					<td>작성자</td>
					<td>${board.BOARD_NAME }</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input type="text" value="${board.BOARD_SUBJECT}" name="BOARD_SUBJECT" id="BOARD_SUBJECT"></td>
				</tr>
				<tr>
					<td>작성날짜</td>
					<td>${board.BOARD_DATE }</td>
				</tr>
				<tr>
					<td>조회수</td>
					<td>${board.BOARD_READCOUNT }</td>
				</tr>
				<tr>
					<td>내용</td>
					<td><input type="text" value="${board.BOARD_CONTENT }" name="BOARD_CONTENT" id="BOARD_CONTENT"></td>
				</tr>
				<tr>
					<td>
						<c:if test="${sessionScope.id==board.BOARD_PASS}">
						<input type="submit" value="글수정" class="btn btn-default">
						<input type="button" value="글삭제" class="btn btn-default" onclick="location='delete?BOARD_NUM=${board.BOARD_NUM }'">
						</c:if>
					</td>
					<td>
						<input type="button" value="글목록" class="btn btn-default" onclick="location='boardList.jsp'">
						<input type="button" value="답글쓰기" class="btn btn-default" onclick="location='ReplyForm.jsp?num=${board.BOARD_NUM }&board_re_ref=${board.BOARD_RE_REF }&board_re_seq=${board.BOARD_RE_SEQ }&board_re_lev=${board.BOARD_RE_LEV }'">
					</td>
				</tr>
			</table>
		</form>
		<br>
		<br>
	</div>	
		<table align="center" id="blueone">
			<tr>
				<td><input type="text" size=50 name="msg" id="msg"></td>
				<td><input type="button" value="댓글달기" id="send"></td>
			</tr>
		</table>
<div id="result">
</div>
</body>
</html>