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
      width: 300px;
      transition: 1000ms all cubic-bezier(0.19, 1, 0.22, 1);
      transform: translateX(-100%);
      left: 60px;
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
      background-color: #aaa;
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
<h2> hover close to the menu </h2>
</body>
</html>