<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet"> 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
<% 
	request.setCharacterEncoding("utf-8");
	int num=0;
	int ref=1,re_seq=0,re_lev=0;

	if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_seq=Integer.parseInt(request.getParameter("re_seq"));
			re_lev=Integer.parseInt(request.getParameter("re_lev"));
	}
%>
<style> 

body{
	padding : 30px;
	 background: #fff; 
	font-family: "Nanum Gothic", sans-serif;
	}
	#blueone {
	  border-collapse: collapse;
	}  
	#blueone th {
	  padding: 10px;
	  color: #29220A;
	  border-bottom: 3px solid #29220A;
	  text-align: left;
	
	}
	#blueone td {
	  color: #29220A;
	  padding: 10px;
	  border-bottom: 1px solid #ddd;
	
	}
	#blueone tr:hover td {
	  color: #DBA901;
	}
</style>
</head>
<body>
<div class="container" >
	<h2>공지사항</h2>
	<form action="insert.bo" method="post" enctype="multipart/form-data" name="boardform">
	<input type ="hidden" name="num" value=<%=num %>>
	<input type ="hidden" name="ref" value=<%=ref %>>
	<input type ="hidden" name="re_seq" value=<%=re_seq %>>
	<input type ="hidden" name="re_lev" value=<%=re_lev %>>
		<table id="blueone">
			<tr>
			
				<c:if test="${sessionScope.userid=='master'}">
					<th colspan ="2" class="td_left"><label for="board_name">※공지사항※</label></th>
					<input type ="hidden" name="board_name" value="공지사항" id="board_name">
				</c:if>
				<c:if test="${sessionScope.userid!='master'}">
					<th  class="td_left"><label for="board_name">글쓴이</label></th>
					<th class="td_right"><input type="text" name="board_name" id="board_name" class="form-control"></th>
				</c:if>
			</tr>
			<tr>
				<td class="td_left"><label for="board_pass">비밀번호</label></td>
				<td class="td_right"><input name="board_pass" type="password" id="board_pass" class="form-control"></td>
			</tr>
			<tr>
				<td class="td_left"><label for="board_subject">제 목</label></td>
				<td class="td_right"><input name="board_subject" type="text" id="board_subject" class="form-control"></td>
			</tr>
			<tr>
				<td class="td_left"><label for="board_content">내 용</label></td>
				<td><textarea id="board_content" name="board_content" cols="55" rows="15" class="form-control"></textarea></td>
			</tr>
			<tr>
				<td class="td_left"><label for="board_file"> 파일 첨부 </label></td>
				<td class="td_right"><input name="board_file" type="file" id="board_file" class="btn btn-default"></td>
			</tr>
			<tr>
				<td class="td_left"></td>
				<td class="td_right"> <input type="submit" value="등록" class="btn btn-default"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="다시쓰기" class="btn btn-default"></td>
			</tr>
		</table>
		
	</form>
</div>
</body>
</html>