<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&amp;subset=korean" rel="stylesheet"> 
 <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


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

</head>
<body>
<div class="container">
  <div id="logo"><h1 class="logo">hulu</h1>
    <div class="CTA">
      <h1>Get $10</h1>
      </div>
  </div>
  <div class="leftbox">
    <nav>
      <a id="profile" class="active"><i class="fa fa-user"></i></a>
      <a id="payment"><i class="fa fa-credit-card"></i></a>
      <a id="subscription"><i class="fa fa-tv"></i></a>
      <a id="privacy"><i class="fa fa-tasks"></i></a>
      <a id="settings"><i class="fa fa-cog"></i></a>
    </nav>
  </div>
  <div class="rightbox">
    <div class="profile">
      <h1>Personal Info</h1>
      <h2>Full Name</h2>
      <p>Julie Park <button class="btn">update</button></p>
      <h2>Birthday</h2>
      <p>July 21</p>
      <h2>Gender</h2>
      <p>Female</p>
      <h2>Email</h2>
      <p>example@example.com <button class="btn">update</button></p>
      <h2>Password </h2>
      <p>••••••• <button class="btn">Change</button></p>
    </div>
    
    <div class="payment noshow">
      <h1>Payment Info</h1>
      <h2>Payment Method</h2>
      <p>Mastercard •••• •••• •••• 0000 <button class="btn">update</button></p>
      <h2>Billing Address</h2>
      <p>1234 Example Ave | Seattle, WA <button class="btn">change</button></p>
      <h2>Zipcode</h2>
      <p>999000</p>
      <h2>Billing History</h2>
      <p>2018<button class="btn">view</button></p>
      <h2>Redeem Gift Subscription </h2>
      <p><input type="text" placeholder="Enter Gift Code"></input> <button class="btn">Redeem</button></p>
    </div>

    <div class="subscription noshow">
      <h1>Your Subscription</h1>
      <h2>Payment Date</h2>
      <p>05-15-2018 <button class="btn">pay now</button></p>
      <h2>Your Next Charge</h2>
      <p>$8.48<span> includes tax</span></p>
      <h2>Hulu Base Plan</h2>
      <p>Limited Commercials <button class="btn">change plan</button></p>
      <h2>Add-ons</h2>
      <p>None <button class="btn">manage</button></p>
      <h2>Monthly Recurring Total </h2>
      <p>$7.99/month</p>
    </div>

    <div class="privacy noshow">
      <h1>Privacy Settings</h1>
      <h2>Manage Email Notifications<button class="btn">manage</button></h2>
      <p></p>
      <h2>Manage Privacy Settings<button class="btn">manage</button></h2>
      <p></p>
      <h2>View Terms of Use <button class="btn">view</button></h2>
      <p></p>
      <h2>Personalize Ad Experience <button class="btn">update</button></h2>
      <p></p>
      <h2>Protect Your Account <button class="btn">protect</button></h2>
      <p></p>
    </div>
 <div class="settings noshow">
      <h1>Account Settings</h1>
      <h2>Sync Watchlist to My Stuff<button class="btn">sync</button></h2>
      <p></p>
      <h2>Hold Your Subscription<button class="btn">hold</button></h2>
      <p></p>
      <h2>Cancel Your Subscription <button class="btn">cancel</button></h2>
      <p></p>
      <h2>Your Devices <button class="btn">Manage Devices</button></h2>
      <p></p>
      <h2>Referrals <button class="btn">get $10</button></h2>
   <p></p>
    </div>
    
  </div>
</div>

<footer>
  <p>made by <a href="https://codepen.io/juliepark"> julie</a> ♡
</footer>

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
<script>
/*active button class onclick*/
$('nav a').click(function(e) {
  e.preventDefault();
  $('nav a').removeClass('active');
  $(this).addClass('active');
  if(this.id === !'payment'){
    $('.payment').addClass('noshow');
  }
  else if(this.id === 'payment') {
    $('.payment').removeClass('noshow');
    $('.rightbox').children().not('.payment').addClass('noshow');
  }
  else if (this.id === 'profile') {
    $('.profile').removeClass('noshow');
     $('.rightbox').children().not('.profile').addClass('noshow');
  }
  else if(this.id === 'subscription') {
    $('.subscription').removeClass('noshow');
    $('.rightbox').children().not('.subscription').addClass('noshow');
  }
    else if(this.id === 'privacy') {
    $('.privacy').removeClass('noshow');
    $('.rightbox').children().not('.privacy').addClass('noshow');
  }
  else if(this.id === 'settings') {
    $('.settings').removeClass('noshow');
    $('.rightbox').children().not('.settings').addClass('noshow');
  }
});
</script>
</html>