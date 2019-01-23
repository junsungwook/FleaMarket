<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
 <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
 <link rel="stylesheet" href="../fm/style.css" type="text/css">
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
 <script type="text/javascript" src="../fm/script.js"></script>
 
 
<style>
	.viewbody{
		padding:30px;
		width: 65%;
		border: 2px dotted gray;
		margin: 0 auto;
		margin-top:100px;
	}
		.viewImg{
			width: 100%;
		}
			.viewImg img{
				width: 30%;
				height: auto;
			}
		.viewText{
			width: 100%;
		}
		.viewText .pricingContent{
			margin: 0 auto;
		}
	.pBtn{
		text-align: right;
	}
	.pricingContent ul{
	    list-style: none;
	    padding: 0;
	    margin-bottom: 0;
	}
	.pricingContent ul li{
	    border-bottom:1px solid #ededed;
	    color: #9999A5;
	    padding: 10px 0 ;
	}
	.pricingContent ul li:first-child {
	    border-top:1px solid #ededed;
	}
</style>
<title>여기에 제목을 입력하십시오</title>
</head>
<body>

<%@include file="menu.jsp"%>
<%@include file="logo.jsp"%>
<div class="viewbody">
	<div class="viewImg">
		<img alt="상품사진" src="../upload/${goods.mainpic}">
	</div>
	<div class="viewText">
		<div class="pricingContent">
	          <ul>
	              <li><b>제목 :</b> ${goods.title }</li>
	              <li><b>PRICE :</b> ${goods.price }</li>
	              <li><b>판매자 :</b><a href="memberView.do?id=${goods.userid }" onclick="window.open(this.href,'','width=500,height=500'); return false;"> ${goods.userid }</a></li>
	          </ul>
        </div>
        <div class="note">
        	<br><br>
        	<b>글 내용</b><br><br><br>
        	${goods.summernote }
        </div>
        <div class="pBtn">
        <c:if test="${sessionScope.id!=goods.userid and sessionScope.id !=null and cart ==null}" >
			<input type="button" class="btn btn-default" onclick="location.href='goodsCartin.do?num=${goods.num}&id=${sessionScope.id }'"  value="장바구니 담기">
		</c:if>
		</div>
		
	</div>
	<div class="pBtn">
		<c:if test="${sessionScope.id==goods.userid or sessionScope.id=='master'}">
		 <input type="button" class="btn btn-default" onclick="location.href='goodsUpdate.do?num=${goods.num}'" value="수정">
		 <input type="button" class="btn btn-default" onclick="location.href='goodsDelete.do?num=${goods.num}'" value="삭제">
		</c:if>
	</div>
</div>

<%@include file="footer.jsp"%> 
</body>
</html>