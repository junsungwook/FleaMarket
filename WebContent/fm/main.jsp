<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>

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
}
.section{
	margin-bottom: 80px;
}
</style>
<script>
$(document).ready(function(){
	$(".hover").mouseleave(
		function () {
			$(this).removeClass("hover");
		}
	);
	var win_h = $(window).height();
	$(".section").each(function(index){
		$(this).attr("data-index",win_h*index);
	});
	$(".section").on("mousewheel",function(e){
		var sectionPos = parseInt($(this).attr("data-index"));
		if(e.originalEvent.wheelDelta >= 0){
			$("html,body").stop().animate({scrollTop:sectionPos - win_h});
			return false;
		}else if(e.originalEvent.wheelDelta < 0){
			$("html,body").stop().animate({scrollTop:sectionPos + win_h});
			return false;
		}
	});
})
</script>
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
					  <a href="#"></a>
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
		
	</div>
</div>
</body>
</html>