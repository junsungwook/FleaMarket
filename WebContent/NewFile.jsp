<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>여기에 제목을 입력하십시오</title>
<script  src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<style>
body{
	width: 100%;
	text-align: center;
}
#logo{
	margin-top: 160px;
}
#btnDiv #btn1{
	margin-right: 140px;
	margin-left: -10px;
}
.page {
  width: 100vw;
  height: 100vh;
  display: flex;
  justify-content: center;
}


/* add default color for animation start  */


/* toggle this class */

.color-bg-start {
  background-color: salmon;
}


/* toggle class bg-animate-color */

.bg-animate-color {
  animation: random-bg .5s linear infinite;
}


/* add animation to bg color  */

@keyframes random-bg {
  from {
    filter: hue-rotate(0);
  }
  to {
    filter: hue-rotate(360deg);
  }
}

.fun-btn {
  /* change bg color to get different hues    */
  background-color: salmon;
  color: white;
  padding: 2em 3em;
  border: none;
  transition: all .3s ease;
  border-radius: 5px;
  letter-spacing: 2px;
  text-transform: uppercase;
  outline: none;
  align-self: center;
  cursor: pointer;
  font-weight: bold;
}

.fun-btn:hover {
  animation: random-bg .5s linear infinite, grow 1300ms ease infinite;
}

.start-fun {
  background-color: #fff !important;
  /* change color of button text when fun is started   */
  color: salmon !important;
}

/* pulsating effect on button */
@keyframes grow {
  0% {
    transform: scale(1);
  }
  14% {
    transform: scale(1.3);
  }
  28% {
    transform: scale(1);
  }
  42% {
    transform: scale(1.3);
  }
  70% {
    transform: scale(1);
  }
}
</style>
<script>
 $(document).ready(function(){
	 $('.fun-btn').on('click', function(event) {
		  $(this).toggleClass('start-fun');
		  var $page = $('.page');
		  $page.toggleClass('color-bg-start')
		    .toggleClass('bg-animate-color');


		  $(this).hasClass('start-fun') ?
		    $(this).text('stop the fun') :
		    $(this).text('start the fun');

		});
 })
 
</script>
</head>
<body>
<div id="logo">
	로고이미지 박힐 곳
</div>
<div class="page">

  <button class="fun-btn">press for fun</button>

</div>
</body>
</html>