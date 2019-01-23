<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지함</title>

</head>
<body>
<table border=1>
	<c:forEach items="${lists}" var="list">
			<tr>
				<td onclick ="window.open('msgView.do?userid=${list}','','top=300px, left=300px, height=450px, width=450px')"> ${list}님과의 쪽지
				</td>
			<tr>
</c:forEach>
</table>
</body>
</html>