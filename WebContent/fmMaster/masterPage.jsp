<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>

</head>
<body>
  관리자페이지 입니다.<br>
<input type="hidden" id="sign" value="${sign }">

<script>
 	$(document).ready(function(){
 		
 		if($("#sign").val()=="")
 			location.href="master_data.do";
 			
 		
 		$("#mem_div").hide();
 		$("#flea_div").hide();
 		$("#store_div").hide();
 		$("#graph").show();
 		
 		$("#total_graph").show();
 		$("#flea_graph").hide();
 		$("#store_graph").hide();
 		
		$("#member").click(function(){
			$("#mem_div").show();
			$("#flea_div").hide();
			$("#store_div").hide();
			$("#graph").hide();
			
			$.ajax({
				type:"post",
				url:"mem_manage.do",
				success:function(data){
					var data = JSON.parse(data);
					var htmlStr='';
					htmlStr+="<table border=1>";
					htmlStr +="<tr><td>아이디</td><td>이름</td><td>이메일</td><td>주소</td><td>수익</td><td>순위</td><td>판매글 갯수</td></tr>"
					for(var i=0;i<data.length;i++){
						htmlStr+="<tr>";
						htmlStr+="<td>"+data[i].userid+"</td>";
						htmlStr+="<td>"+data[i].name+"</td>";
						htmlStr+="<td>"+data[i].email+"</td>";
						htmlStr+="<td>"+data[i].addr+"</td>";
						htmlStr+="<td>"+data[i].income+"</td>";
						htmlStr+="<td>"+data[i].rank+"</td>";
						htmlStr+="<td>"+data[i].sellcount+"</td>";
						htmlStr+="</tr>";
					}
					htmlStr+="</table>";
					$("#result").html(htmlStr);
					
				},
				error:function(e){
					
				},
			});
		});
		$("#fleamarket").click(function(){
			$("#mem_div").hide();
			$("#flea_div").show();
			$("#store_div").hide();
			$("#graph").hide();
			
			$.ajax({
				type:"post",
				url:"flea_manage.do",
				success:function(data){
					var data = JSON.parse(data);
					var htmlStr='';
					htmlStr+="<table border=1>";
					htmlStr +="<tr><td>상품번호</td><td>카테고리ID</td><td>판매아이디</td><td>상품이름</td><td>가격</td></tr>"
					for(var i=0;i<data.length;i++){
						htmlStr+="<tr>";
						htmlStr+="<td>"+data[i].num+"</td>";
						htmlStr+="<td>"+data[i].category+"</td>";
						htmlStr+="<td>"+data[i].userid+"</td>";
						htmlStr+="<td>"+data[i].title+"</td>";
						htmlStr+="<td>"+data[i].price+"</td>";
						htmlStr+="</tr>";
					}
					htmlStr+="</table>";
					
					$("#result").html(htmlStr);
					
				},
				error:function(e){
					
				},
			});
		});
		$("#store").click(function(){
			$("#mem_div").hide();
			$("#flea_div").hide();
			$("#store_div").show();
			$("#graph").hide();
			$.ajax({
				type:"post",
				url:"store_manage.do",
				success:function(data){
					var data = JSON.parse(data);
					var htmlStr='';
					htmlStr+="<table border=1>";
					htmlStr +="<tr><td>상품번호</td><td>카테고리ID</td><td>판매아이디</td><td>상품이름</td><td>가격</td></tr>"
					for(var i=0;i<data.length;i++){
						htmlStr+="<tr>";
						htmlStr+="<td>"+data[i].num+"</td>";
						htmlStr+="<td>"+data[i].category+"</td>";
						htmlStr+="<td>"+data[i].userid+"</td>";
						htmlStr+="<td>"+data[i].title+"</td>";
						htmlStr+="<td>"+data[i].price+"</td>";
						htmlStr+="</tr>";
					}
					htmlStr+="</table>";
					
					$("#result").html(htmlStr);
					
				},
				error:function(e){
					
				},
			});
		});
		
		$("#back").click(function(){
			location.href="../fm/main.jsp";
		})
		
		$("#member_delete_bt").click(function(){
			if($("#id").val()==""){
				alert("아이디를입력하세요");
				return false;
			}
			$.ajax({
				type:"post",
				url:"memberDelete.do?id="+$("#id").val(),
				success:function(data){
					if(data.trim()=="ok"){
						alert("삭제성공");
						$("#member").click();
						$("#id").val("");
					}
					else{
						alert("아이디를 다시확인해보세요");
					}
					
				},
				error:function(e){
					
				}
			});
		});
		$("#flea_delete_bt").click(function(){
			if($("#goods_num").val()==""){
				alert("번호를 입력하세요");
				return false;
			}
			$.ajax({
				type:"post",
				url:"goods_delete.do?goods_num="+$("#goods_num").val(),
				success:function(data){
					if(data.trim()=="ok"){
						alert("삭제성공");
						$("#fleamarket").click();
						$("#goods_num").val("");
						
					}
					else{
						alert("상품번호를 다시확인해보세요");
					}
					
				},
				error:function(e){
					
				}
			});
		});
		$("#store_delete_bt").click(function(){
			if($("#store_num").val()==""){
				alert("번호를 입력하세요");
				return false;
			}
			$.ajax({
				type:"post",
				url:"store_delete.do?store_num="+$("#store_num").val(),
				success:function(data){
					if(data.trim()=="ok"){
						alert("삭제성공");
						$("#store").click();
						$("#store_num").val("");
						
					}
					else{
						alert("상품번호를 다시확인해보세요");
					}
					
				},
				error:function(e){
					
				}
			});
		});
		$("#total_graph_bt").click(function(){
			$("#total_graph").show();
			$("#flea_graph").hide();
			$("#store_graph").hide();
		})
		$("#flea_graph_bt").click(function(){
			$("#total_graph").hide();
			$("#flea_graph").show();
			$("#store_graph").hide();
		})
		$("#store_graph_bt").click(function(){
			$("#total_graph").hide();
			$("#flea_graph").hide();
			$("#store_graph").show();
		})
		
	}); 
	
	

</script>

 
 <input type="button" value="관리자페이지메인"  onclick="location.href='masterPage.jsp'"  >
 <input type="button" value="회원관리" id="member" >
 <input type="button" value="플리마켓관리" id="fleamarket">
 <input type="button" value="스토어관리" id="store">
 <input type="button" value="돌아가기" id="back">
 
 <div id="result">
 

 </div>
 
<div id="graph" align ="left">
<!--   ㅎㅎ 요기에  회원 총 인원 / 플리마켓 전체글 갯수  / 스토어 전체 글갯수 / 회원들이 장바구니에 담은갯수 = 막대그래프로 표현 
  		<br> 플리마켓 카테고리별 글갯수 비율로 원 그래프 표현/ 스토어도 동일 -->
 	

<div id="total_graph" style="width: 800px; height:300px"></div>
<div id="flea_graph" style="height: 250px; width: 400px; overflow:hidden"></div>
<div id="store_graph" style="height: 250px; width: 400px; overflow:hidden"></div>

<input type="button" value="홈페이지  현황" id="total_graph_bt">
<input type="button" value="FleaMarket 게시글 현황" id="flea_graph_bt">
<input type="button" value="Store 게시글 현황" id="store_graph_bt">
</div>
 
  <div id="mem_div" >
 삭제하실 ID를 정확하게 입력하세요 <input type="text" id="id"> <input type="button" value="삭제하기" id="member_delete_bt">
 </div>
 
 <div id="flea_div">
삭제하실 플리마켓 상품번호를 정확하게 입력하세요 <input type="text" id="goods_num"> <input type="button" value="삭제하기" id="flea_delete_bt">
 </div>
 
 <div id="store_div">
삭제하실 스토어 상품번호를 정확하게 입력하세요 <input type="text" id="store_num"> <input type="button" value="삭제하기" id="store_delete_bt">
 </div>
 
 
 <input type="hidden" id="mem_total" value="${mem_total }" >
 <input type="hidden" id="flea_total" value="${flea_total }" >
 <input type="hidden" id="store_total" value="${store_total }" >
 <input type="hidden" id="cart_total" value="${cart_total }" >
 <input type="hidden" id="qna_total" value="${qna_total }" >
 
 <c:forEach items="${fleaArr }" var="list">
 	<input type="hidden" id="${list.userid }" value="${list.num }">
 </c:forEach>
 
 <c:forEach items="${storeArr }" var="list">
 <input type="hidden" id="${list.userid }" value="${list.num }">
 </c:forEach>
<%--  <input type="hidden" id="mem_total" value="${mem_total }" >
 <input type="hidden" id="mem_total" value="${mem_total }" >
 <input type="hidden" id="mem_total" value="${mem_total }" >
 --%>
  
 <script>
/*  function graph_data_load(){
	 location.herf="master_data.do";
 } */
 Morris.Bar({
		element: 'total_graph',     // bar를 넣을 div의 아이디를 적어주세요.
		data: [                                // bar를 넣을 x축과 y축의 데이터를 적어줍니다.
		{ y: '총 회원  ', a:$("#mem_total").val() },
		{ y: 'FleaMarket 판매글', a:$("#flea_total").val() },
		{ y: 'Store 판매 글', a:$("#store_total").val() },
		{ y: '장바구니 등록 글', a:$("#cart_total").val()},
		{ y: 'QnA 등록 글', a:$("#qna_total").val()}
		],
		xkey: 'y',                          //x축에 들어갈 이름을 넣은 data이름을 넣어줍니다
		ykeys: ['a'],                //y축에 들어갈 이름을 넣은 data이름을 넣어줍니다
		labels: ['총 수'] // 라벨칸에 나타날 이름을 적어줍니다.
	});
 
 Morris.Donut({
	 element: 'flea_graph',     //그래프가 들어갈 위치의 ID를 적어주세요
	 data: [                                     //그래프에 들어갈 data를 적어주세요
	 {label: 'Fashion', value:$("#fashion").val() },
	 {label: 'Hobby', value: 40 },
	 {label: 'Living', value: 15 },
	 {label: 'Food', value: 10 },
	 {label: 'Pet', value:10}
	 ],
	 colors: ["#30a1ec", "#76bdee", "#387bb4", "#c4dafe"], //그래프 color를 지정해줍니다.
	 formatter: function (y) { return y + "%" }  //y값 뒤에 %를 추가해줍니다.
	 });
 
 Morris.Donut({
	 element: 'store_graph',     //그래프가 들어갈 위치의 ID를 적어주세요
	 data: [                                     //그래프에 들어갈 data를 적어주세요
	 {label: 'Foraml Dress', value: 25 },
	 {label: 'Aesop', value: 40 },
	 {label: 'Green Shop', value: 25 },
	 {label: 'P.P Flower', value: 10 }
	 ],
	 colors: ["#30a1ec", "#76bdee", "#387bb4", "#c4dafe"], //그래프 color를 지정해줍니다.
	 formatter: function (y) { return y + "%" }  //y값 뒤에 %를 추가해줍니다.
	 });
 </script>

</body>
</html>