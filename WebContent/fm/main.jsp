<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- 메인페이지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
a:visited{
	text-decoration: none;
}
body,html{
	font-family: "Nanum Gothic", sans-serif;
	
}
#btnImage{
	align-items: center;
}
#btnImage table{
	margin: auto;
}
figure.snip1384 {
  font-family: 'Raleway', Arial, sans-serif;
  position: relative;
  overflow: hidden;
  margin: 10px;
  max-width: 564px;
  width: 100%;
  color: #ffffff;
  text-align: left;
  font-size: 16px;
  background-color: #000000;
}
figure.snip1384 * {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
}
figure.snip1384 img {
  max-width: 100%;
  backface-visibility: hidden;
  vertical-align: top;
}
figure.snip1384:after,
figure.snip1384 figcaption {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
figure.snip1384:after {
  content: '';
  background-color: rgba(0, 0, 0, 0.65);
  -webkit-transition: all 0.35s ease;
  transition: all 0.35s ease;
  opacity: 0;
}
figure.snip1384 figcaption {
  z-index: 1;
  padding: 40px;
}
figure.snip1384 h3,
figure.snip1384 .links {
  width: 100%;
  margin: 5px 0;
  padding: 0;
}
figure.snip1384 h3 {
  line-height: 1.1em;
  font-weight: 700;
  font-size: 1.4em;
  text-transform: uppercase;
  opacity: 0;
}
figure.snip1384 p {
  font-size: 0.8em;
  font-weight: 300;
  letter-spacing: 1px;
  opacity: 0;
  top: 50%;
  -webkit-transform: translateY(40px);
  transform: translateY(40px);
}
figure.snip1384 i {
  position: absolute;
  bottom: 10px;
  right: 10px;
  padding: 20px 25px;
  font-size: 34px;
  opacity: 0;
  -webkit-transform: translateX(-10px);
  transform: translateX(-10px);
}
figure.snip1384 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
  z-index: 1;
}
figure.snip1384:hover img,
figure.snip1384.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}
figure.snip1384:hover:after,
figure.snip1384.hover:after {
  opacity: 1;
  position: absolute;
  top: 10px;
  bottom: 10px;
  left: 10px;
  right: 10px;
}
figure.snip1384:hover h3,
figure.snip1384.hover h3,
figure.snip1384:hover p,
figure.snip1384.hover p,
figure.snip1384:hover i,
figure.snip1384.hover i {
  -webkit-transform: translate(0px, 0px);
  transform: translate(0px, 0px);
  opacity: 1;
}
body{
	width: 100%;
	text-align: center;
	background-image: url("../images/paper.jpg");
}
#logo{
	padding-top: 150px;
	align-content: center;
	padding-bottom: 130px;
}
#logo img{
	width: 491px;
	height: 79px;
}
#mainimage{
	width: 100%;
}
.mainFirst{
	margin-top: 100px;
	background-color: black;
	position: relative;
	margin-bottom: 50px;
}
.mainFirst img{
	opacity: 0.4;
}
.mainFirst p{
	position: absolute;
	bottom: 20px;
	left: 50px;
	font-size: 30pt;
	color: white;
	font-family: "Nanum Gothic", sans-serif;
}
.section{
	margin-bottom: 80px;
}
.mainSecond{
	width: 100%;
	height:2000px;
	position: relative;
}
.mainSecond .text1{
	text-align: left;
	position: absolute;
	top: 200px;
	left: 210px;
	font-family: "Nanum Gothic", sans-serif;
}
.mainSecond .text2{
	text-align: left;
	position: absolute;
	bottom: 600px;
	right: 320px;
	font-family: "Nanum Gothic", sans-serif;
}
.mainSecond .squ1{
	position: absolute;
	top: 0px;
	right: 0px;
	width:1000px;
	height:100%;
	background-color: gray;
	opacity:0.2;
	z-index: 40;
}
.mainSecond .squ2{
	position: absolute;
	bottom: 400px;
	left: 0px;
	width:600px;
	height:900px;
	background-color: olive;
	opacity:0.2;
	z-index: 30;
}
.pic1{
	position: absolute;
	top: 500px;
	right: 100px;
	z-index: 500;
}
.pic3{
	position: absolute;
	bottom: 250px;
	left: 150px;
	z-index: 450;
}
.footer{
	text-align: center;
	background-color: black;
	opacity: 0.3;
	height: 100px;
	position: relative;
}
.footer .fText{
	position: absolute;
	bottom: 42px;
	left: 40%;
}
.footer .fText p{
	color: white;
}
</style>
</head>
<body>
<div class="section">
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
					  <a href="shop.jsp"></a>
					</figure>
				</td>
				<td>
					<figure class="snip1384"><img src="../images/store.png" alt="store" width="564px" height="333.33px" />
					  <figcaption>
					    <h3>스토어 바로가기</h3>
					    <p>전주영이 만들고 불법적으로 파는 스토어입니다</p><i class="ion-ios-arrow-right"></i>
					  </figcaption>
					  <a href="#"></a>
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
			<h3>플리마켓은 하지마세요 귀찮습니다</h3>
			<p>진짜 귀찮게 왜 플리마켓에 오세요?</p>
			<p>아무 쓰잘데기 없는 것만 팝니다</p>
			<p>핵쓰레기의 천국입니다</p>
			<p>이 사이트는 중개 수수료를 존나 떼먹습니다</p>
			<p>양심이 있으면 사지마세요</p>
			<p>삽되는거임 한번에</p>
			<p>오케이?</p>
		</div>
	</div>
</div>
<div class="footer">
	<div class="fText"><p>since 2019 부산it교육센터 김원빈휴가썼다 나도 쓴다</p></div> 	
</div>
</body>
</html>