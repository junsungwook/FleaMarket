<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script>
$(document).ready(function(){
    var height = window.innerHeight,
  x= 0, y= height/2,
    curveX = 10,
    curveY = 0,
    targetX = 0,
    xitteration = 0,
    yitteration = 0,
    menuExpanded = false;
    
    blob = $('#blob'),
    blobPath = $('#blob-path'),

    hamburger = $('.hamburger');

    $(this).on('mousemove', function(e){
        x = e.pageX;
        
        y = e.pageY;
    });

    $('.hamburger, .menu-inner').on('mouseenter', function(){
        $(this).parent().addClass('expanded');
        menuExpanded = true;
    });

    $('.menu-inner').on('mouseleave', function(){
        menuExpanded = false;
        $(this).parent().removeClass('expanded');
    });

    function easeOutExpo(currentIteration, startValue, changeInValue, totalIterations) {
        return changeInValue * (-Math.pow(2, -10 * currentIteration / totalIterations) + 1) + startValue;
    }

    var hoverZone = 150;
    var expandAmount = 20;
    
    function svgCurve() {
        if ((curveX > x-1) && (curveX < x+1)) {
            xitteration = 0;
        } else {
            if (menuExpanded) {
                targetX = 0;
            } else {
                xitteration = 0;
                if (x > hoverZone) {
                    targetX = 0;
                } else {
                    targetX = -(((60+expandAmount)/100)*(x-hoverZone));
                }           
            }
            xitteration++;
        }

        if ((curveY > y-1) && (curveY < y+1)) {
            yitteration = 0;
        } else {
            yitteration = 0;
            yitteration++;  
        }

        curveX = easeOutExpo(xitteration, curveX, targetX-curveX, 100);
        curveY = easeOutExpo(yitteration, curveY, y-curveY, 100);

        var anchorDistance = 200;
        var curviness = anchorDistance - 40;

        var newCurve2 = "M60,"+height+"H0V0h60v"+(curveY-anchorDistance)+"c0,"+curviness+","+curveX+","+curviness+","+curveX+","+anchorDistance+"S60,"+(curveY)+",60,"+(curveY+(anchorDistance*2))+"V"+height+"z";

        blobPath.attr('d', newCurve2);

        blob.width(curveX+60);

        hamburger.css('transform', 'translate('+curveX+'px, '+curveY+'px)');
    
    $('h2').css('transform', 'translateY('+curveY+'px)');
        window.requestAnimationFrame(svgCurve);
    }

    window.requestAnimationFrame(svgCurve);

});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
<style>
body, html {
      margin: 0;
      padding: 0;
      width: 100%;
      height: 100%;
      background-image:url("../images/paper.jpg");
      font-family: "Nanum Gothic", sans-serif;
  }

  #menu {
      height: 100%;
      position: fixed;
      background-color: #977966;
      width: 286.1px;
      transition: 1000ms all cubic-bezier(0.19, 1, 0.22, 1);
      transform: translateX(-100%);
      left: 60px;
      z-index: 3;
  }

  #menu.expanded {
      transform: translateX(0%);
      left: 0px;
  }

  .menu-inner {
      width: 100%;
      height: 100%;
      position: relative;
      
  }

  #blob {
      top: 0;
      z-index: -1;
      right: 60px;
      transform: translateX(100%);
      height: 100%;
      position: absolute;
  }

  #blob-path {
      height: 100%;
      fill:  #977966;
  }

  .hamburger {
      right: 20px;
      position: absolute;
      width: 20px;
      height: 20px;
      margin-top: -10px;  
  }
	/* 스위치부분 */
  .hamburger .line {
      width: 100%;
      height: 4px;
      background-color: #fff;
      position: absolute;
  }

  .hamburger .line:nth-child(2) {
      top: 50%;
      margin-top: -2px;
  }

  .hamburger .line:nth-child(3) {
      bottom: 0;
  }

  h1 {
      position: fixed;
      right: 0;
      margin: 0;
  }

  ul {
      padding: 0;
      list-style: none;
      width: 80%;
      margin-left: 10%;
      position: absolute;
      top: 10px;
  }

ul li {
    color: #aaa;
    font-family: "Nanum Gothic", sans-serif;
    padding: 20px 0;
}

h2 {
	position: absolute;
	left: 50%;
	color: #aaa;
	margin: 0;
	font-size: 16px;
	
	font-weight: 100;
}
a:visited{
	text-decoration: none;
}
a:link {
	text-decoration: none;
}
.menu-inner a{

  color:#fff;
  position:relative;
  height:60px;
  font-size:1em;
  padding:0.5em 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
.menu-inner a:hover{
  color:#fff;
}
/* 호버 했을 때 위아래로 뜨는 바 */
.menu-inner a:before,.menu-inner a:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #fff;
  transition:400ms ease all;
}
.menu-inner a:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
.menu-inner a:hover:before,.menu-inner a:hover:after{
  width:100%;
  transition:800ms ease all;
}
.cat{
	z-index: 2;
	width: 100%;
	height:1200px;
	position: relative;
}
.cat .squ1{
	position: absolute;
	top: 0px;
	right: 0px;
	width:1000px;
	height:100%;
	background-color: gray;
	opacity:0.2;
	z-index: 40;
}
.cat .squ2{
	position: absolute;
	bottom: 400px;
	left: 0px;
	width:600px;
	height:900px;
	background-color: olive;
	opacity:0.2;
	z-index: 30;
}
.cat .squ3{
	position: absolute;
	top: 40px;
	left: 300px;
	width:400px;
	height:750px;
	background-color: white;
	opacity:0.3;
	z-index: 50;
}

/* 마우스오버 효과 css */
.snip1445 {
  position: relative;
  overflow: hidden;
  margin: 10px;
  min-width: 230px;
  max-width: 550px;
  width: 100%;
  color: #ffffff;
  text-align: center;
  font-size: 16px;
  background-color: #000000;
}
.snip1445 *,
.snip1445 *:before,
.snip1445 *:after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  -webkit-transition: all 0.55s ease;
  transition: all 0.55s ease;
}
.snip1445 img {
  max-width: 100%;
  backface-visibility: hidden;
  vertical-align: top;
}
.snip1445 figcaption {
  position: absolute;
  bottom: 25px;
  right: 25px;
  padding: 5px 10px 10px;
}
.snip1445 figcaption:before,
.snip1445 figcaption:after {
  height: 2px;
  width: 400px;
  position: absolute;
  content: '';
  background-color: #ffffff;
}
.snip1445 figcaption:before {
  top: 0;
  left: 0;
  -webkit-transform: translateX(100%);
  transform: translateX(100%);
}
.snip1445 figcaption:after {
  bottom: 0;
  right: 0;
  -webkit-transform: translateX(-100%);
  transform: translateX(-100%);
}
.snip1445 figcaption div:before,
.snip1445 figcaption div:after {
  width: 2px;
  height: 300px;
  position: absolute;
  content: '';
  background-color: #ffffff;
}
.snip1445 figcaption div:before {
  top: 0;
  left: 0;
  -webkit-transform: translateY(100%);
  transform: translateY(100%);
}
.snip1445 figcaption div:after {
  bottom: 0;
  right: 0;
  -webkit-transform: translateY(-100%);
  transform: translateY(-100%);
}
.snip1445 h2,
.snip1445 h4 {
  margin: 0;
  text-transform: uppercase;
}
.snip1445 h2 {
  font-weight: 400;
}
.snip1445 h4 {
  display: block;
  font-weight: 700;
  background-color: #ffffff;
  padding: 5px 10px;
  color: #000000;
}
.snip1445 a {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.snip1445:hover img,
.snip1445.hover img {
  zoom: 1;
  filter: alpha(opacity=50);
  -webkit-opacity: 0.5;
  opacity: 0.5;
}
.snip1445:hover figcaption:before,
.snip1445.hover figcaption:before,
.snip1445:hover figcaption:after,
.snip1445.hover figcaption:after,
.snip1445:hover figcaption div:before,
.snip1445.hover figcaption div:before,
.snip1445:hover figcaption div:after,
.snip1445.hover figcaption div:after {
  -webkit-transform: translate(0, 0);
  transform: translate(0, 0);
}
.snip1445:hover figcaption:before,
.snip1445.hover figcaption:before,
.snip1445:hover figcaption:after,
.snip1445.hover figcaption:after {
  -webkit-transition-delay: 0.15s;
  transition-delay: 0.15s;
}
.cate1{
	position: absolute;
	top: 100px;
	left: 370px;
	z-index: 11111;
}
.cate2{
	position: absolute;
	top: 300px;
	left: 970px;
	z-index: 11111;
}
.cate3{
	position: absolute;
	top: 500px;
	left: 370px;
	z-index: 11111;
}
.cate4{
	position: absolute;
	top: 700px;
	left: 970px;
	z-index: 11111;
}
.cate5{
	position: absolute;
	top: 800px;
	left: 370px;
	z-index: 11111;
}

</style>
</head>
<body>
	<div id="menu">
        <div class="hamburger">
            <div class="line"></div>
            <div class="line"></div>
            <div class="line"></div>
        </div>
        <div class="menu-inner">  
            <ul>
                <li><a href="shop.jsp">플리마켓</a></li>
                <li><a href="#">스토어</a></li>
                <li><a href="#">커뮤니티</a></li>
                <li><a href="#">마이페이지</a></li>
                <li><a href="main.jsp">메인화면</a></li>
            </ul>
        </div>
        <svg version="1.1" id="blob" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
            <path id="blob-path" d="M60,500H0V0h60c0,0,20,172,20,250S60,900,60,500z"/>
        </svg>
    </div>
    <div class="cat">
    	<div class="squ1"></div>
		<div class="squ2"></div>
		<div class="squ3"></div>
		<figure class="snip1445 cate1">
		  <img src="../images/feshion.png" alt="fashion" />
		  <figcaption>
		    <div>
		      <h4>fashion & beauty</h4>
		    </div>
		  </figcaption>
		  <a href="#"></a>
		</figure>
		<figure class="snip1445 cate2">
		  <img src="../images/living.png" alt="living" />
		  <figcaption>
		    <div>
		      <h4>living</h4>
		    </div>
		  </figcaption>
		  <a href="#"></a>
		</figure>
		<figure class="snip1445 cate3">
		  <img src="../images/elec.png" alt="elec" />
		  <figcaption>
		    <div>
		      <h4>hobby</h4>
		    </div>
		  </figcaption>
		  <a href="#"></a>
		</figure>
		<figure class="snip1445 cate4">
		  <img src="../images/food.png" alt="food" />
		  <figcaption>
		    <div>
		      <h4>food</h4>
		    </div>
		  </figcaption>
		  <a href="#"></a>
		</figure>
		<figure class="snip1445 cate5">
		  <img src="../images/pet.png" alt="pet" />
		  <figcaption>
		    <div>
		      <h4>pet</h4>
		    </div>
		  </figcaption>
		  <a href="#"></a>
		</figure>
    </div>
</body>
</html>