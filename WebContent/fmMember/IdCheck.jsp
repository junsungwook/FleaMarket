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
<link rel="stylesheet" href="../fm/style.css" type="text/css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="../fm/script.js"></script>
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="animate.css">
<!-- Custom Stylesheet -->
<link rel="stylesheet" href="login.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
</head>
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
function sendIt(){
   $.ajax({
      type:"post",
      url:"idcheck.do?userid="+$("#userid").val(),
      success: function(data){
         if(data.trim()=="ok"){
            alert("쓸수있는 아이디입니다.");
            $(opener.document).find("#id").val($("#userid").val());
            $(opener.document).find("#userid").val($("#userid").val());
            self.close();
            }else{alert("쓸수없는 아이디입니다!");}
      },
      error:function(e){
         alert(e);
      },
   });
}
</script>
<body>
<br>
<font size="5px" color="#0B3861"><strong>아이디중복확인</strong></font>
<br>
<hr>
<div class="col-xs-6">
	<input type="text" id="userid">
</div>
<input type ="button"onclick="sendIt()" value="중복확인"  class="btn btn-default">

</body>
</html>