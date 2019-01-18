<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
	 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
      <link rel="stylesheet" href="tabs.css">	
      <link rel="stylesheet" href="../fm/style.css" type="text/css">
     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../fm/script.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>

<% 
	request.setCharacterEncoding("utf-8");
	int num=0;
	int ref=1,re_seq=0,re_lev=0;

	if(request.getParameter("num")!=null){
			num=Integer.parseInt(request.getParameter("num"));
			ref = Integer.parseInt(request.getParameter("ref"));
			re_seq=Integer.parseInt(request.getParameter("re_seq"));
			re_lev=Integer.parseInt(request.getParameter("re_lev"));
	}
%>
<script>
	function textCount(obj,target){
		var len =obj.value.length;//입력한글자수
		if(200<len){//글쓴이:20 내용:70
			alert("글자수 초과!");
			return;
		}
		$("#"+target).text(len);//target영역에 글자 수 출력
	}
</script>
<style> 
body{
	padding : 30px;
	 background: #fff; 
	font-family: "Nanum Gothic", sans-serif;
	}
	#blueone {
	  border-collapse: collapse;
	}  
	#blueone th {
	  padding: 10px;
	  color: #29220A;
	  border-bottom: 3px solid #29220A;
	  text-align: left;
	
	}
	#blueone td {
	  color: #29220A;
	  padding: 10px;
	  border-bottom: 1px solid #ddd;
	
	}
	#blueone tr:hover td {
	  color: #DBA901;
	}
</style>
</head>

<body>

<table id="blueone">
<h3 align="left"><strong>쪽지 보내기</strong></h3>
	<tr>
		<th>보내는이:</th>
		<th>${sessionScope.id}</th>
	</tr>
	<tr>	
		<th>받을 사람 ID:</th>
		<th><input type="text" class ="form-control"></th>
	</tr>
	<tr>
		<td>내용:</td>
		<td><textarea maxlength="200"  cols="55" rows="15" class ="form-control" id="contents" name="contents" onkeyup="textCount(this,'contentcount')"></textarea>	
		*200글자 이내
		(<span id="contentcount" style="color:green;">0</span>)</td>
	</tr>
</table>
</body>
</html>