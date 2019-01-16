../fm/<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
  
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css'>
	 <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet">
      <link rel="stylesheet" href="tabs.css">	
      <link rel="stylesheet" href="style.css" type="text/css">
     <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="script.js"></script>
<style>

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
<%@include file="menu.jsp"%>
	<%@include file="logo.jsp"%>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
  <section class="design-process-section" id="process-tab">
  <div class="container">
    <div class="row">
      <div class="col-xs-12"> 
        <!-- design process steps--> 
        <!-- Nav tabs -->
        <ul class="nav nav-tabs process-model more-icon-preocess" role="tablist">
          <li role="presentation" class="active"><a href="#discover" aria-controls="discover" role="tab" data-toggle="tab"><i class="fa fa-search" aria-hidden="true"></i>
            <p>내정보</p>
            </a></li>
          <li role="presentation"><a href="#strategy" aria-controls="strategy" role="tab" data-toggle="tab"><i class="fa fa-send-o" aria-hidden="true"></i>
            <p>내상품</p>
            </a></li>
          <li role="presentation"><a href="#optimization" aria-controls="optimization" role="tab" data-toggle="tab"><i class="fa fa-qrcode" aria-hidden="true"></i>
            <p>장바구니</p>
            </a></li>
          <li role="presentation"><a href="#content" aria-controls="content" role="tab" data-toggle="tab"><i class="fa fa-newspaper-o" aria-hidden="true"></i>
            <p>내등급</p>
            </a></li>
          <li role="presentation"><a href="#reporting" aria-controls="reporting" role="tab" data-toggle="tab"><i class="fa fa-clipboard" aria-hidden="true"></i>
            <p>뭐하지이거는</p>
            </a></li>
        </ul>
        <!-- end design process steps--> 
        <!-- Tab panes -->
        <div class="tab-content" >
          <div role="tabpanel" class="tab-pane active" id="discover">
            <div class="design-process-content">
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
   				 </div>
			</div>
             </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="strategy">
            <div class="design-process-content">
              <h3 class="semi-bold">당신의 정보입니다. 수수료는 5% 입니다.^^ ~</h3>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
              </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="optimization">
            <div class="design-process-content">
              <h3 class="semi-bold">Optimization</h3>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>
               </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="content">
            <div class="design-process-content">
              <h3 class="semi-bold">Content</h3>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat</p>              
              </div>
          </div>
          <div role="tabpanel" class="tab-pane" id="reporting">
            <div class="design-process-content">
              <h3>Reporting</h3>
              <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincid unt ut laoreet dolore magna aliquam erat volutpat. </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js'></script>

    <script src="tabs.js"></script>

</body>
</html>
