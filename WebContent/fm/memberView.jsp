<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${naver ==null}">// 전화번호가져오고, income, rank, 이름 가져오자 
	일반회원이지롱
	
	회원정보
	<table border=1>
	<tr>
		<td>이름</td>
		<td>전화번호</td>
		<td>등급</td>
		<td>총 : 판매금액</td>
	</tr>
	<tr>
		<td>${member_info.name }</td>
		<td>${member_info.phone }</td>
		<td>${member_info.rank }</td>
		<td>${member_info.income }</td>
	</tr>
	</table>
	
</c:if>
<c:if test="${naver !=null }">
	네이버회원지롱 
	회원정보 조심하세요 네이버회원은 정보가 많이없어요
	<table border=1>
	<tr>
		<td>이름</td>
		<td>email</td>
	</tr>
	<tr>
		<td>${naver_name}</td>
		<td>${naver_email}</td>

	</tr>
	</table>
	
</c:if>
판매중인 상품
	<table border=1>
	<tr>
		<td>판매상품</td>
		<td>판매가격</td>
	</tr>
	<c:forEach items="${sell_info }" var="list">
		<tr>
			<td>${list.title }</td>
			<td>${list.price }</td>
		</tr>
	</c:forEach>
	</table>
	
	<input type="button" value="메세지보내기" id="msg_bt">


</body>
</html>