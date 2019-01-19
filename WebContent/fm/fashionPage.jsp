<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 메인페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
 <link rel="stylesheet" href="../fm/style.css" type="text/css">
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script type="text/javascript" src="../fm/script.js"></script>
 <style>
 	.mainImage{
 		position:relative;
 		width: 100%;
 		height: 100%; 
 	}
 	.block{
 		position: absolute;
 		background-color: black;
 		opacity: 0.3;
 		top: 0px;
 		left: 0px;
 		z-index: 3;
 		width: 100%;
 		height: 100%;
 	}
 	.faImage{
 		width: 100%;
 		height: 100%;
 		position: absolute;
 		top: 0px;
 		left: 0px;
 		z-index: 2;
 	}
 	.fb_text{
 		position: absolute;
 		top: 35%;
 		left:32%;
 		color: white;
 		z-index: 4;
 		font-size: 60pt;
 	}
 	.fb_smallText{
 		position: absolute;
 		top: 60%;
 		left:36%;
 		color: white;
 		z-index: 4;
 		font-size: 13pt;
 	}
 	.goodsList{
 		background-color: pink;
 		width: 100%;
 		height: 100%;
 	}
 </style>
</head>
<body>
	<%@include file="../fm/menu.jsp"%>
	<div class="mainImage">
		<p class="fb_text">fashion & beauty</p>
		<p class="fb_smallText">
			패션은 따라 할 수 있지만 , 그 안에 담긴 추억은 흉내낼 수 없다.<br>
			가장 가까이 있던 추억마저 파는 플리마켓 fashion & beauty 카테고리
		</p>
		<div class="block"></div>
		<img alt="패션메인" src="../images/feshion.png" class="faImage">
	</div>
	<div class="goodsList">
		
	</div>
	<%@include file="../fm/footer.jsp"%>
</body>
</html>