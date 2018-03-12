<%@page import="com.kh.tc.product.model.vo.Pay"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
 
.order_button{
float:right;
}


#A_Container_L {
   float: left;
   width: 200px;
}

#A_Container_C {
   text-align:center;
   width: 770px;
   float: left;
   overflow: hidden;
   margin:40px;
}

#A_Container {
   width: 1100px;
   margin: 0 auto;
   margin-top: 30px;
   margin-bottom: 20px;
   clear: both;
   overflow: hidden;
   min-height: 500px;
}

#A_Container_Wrap {
   width: 100%;
   clear: both;
   height: 100%;
   }


li {
    display: list-item;
    text-align: -webkit-match-parent;
}
.bold{
   text-color:gray;
}
th{
   background:#dddddd;

}
td{
text-align: center;
}
.firstBar{
background:#dddddd;
}
img{
width:150px;
height:100px;
}

.payment{
display:none;
}
 
</style>
</head>
<body>
    <%@ include file="../common/header.jsp"%>

   <div id='A_Container_Wrap'>
      <div id='A_Container'>
          <%@ include file ='../mypage/mypageleft.jsp' %>
  
    <div id="A_Container_C">
    
<colgroup>
   <col style="width:95%;">
   <col style="">
  </colgroup>

<table style="width:95%;" class="table table-bordered">
<tr>
    <th><img src="/p/Pimages/koreaWon.PNG"></th>
  <th class="firstBar">
        <h1> 주문이 완료되었습니다.</h1>
        <p> 무통장 입금을 선택하신 고객께서는 입금을 완료해야 공유 단계가 진행됩니다. </p>
      </th>
      
</tr>
</table>

<button id="payDetail" onclick="payment()">주문 내역 상세보기</button>
<input type="hidden" id="ac_code" value="merchant_1520560035018">
<div id="replySelectArea">
         <table id="rst" border="1" align="center"> 
         
         </table>
      </div>
      
<script>
function payment(){
	$(".payment").toggle();
}

$(function(){
    $("#payDetail").click(function(){
    	var ac_code=$("#ac_code").val();
    	
       $.ajax({
          url:"/p/searchPay.do",
          data:{"ac_code": ac_code},
          type:"get",
          
          // 데이터 받아옴.
          success:function(data){
         	var $rst = $("#rst");
         	$rst.html('');
          
         	for(var key in data){
         		var $tr = $("<tr>");
        
         		var $contentTd= $("<td>").text(data[key].reply_content).css("width", "600px");
         		$tr.append($contentTd);
         		$rst.append($tr);
         	}
          },
          error:function(msg){
             alert(msg);
          }
       });
    });
 });

</script>
 
 


<table class="payment" style="width:95%;" class="table table-bordered" >
   <colgroup>
       <col style="width:40%;">
          <col style="width:60%;">

      </colgroup>
         
    </colgroup>
    
    
      
    
    
      <tbody><tr>
         <th><p align="center">입금은행</p></th>
         <td>농협중앙회</td>
      </tr>
      <tr>
         <th><p align="center">입금계좌</th>
         <td>79014338631249</td>
      </tr>
      <tr>
         <th><p align="center">예금주</th>
         <td>（주）쉐어피플</td>
      </tr>
      <tr>
         <th><p align="center">입금기간</th>
         <td>20180228</td>
      </tr>
   </tbody></table>

  <table class="payment" style="width:95%;" class="table table-bordered">
     <colgroup>
         <col style="width:40%;">
          <col style="width:25%;">
          <col style="width:15%;">
          <col style="width:20%;">
      </colgroup>
     <tbody><tr>
        <th><p align="center">공유명</th>
        <th><p align="center">옵션</th>
        <th><p align="center">수량</th>
        <th><p align="center">가격</th>
     </tr>
  <!-- 구매할 리스트  Start -->

     <tr>
        <td class="title">강남역 10번출구 우산대여 해드립니다.</td>


        <td> 옵션없음 </td>
        <td>1개</td>
        <td class="pay">1,000 원 <br>
           배송비 : 0 원
        </td>
     </tr>

     <tr>
         <th class="title"><p align="center">총 주문금액</th>
         <th colspan="2"></th>
        <th class="total"><p align="center">1,000 원</p></th>
      </tr>
  </tbody></table>

  <colgroup>
  
     <col style="width:95%;">
         <col style="">
    
  </colgroup>
<hr>
      <div class="order_button">
             <button><a href="/p/views/member/myPage.jsp" align="center"; class="btn btn-info">확인</a></button>
          </div>
          </div>
          </div>
          
          
          
          
          </div>
 
 
 
 
</body>
</html>