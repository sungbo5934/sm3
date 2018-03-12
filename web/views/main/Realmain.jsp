<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

.pimg{
   width:260px;
   border:1px solid black;
   margin:20px;
   
}
.pcontent{
  /*  background:blue;
   border:1px solid black; */
   margin:20px;
   border-top-left-radius:     1em 1em;
   border-top-right-radius:    1em 1em;
   border-bottom-right-radius: 1em 1em;
   border-bottom-left-radius:  1em 1em;
   text-align:right;
}
#ppoto{
   width:258px;
   height:200px;
}
#product{
  position:static;
   height:420px;
   width:300px;
   /* border:1px solid black;  */
   margin-left:15px;
   margin-right:15px;  
   padding-top:5px; 
   border-top-left-radius:     1em 1em;
   border-top-right-radius:    1em 1em;
   border-bottom-right-radius: 1em 1em;
   border-bottom-left-radius:  1em 1em;
}
#product:hover{
position:static;
   box-shadow: 0px 0px 10px 5px  #D3D3D3;
}
.ptitle{
   /* background:yellow; */
   /* border:1px solid black; */
   font-weight: bold;
   font-size:25px;
   text-align:center;
   margin:10px; 
   border-top-left-radius:     1em 1em;
   border-top-right-radius:    1em 1em;
   border-bottom-right-radius: 1em 1em;
   border-bottom-left-radius:  1em 1em;
}
.item{
   height:500px;
}
.table1{
    margin-left:150px;
    margin-bottom:50px;
}
.table2 th{
   width:250px;   
   height:60px;
   text-align:center;
}
.table2 th:hover{
   cursor:pointer;
   background:rgb(94, 94, 94);
   color:white;
}
.table3 {
   align:center;
}
.table3 th{
   width:320px;
   height:250px;
   align:center;
}
.tcenter{
   border-left:1px solid black;
   border-right:1px solid black;
}
.row4 form{
   border-top:1px solid black;
}
.qdiv{
   width:320px;
   overflow: hidden;
   padding:0 10px;
}
.qdiv > p {
   float:left;
}
.qdiv > input{
   float:right;
}
.tright{
   padding-left:20px;
   padding-top:10px;
}
</style>
<title>오늘의 동료</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>

<%-- <%@ include file="../common/header.jsp" %> --%>
   <div class="row">
      <!-- <div class="row1 lg-col-1" id="rowww"></div> -->
      <div class="row1 lg-col-10">
        <div class="container">
           <div id="myCarousel" class="carousel slide" data-ride="carousel">
             <!-- Indicators -->
             <ol class="carousel-indicators">
               <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
             </ol>
          <!-- Wrapper for slides -->
          <div class="carousel-inner">
           <div class="item active">
           <img src="/p/Pimages/city1.PNG" alt="Los Angeles" style="width:100%;">
           </div>

      <div class="item">
        <img src="/p/Pimages/city1.PNG" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="/p/Pimages/city1.PNG" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
      </div>
      <!-- <div class="row1 lg-col-1"></div> -->
      
      <hr>
   </div>
   <br>
   
   
   <div class="row">
      <!-- <div class="row2 lg-col-1"></div> -->
      <div class="row2 lg-col-10">
          <table class="table2" border="1px solid black" text-align="center" align="center" >
            <tr>
               <th><h4 style="font-weight:bold">인기서비스</h4></th>
               <th><h4 style="font-weight:bold">신규서비스</h4></th>
               <th><h4 style="font-weight:bold">추천서비스</h4></th>
               <th><h4 style="font-weight:bold">테마서비스</h4></th>
            </tr>
         </table>
      </div>
      <!-- <div class="row2 lg-col-1"></div> -->
   </div>
   <br><br>
   <div class="row">
   <table class="table1">
      <tr>
      <td>
         <div class="row3" >
             <form id="product" style="float:left;margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
             <form id="product" style="float:left;margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
             <form id="product" style="float:left; margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
             <form id="product" style="float:left; margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
             <form id="product" style="float:left; margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
             <form id="product" style="float:left; margin-top:20px">
               <div class="pimg"><img id="ppoto" src="/p/Pimages/city1.PNG"></div>
               <div style="padding-left:20px"><p>재능>비즈니스>디자인>인테리어</p></div>
               <div class="ptitle"><p class="ptitle">나는 제목입니다.</p></div>
               <div class="pcontent"><h4 style="color:red;">200000원</h4></div>
               <div style="padding-right:20px; text-align:right; padding-left:20px"><p style="float:left">godsungbo</p><p style="float:right">★★★★☆ </p></div>
             </form>
         </div>
         </td>
         <td>
       
         </td>
      
      </tr>
         
   </table>
               <span class="glyphicon glyphicon-plus-sign"></span>
      <div class="row4">
         <form>
            <table class="table3" align="center">
            <th><h3>&nbsp;NOTICE</h3>
            <br>
                   <p>스타벅스 모바일 쿠폰 발송하였... 2017-12-25</p>
                   <p>스타벅스 모바일 쿠폰 발송하였... 2017-12-25</p>
                   <p>스타벅스 모바일 쿠폰 발송하였... 2017-12-25</p>
                   <p>스타벅스 모바일 쿠폰 발송하였... 2017-12-25</p>
               </th>
               <th class="tcenter" >
                  <h3>&nbsp;QnA</h3>
                  <br>
                  <div class="qdiv"><p style="float:left; width:270">공간 등록 수수료 관련 문의</p><input type="button" value="답변완료" class="qbtn" align="right"></div>
                  <div class="qdiv"><p>판매자 등록 완료?</p><input type="button" value="답변완료" class="qbtn"></div>
                  <div class="qdiv"><p>구매자가 판매자에게 처음 문의할 ...</p><input type="button" value="답변완료" class="qbtn"></div>
                  <div class="qdiv"><p>스벅 이벤트</p><input type="button" value="답변완료" class="qbtn"></div>
               </th>
               <th class="tright">
                  <h3>CUSTOMER CENTER</h3>
                  <hr>
                  <h2>010-9904-3929</h2>
                  <hr>
                  <h5>fax : 02-123-4567</h5>
                  <h4>평일 09:00~18:00(토/일/공휴일 휴무)</h4>
               </th>
            </table>
         </form>
      </div> 
      
      <!-- <div class="row3 lg-col-1"></div> -->
   </div>
   
</body>




<%@ include file="../common/footer.jsp" %>
</html>