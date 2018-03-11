<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<script>
var IMP = window.IMP; // 생략가능
IMP.init('iamport'); 

IMP.request_pay({
    pg : 'inicis', // version 1.1.0부터 지원.
    pay_method : 'card', // 5 결제방법
    merchant_uid : 'merchant_' + new Date().getTime(), // 가맹점 고유 주문번호 = 2 승인코드
    name : '의자', // 9 상품명
    amount : 10 // 4 가격 
  //  buyer_email : 'iamport@siot.do',
  //  buyer_name : '구매자이름',
  //  buyer_tel : '010-1234-5678',
  //  buyer_addr : '서울특별시 강남구 삼성동',
  //  buyer_postcode : '123-456',
   
}, function(rsp) {
    if ( rsp.success ) {
    	location.href="/p/views/pay/payment3.jsp";
    	 var msg = "결제완료";   
 
    } else {
        var msg = '결제에 실패하였습니다.';
        msg += '에러내용 : ' + rsp.error_msg;
    }
    
    $.ajax({
        url:"/p/insertPay.do",
        data:{acCode:rsp.merchant_uid, pName:rsp.name, pPrice:rsp.paid_amount, howtopay:rsp.pay_method},
        type:"post",
        success:function(data){
     	   
        },
        error:function(msg){
            alert(msg);
         }
});
    alert(msg);
});

</script>
</head>
 
 
 
 <body>
 
</body>
</html>