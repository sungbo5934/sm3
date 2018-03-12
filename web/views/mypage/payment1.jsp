 <%@page import="oracle.net.aso.p"%>
<%@page import="com.kh.tc.product.model.vo.product"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% product p =(product)request.getAttribute("product"); %>
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
img{
	width:100px;
	height:100px;
}
 
 

</style>
</head>
<body>
   <%@ include file="../common/header.jsp" %>  
 
 <div id='A_Container_Wrap'>
 <div id='A_Container'>
    <%@ include file = "../mypage/mypageleft.jsp" %> 
   
   <div class="gumai-container">
  
   <input type="hidden" name="CkCart">
<input type="hidden" name="Cktype" value="all">
 


  	<h3>구매 목록</h3>
    <table class="btn btn-default" cellspacing="0">
	<colgroup>
		<col style="width:10%">
		<col style="width:70%">
		<col style="width:20%">
	</colgroup>
	<tr>
		
		<td><img src="Pimages/city1.PNG" style="float:left"></td>
		<td><li class="floating-box">판매자:forever9898 /  옵션없음 
					 	<p class="cate font_cate">물건>리빙>생활용품>기타</p> 
					<div class="date font_hit"></div>
					<!--<div class="hit font_hit">조회수 : 391회</div>-->
					<h3 class="font_subject2"><a href="/ContentShop/mall_main.asp?category=1202010500&strCartMode=cart_in&strUrl=direct&strOrderMode=order&g_idx=1436&temp=view">
					<%= p.getP_name() %> </a></h3>
				 

							<!-- 실제 컨텐츠 가격-->
							<input type="hidden" name="g_money" value="600" />
							<input type="hidden" name="g_name" value="CU 롯데 초코빼빼로 기프티콘" />
					  </li></td> 
	<td style="padding: 0px 0 13px 9px;">
		<li class="floating-box" style="text-align:center;">
		 
								구매가격 :<%= p.getP_price() %> 원
						 
								<br>수량 : 1개 <br>
						 
							</li>
</td>
</tr>
</table>
      
 
<!-- 장바구니 리스트 End -->
	<table width="100%" cellspacing="0" cellpadding="5">
		<tr>
			<td height="20" colspan="2"><div align="right"><b><font color="#000000">합계
							: 600원
				<INPUT TYPE="hidden" NAME="TOTAL" VALUE = "600" />
				<input type=hidden name=totalPoint value="" /></font> </b></div></td>
		</tr>
		<tr>
			<td height="1" colspan="2" bgcolor="#969696"></td>
		</tr>
	</table>

 
<ul class="board_list" >
 
		
		<table width="100%"  border="1" cellspacing="0" cellpadding="5">
		<colgroup>
							<col style="width: 50%">
							<col style="">
							<col style="width: 13%">
							<col style="width: 20%">
							<col style="width: 10%">
						</colgroup>
		
				<a href="#">
				</a>
	 
				<div class="info" >
				 
				 <tr>
				 <td>
			 
				


		</td>
	 </tr>
	</table>
 
	
</ul>
	
 

<form name="order_info" action="?category=1202010500&g_idx=1436&strCartMode=cart_in&strUrl=direct&strOrderMode=order&strcashOrderMode=orderok&" method="post">
<input type = "hidden" name = "g_name" value = "CU 롯데 초코빼빼로 기프티콘" />
<input type="hidden" name="g_count" value="10">
 

	<input type = "hidden" name = "total" value = "600" /><!--금액-->

 
<h2 class="bor_none sub_title" style="margin-top:20px;">결제수단</h2>
<table class="btn btn-default" cellspacing="0" width="100%">
	<colgroup>
		<col style="width:100%">
 
	 
	</colgroup>
 	<tr>
		<th>결제수단</th>
 
	<td style="padding: 0px 0 13px 9px; align:right;">
		<input name="o_pay_status"  class="new" value="22222"  type="radio">신용카드
	<input name="o_pay_status"  class="new" value="111111111111"  type="radio">가상계좌(무통장입금)
</td>
</tr>
</table>


 
 
<script type="text/javascript">
$('#taxchkk').click(function(){
	if($("#taxchkk").is(":checked") == true){
		$("#taxbox").show();
}
else{
		$("#taxbox").hide();
}
});
</script>
 
 
<div class="btn_bottom f_right">
	<a href="#" class="btn btn-default" onclick="jsf_pay();"><span>결제하기</span></a>
 
</div>

</form>

<script language="javascript">
 
		function jsf_pay()
		{
			var aa = document.order_info.o_pay_status;
			var conf = "";
			for(i=0;i<aa.length;i++){
			if(aa[i].checked == true){
				conf = true;
				//이런식으로 체크가 되었는지 안되었는지로 확인해야 한다.
				//value값으로 확인이 불가하다.
			}
			}
			if(conf == false){
			alert("결제수단을 선택해주세요");
			aa[0].focus();
			return false;
			}

			 
			//신용카드
			if (document.order_info.o_pay_status[0].checked == true)
			{
				if (confirm("구매하시겠습니까?")) {
					document.order_info.action = "/p/views/pay/import.jsp";
					document.order_info.submit();
				}else{
					alert("취소하셨습니다.");
					return false;
					//history.back(-1);
				}
			}

			// 무통장
			if (document.order_info.o_pay_status[1].checked == true)
			{
				if (confirm("구매하시겠습니까?")) {
					document.order_info.action = "/p/views/pay/import.jsp";
					document.order_info.submit();
				}else{
					alert("취소하셨습니다.");
					return false;
					//history.back(-1);
				}
			}


	 

			

		}

 
</script>

   
   
   </div>



</div>
</div>

<br><br><br><br>
<%@ include file="../common/footer.jsp" %>
</body>
</html>