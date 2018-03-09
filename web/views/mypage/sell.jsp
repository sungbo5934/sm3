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
#A_Container   { width:1100px; margin:0 auto; margin-top:50px; margin-bottom:20px; clear:both; overflow: hidden; min-height:500px;}
#A_Container_Wrap  { width:100%; clear:both;  height:100%;}


.tdiv{
      width:100px;
      height:50px;
      background:white;
      margin:10px;
       border-top-left-radius:     1em 1em;
         border-top-right-radius:    1em 1em;
         border-bottom-right-radius: 1em 1em;
         border-bottom-left-radius:  1em 1em;
   }
   .row5 th{
      text-align:center;
      align:center;
   }
   .row5{
      width:700px;
      background:lightgray;
      margin-left:50px;
      margin-right:auto;
      float:left;
      border-top-left-radius:     1em 1em;
        border-top-right-radius:    1em 1em;
        border-bottom-right-radius: 1em 1em;
        border-bottom-left-radius:  1em 1em;
   }
   .row5 table{
      margin-left:auto;
      margin-right:auto;
   }
   .row2{
      width:700px;
      margin-left:50px;
      float:left;
   }
   
   .rnum{
      float:right;
      margin-top:10px;
      
   }
   
   .row2 h5{
      margin-left:20px;
      
   }
   .gumai{
      width:700px;
      
   }
   .row2 th{
      border-left:0.3px solid lightgray;
      border-bottom:0.3px solid lightgray;
      border-right:0.3px solid lightgray;
      border-top:0.3px solid lightgray;
   } 
   .gumaititle{
      margin-left:120px;
      
   }
.purchaseTable { width:100%; margin-top:20px; border-top:1px solid #dedede; border-left:1px solid #dedede; font-size:13px; text-align:left; }
.purchaseTable th, .purchaseTable td { font-size:14px; color:#666; border-bottom:1px solid #dedede; line-height:50px; padding:0 20px 0 30px; }
.purchaseTable th { border-right:0;  font-weight:600; text-align:left; background:#efefef;}
.purchaseTable td { font-weight:normal; border-right:1px solid #dedede;}
.purchaseTable th span { background:#989898; padding:0px 9px; float:right; border-radius:20px; line-height: 26px; margin-top:12px; color:#ffffff; }

.bor_none { border:none !important; }
.bor_top4ff { border-top: 4px solid #ffffff; }
.bor_btm266 { border-bottom: 2px solid #666666;  }
.m_bottom20 {margin-bottom:20px !important; width:700px;} 
.bor_r {border-right:1px solid #dbdbdb !important;}
.cursor { cursor:pointer; }

table[Attributes Style] {
    -webkit-border-horizontal-spacing: 0px;
    -webkit-border-vertical-spacing: 0px;
}
user agent stylesheet
table {
    display: table;
    border-collapse: separate;
    border-spacing: 2px;
    border-color: grey;
}
li {
    display: list-item;
    text-align: -webkit-match-parent;
}

</style>
</head>
<body>
   <%@ include file="../common/header.jsp" %>  
 

 <div id='A_Container_Wrap'>
 <div id='A_Container'>
 <%@ include file ='../mypage/mypageleft.jsp' %>
   
   <div class="gumaititle">
      <h1 style="margin-left:130px;" class="bor_btm266 m_bottom20">판매내역</h1>
      <br>
   </div>
   <div class="row5">
      
      <table>
         <tr>
            <th>
               <a class=cursor><div class="tdiv"><p>공유대기중</p><p style="color:blue">0</p></div></a>
            </th>
            <th><span class="glyphicon glyphicon-chevron-right"></span></th>
            <th>
               <a class=cursor><div class="tdiv"><p>공유진행중</p><p style="color:blue">0</p></div></a>
            </th>
            <th><span class="glyphicon glyphicon-chevron-right"></span></th>
            <th>
               <a class=cursor><div class="tdiv"><p>공유완료</p><p style="color:blue">0</p></div></a>
            </th>
            <th><span class="glyphicon glyphicon-chevron-right"></span></th>
            <th>
               <a class=cursor><div class="tdiv"><p>거래완료</p><p>0</p></div></a>
            </th>
            <th></th>
            <th>
               <a class=cursor><div class="tdiv"><p>수정요청</p><p style="color:red">0</p></div></a>
            </th>
         </tr>
      </table>
   </div>
   <br>
   <br><br><br>
   
   <div class="row2">
   <hr>
      <table class="purchaseTable" cellspacing="0">
               <colgroup>
                  <col style="width: 180px">
                  <col>
               </colgroup>
               <tbody>
                  <tr>
                     <th class="bor_top4ff"><a href="#">입금대기<span
                           class="bg6393b4"> 0</span></a></th>
                     <td>입금전 / 입금확인 중</td>
                  </tr>
                  <tr>
                     <th><a href="#">구매취소 <span>0</span></a></th>
                     <td>공유대기중 상태에서 구매자가 구매취소</td>
                  </tr>
                  <tr>
                     <th><a href="#">판매취소 <span>0</span></a></th>
                     <td>공유대기중 상태에서 판매자가 판매취소</td>
                  </tr>
                  <tr>
                     <th><a href="#">반품(환불)요청 <span>0</span></a></th>
                     <td>공유완료(구매결정대기/배송중) 상태에서 구매자가 반품(환불)요청</td>
                  </tr>
                  <tr>
                     <th><a href="#">반품(환불)완료 <span
                           class="bg444444">0</span></a></th>
                     <td>반품(환불)한 상품 수령</td>
                  </tr>
               </tbody>
            </table>
   </div>


</div>
</div>
<br><br><br><br>
<%@ include file="../common/footer.jsp" %>

</body>
</html>