<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.security.SecureRandom" %>
<%@ page import="java.math.BigInteger" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
  <head>
    <title>네이버로그인</title> 
  </head>
  
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
	 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
   
      <link rel="stylesheet" href="../fm/style.css" type="text/css">
     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../fm/script.js"></script>
	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="animate.css">
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="login.css">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
  <body>
  <%
    String clientId = "n5xLTOVp7Saleq411Wya";//애플리케이션 클라이언트 아이디값";
    String redirectURI = URLEncoder.encode("http://localhost:8888/FleaMarket/fmMember/naver.do", "UTF-8");
    SecureRandom random = new SecureRandom();
    String state = new BigInteger(130, random).toString();
    String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
    apiURL += "&client_id=" + clientId;
    apiURL += "&redirect_uri=" + redirectURI;
    apiURL += "&state=" + state;
    session.setAttribute("state", state);
 %>
 
	<div class="container">
			<%@include file="../fm/menu.jsp"%>
		<%@include file="../fm/logo.jsp"%>
		<div class="login-box animated fadeInUp">
			<div class="box-header">
				<font size="6. 5em" color="#fff">로그인</font>
			</div>
			<label for="username">ID</label>
			<br/>
			<input type="text" id="username">
			<br/>
			<label for="password">PW</label>
			<br/>
			<input type="password" id="password">
			<br/>
			<button type="submit">확인</button>
			<br/>
			<a href="#"><p class="small">비밀번호/패스워드 찾기</p></a>
			<br>
			 <a href="<%=apiURL%>"><img height="50" src="http://static.nid.naver.com/oauth/small_g_in.PNG"></a>
		</div>
	</div>

  </body>
<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>


</html>

