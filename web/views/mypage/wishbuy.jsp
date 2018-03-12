<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<style>

#A_Container_L{ 
   float:left;   width:200px;
}
#A_Container_C {
    width: 770px;
    float: left;
    overflow: hidden;
}
#A_Container   { width:1000px; margin:0 auto; margin-top:50px; margin-bottom:20px; clear:both; overflow: hidden; min-height:500px;}
#A_Container_Wrap  { width:100%; clear:both;  height:100%;}



.gumai-wrap li img{
	padding:20px;
	width:180px;
	height:128px;
	padding:0;
	
}

.gumai-container{
	margin-left: 20px;
	float: left;
	width: 780px;
}
.gumai-wrap{
	overflow: hidden;
}
.gumai-wrap li{
	float: left;
	width:580px;
	height:150px;
	border:1px solid lightgray;
	padding: 10px;
	box-sizing: border-box;
}
.gumai-wrap li:last-child{
	width:200px;
	border-left: 0;
	box-sizing: border-box;
	text-align:center;
	
}
.basketBtn1{
	background:#3B87F0;
	color:white;
	width:60px;
	height:30px;
	border-top-left-radius:     1em 1em;
  	border-top-right-radius:    1em 1em;
  	border-bottom-right-radius: 1em 1em;
  	border-bottom-left-radius:  1em 1em;
}
.basketBtn2{
	background:#FB574F;
	color:white;
	width:60px;
	height:30px;
	border-top-left-radius:     1em 1em;
  	border-top-right-radius:    1em 1em;
  	border-bottom-right-radius: 1em 1em;
  	border-bottom-left-radius:  1em 1em;
  	
}
</style>
</head>
<body>
   <%@ include file="../common/header.jsp" %>  
 
 <div id='A_Container_Wrap'>
 <div id='A_Container'>
    <%@ include file = "../mypage/mypageleft.jsp" %> 
   
   <div class="gumai-container">
   	<h1>공유바구니</h1>
   	<hr>
   	<h3>공유바구니 목록</h3>
	   <ul class="gumai-wrap">
	   	<li>
	   		<img src="" style="float:left">
   			<p style="color:skyblue; float:left; margin-top:5px; margin-left:15px;">물건>패션&뷰티>뷰티&미용>헤어</p>
   			<br><h3 style="margin-left:195px; font-weight:900;">트레제메 케라틴 스무스 샴푸&컨디셔너</h3>
   			<br>
   			<div style="padding-right:20px; text-align:right; padding-left:20px; margin-top:15px;"><p style="float:left; margin-left:15px">godsungbo</p><p style="float:right">★★★★☆ </p></div>
	   	</li>
	   	<li>
			<h3>공유바구니</h3>
   			<p>2018-02-21</p>
   			<input class="basketBtn1" type="button" value="주문" style="padding-bottom:10px;">
   			<input class="basketBtn2" type="button" value="삭제" style="padding-bottom:10px;">
		</li>
	   </ul>
   
   </div>



</div>
</div>


</body>
</html>