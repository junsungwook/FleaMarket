<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet"> 

<style>
HTML  CSS Result
EDIT ON
 html,body{
  height:100%;
  font-family: "Nanum Gothic", sans-serif;
}
body{
  text-align:center;
  padding:50px;
}
body:before{
  content:'';
  height:100%;
  display:inline-block;
  vertical-align:middle;
}
h2{
background-color: 
	}
hr{
	border: 0;
    height: 3px;
    background: #674947;
	}
button{
  background:#9D6962;
  color:#fff;
  margin:50px;;
  border:none;
  position:relative;
  height:170px;
  font-size:1.6em;
  padding:0 2em;
  cursor:pointer;
  transition:800ms ease all;
  outline:none;
}
button:hover{
  background:#fff;
  color:#9D6962;
}
button:before,button:after{
  content:'';
  position:absolute;
  top:0;
  right:0;
  height:2px;
  width:0;
  background: #9D6962;
  transition:400ms ease all;
}
button:after{
  right:inherit;
  top:inherit;
  left:0;
  bottom:0;
}
button:hover:before,button:hover:after{
  width:100%;
  transition:800ms ease all;
}
.pricingTable{
	margin-top:50px;
    text-align: center;
    border: 1px solid #dbdbdb;
    position: relative;
    overflow: hidden;
}
.pricingTable .pricingTable-header h3{
    color: #9999a5;
    font-size: 18px;
    text-transform: uppercase;
}
.pricingTable .price-value {
    background: #fafafa;
    color: #666;
    font-weight: 900;
    padding: 15px 0;
}
.pricingTable .price-value span {
    color: #666;
    display: inline-block;
    font-size: 70px;
    font-weight: normal;
    line-height: normal;
}
.pricingTable .price-value small{
    font-size: 20px;
    position: relative;
    top: -30px;
    left:0;
}
.pricingTable .price-value .subtitle{
    color: #82919F;
    display: block;
    font-size: 16px;
    font-weight: 100;
    font-style: italic;
}
.pricingTable .best-offer{
    background-color: #3498db;
    color: #fff;
    padding: 6px 50px;
    font-size: 10px;
    line-height: 12px;
    text-transform: uppercase;
    position: absolute;
    top: 20px;
    right: -55px;
    transform: rotate(45deg);
}
.pricingTable .pricingContent ul{
    list-style: none;
    padding: 0;
    margin-bottom: 0;
}
.pricingTable .pricingContent ul li{
    border-bottom:1px solid #ededed;
    color: #9999A5;
    padding: 10px 0 ;
}
.pricingTable .pricingContent ul li:first-child {
    border-top:1px solid #ededed;
}
.pricingTable .pricingTable-sign-up{
    padding: 25px 0;
}
.pricingTable .btn-block{
    background:#666;
    border-radius: 0px;
    border:0px none;
    color:#fff;
    width: 50%;
    padding: 10px 5px;
    margin: 0 auto;
    text-transform: capitalize;
    transition:all 0.3s ease 0s;
}
.pricingTable .btn-block:after{
    content: "\f090";
    font-family: "Font Awesome 5 Free"; font-weight: 900;
    padding-left: 10px;
    font-size: 15px;
}
.pricingTable .btn-block:hover{
    background: #282828;
    color:#fff;
}
@media screen and (max-width:990px){
    .pricingTable{
        margin-bottom: 20px;
    }
}


</style>
</head>
<body>


<h2 align="left"><strong>마이페이지</strong></h2>
<hr>
<div class="container">
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="pricingTable">
                <div class="pricingTable-header">
                    <h3>내정보</h3>
                </div>
                <div class="price-value">
                    <small class="fa fa-usd"></small>
                    <span>ID</span>
                    <span class="subtitle">이름</span>
                </div>
                <div class="pricingContent">
                    <ul>
                        <li><b>판매등급</b>DIAMOND</li>
                        <li><b>총판매액</b>4.254,000</li>
                        <li><b>구매등급</b>DIAMOND</li>
                    </ul>
                </div><!-- /  CONTENT BOX-->
                <div class="pricingTable-sign-up"><!-- BUTTON BOX-->
                    <a href="#" class="btn btn-block btn-default">상세보기</a>
                </div><!-- BUTTON BOX-->
            </div>
        </div>
        <button id="myProduct">&nbsp;&nbsp;내상품&nbsp;&nbsp;<br>PRODUCT</button>

		<button id="myProduct">장바구니<br>MY CART</button>

		<button id="myProduct">회원정보<br>MY INFO</button>

		<button id="myProduct">&nbsp;&nbsp;내등급&nbsp;&nbsp;<br>MY RANK</button>
    </div>
</div>
</body>

</html>