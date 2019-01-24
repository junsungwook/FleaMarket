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
</head>
<body>
<script>
	$(document).ready(function(){
		if($("#sign").val()!= "" )
			location.href="../fm/main.jsp";
	})
</script>

<div class="section">
<c:if test="${sessionScope.id =='master' }">
	<input type="button" value="관리자모드" onClick="location.href='../fmMaster/masterPage.jsp'">
</c:if>
<div class="login" align="right" >
<input type="hidden" id="sign" value="${sign }">
<input type="hidden" id="id" value="${id }">
	
	  <c:if test="${id==null}">
	  
	   		<a href="../fmMember/naverlogin.jsp"><strong>로그인   | </strong></a><a href="../fmMember/joinForm.jsp"><strong>회원가입</strong></a>
	      	</c:if>
	   	<c:if test = "${id!=null }">
	   	  	${id}님 환영합니다 ♥<a href="logout.do"><strong>로그아웃</strong></a>
    	</c:if>

	</div> 
	<div id="logo">
		<img alt="로고그림" src="../images/logo4.png">
	</div>
	<div id="btnImage">
		<table>
			<tr>
				<td>
					<figure class="snip1384">
					  <img src="../images/market.png" alt="market" width="564px" height="333.33px"/>
					  <figcaption>
					    <h3>플리마켓 바로가기</h3>
					    <p>사용자가 직접 판매하고 구매하는 온라인 플리마켓</p><i class="ion-ios-arrow-right"></i>
					  </figcaption>
					  <a href="../fm/shop.jsp"></a>
					</figure>
				</td>
				<td>
					<figure class="snip1384"><img src="../images/store.png" alt="store" width="564px" height="333.33px" />
					  <figcaption>
					    <h3>스토어 바로가기</h3>
					    <p>전주영이 만들고 불법적으로 파는 스토어입니다</p><i class="ion-ios-arrow-right"></i>
					  </figcaption>
					  <a href="../fm/store.jsp"></a>
					</figure>
				</td>
			</tr>
		</table>
		
	</div>
</div>
<div class="section">
	<div class="mainFirst">
		<img src="../images/mainimage3.png" width="100%" height="auto"/>
		<p>What is fleaMarket?</p>
	</div>
	<div class="mainSecond">
		<div class="squ1"></div>
		<div class="squ2"></div>
		<div class="pic1">
			<img src="../images/pic1.jpg" width="800px" height="auto"/>
		</div>
		<div class="pic3">
			<img src="../images/pic3.jpg" width="600px" height="auto"/>
		</div>
		<div class="text1">
			<h3>플리마켓은 하지마세요 귀찮습니다</h3>
			<p>진짜 귀찮게 왜 플리마켓에 오세요?</p>
			<p>아무 쓰잘데기 없는 것만 팝니다</p>
			<p>핵쓰레기의 천국입니다</p>
			<p>이 사이트는 중개 수수료를 존나 떼먹습니다</p>
			<p>양심이 있으면 사지마세요</p>
			<p>삽되는거임 한번에</p>
			<p>오케이?</p>
		</div>
		<div class="text2">
			<h3>하지 말라는데 굳이 이 사이트에 왜 옵니까</h3>
			<p>말을 왜 이렇게 안듣죠?</p>
			<p>역시 중고나라 사기 당하는 사람 답네요</p>
			<p>여기도 다를 바가 없습니다</p>
			<p>수수료료 한 달에 몇 백만원을 뺏어갑니다</p>
			<p>개꿀아닙니까</p>
			<p>기부 같은 건 당연히 안합니다</p>
			<p>오케이?</p>
		</div>
	</div>
</div>
	<%@include file="../fm/footer.jsp"%>
</body>
</html>