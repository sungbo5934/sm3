<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8">
<link rel="stylesheet" href="../../css/buying.css">
<link rel="stylesheet" href="../../css/buying2.css">
<link rel="icon" href="../image/share.ico">
<title>Insert title here</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>  
<div id="A_Container_Wrap">
   <div id="A_Container">
      <div id="A_Contents_L">
        </div>
        <div id="A_Contents_C">
          <div class="content">
               <h3>스타벅스 2017 루돌프 콜드컵</h3>
                 <div class="view_subTit">
                 한정상품 빠른거래 문자주세요 01086987741콜드컵만 판매
                 </div>
        <div class="view_imgTable">
          <dd class="image">
              <p><img src="" id="placeholder2" width="450px" height="295px"></p>
                <div class="shareMumber">공유번호 : 2171</div>
                <div class="shareSns">
                 
                </div>
            </dd>
            <dd class="table">
                <table class="shareTable" cellspacing="0">
                    <colgroup>
                        <col style="width:131px;">
                        <col style="width:;">
                    </colgroup>
                    <tbody >
                    <tr>
                        <th style="text-align:center">동시공유가능수</th>
                        <td></td>
                    </tr>
                    <tr>
                        <th style="text-align:center">공유지역</th>
                        <td>&nbsp; &nbsp; </td>
                    </tr>

                    
                    <tr>
                        <th style="text-align:center">공유만족도</th>
                        <td><div class="star_score m_top13 f_left"><em class="point_"></em></div> <b class="star_count">(0)</b></td>
                    </tr>
                    <tr>
                        <th style="text-align:center">공유종료일</th>
                        <td class="co6393b4">2018-09-19&nbsp;11:15</td>
                    </tr>
                    
                    <tr>
                        <th style="text-align:center">기본가격</th>
                        <td class="font_price">

                        23,000원

                        </td>
                    </tr>
                    <tr>
                      
               </tr><tr>
                  <th style="text-align:center">수량</th>
                  <td>
                  <p class="amount_btn"><a href="#" "><span class="glyphicon glyphicon-minus"></span></a>
                  <input type="text" name="each" id="each" value="1" onchange="eaCheck2();">
                  <a href="#" "><span class="glyphicon glyphicon-plus"></span></a></p><p class="price_box font_price">
                  <span id="totText">23,000</span>원</p>
                  </td>
               </tr>
            </tbody></table>
      <form name="gongu" id="gongu">
                <div class="btn_bottom">
                  <input type="hidden" name="danprice" id="danprice" value="23000">
                  <input type="hidden" name="g_baesongbe" id="g_baesongbe" value="0">
              <input type="hidden" name="money" id="money" value="23000">
                  <input type="hidden" name="sel1" id="sel1" value="">
                  <input type="hidden" name="sel2" id="sel2" value="">
                  <input type="hidden" name="ea" id="ea" value="1">
                  <input type="hidden" name="idx" value="2171">

                    <span class="bgff4b5c" onclick="purchase()" >주문하기</span>

                   
                   <script>
                   function purchase() {
                	   var num = $("#idx").val();  
                       location.href="<%=request.getContextPath() %>/searchProduct.do?num="+num;
                          
                   }
                   </script>
                    <a href="#" id="modaltrigger3"><span>문의하기</span></a>
                     <span class="bg979797" onclick="cart()" >공유바구니</span>

					<script>
                   function cart() {
                	   var num = $("#idx").val();  
                       location.href="<%=request.getContextPath() %>/wishbuy.do?num="+num;
                   }
                   </script>

                </div>
            </form></dd>
        </div>

        
    <table class="share_info" cellspacing="0">
            <colgroup>
                <col style="width:123px;">
                <col style="width:132px;">
                <col style="width:306px;">
                <col style="width:132px;">
                <col style="width:306px;">
            </colgroup>

            <tbody><tr>
              <td rowspan="3" class="p_left6"><p class="image"></p></td>
                <th style="text-align:center">공유 판매자</th>
                <td>cay0822</td>
            <th style="text-align:center">회원구분</th>
                <td>개인판매회원</td>
            </tr>
            <tr>
              <th style="text-align:center">총 공유 등록 개수</th>
              <td>7건</td>
           <th style="text-align:center">공유평점</th>
              <td></td>
            </tr>
            <tr>
              <th style="text-align:center">평균 문의 응답시간</th>
              <td></td>
           <th></th>
           <td></td>
            </tr>
        </tbody></table>
     <ul class="share_tab" id="ul1">
        <li class="on">공유상세정보</li>
        <li>공유구매후기</li>
        <li>주문시 주의사항</li>
      </ul>
        <!-- 공유상세정보 -->
        <div class="share_detail font_subject">
          
        </div>

  <!-- 공유 탭 -->
  <ul class="share_tab" id="ul2">
          <li>공유상세정보</li>
            <li class="on">공유구매후기</li>
            <li>주문시 주의사항</li>
        </ul>

        <!-- 공유구매후기 -->
        

<ul class="share_review">
  
      <li>등록된 후기가 없습니다.</li>
  
</ul>


<div class="list_page"><a href="#" class="first_btn">처음</a><a href="#"class="first2_btn">이전</a><ul></ul><a href="#" class="last2_btn">다음</a><a href="#" class="last_btn">맨뒤</a></div>
       <ul class="share_tab" id="ul3">
          <li>공유상세정보</li>
          <li>공유구매후기</li>
          <li class="on">주문시 주의사항</li>
        </ul>
        <h4 class="share_before">공유 전 확인하세요</h4>
        <div class="sb_contents font_contents2">
            · 판매자의 설명과 옵션을 다시 한번 확인하시기 바랍니다. <br>
            · 판매자가 직거래를 요구하는 경우, 즉시 고객센터로 신고해 주십시오. <br>
            · 쉐어피플의 결제시스템을 이용하지 않고 판매자와 직거래를 하는 경우, 문제발생 시 아무런 도움을 드릴 수 없습니다.<br>
            · 직거래로 인한 피해발생시 쉐어피플은 이에 대한 일체의 책임을 지지 않습니다.<br>
            · 구매한 공유가 설명과 다르거나 판매자와 연락이 되지 않는 경우, 고객센터로 연락 주시기 바랍니다.
        </div>
        <div class="btn_list">
            <a href="#" onclick='history.back()'><span>목록</span></a>
        </div>

<div id="popupModal3" class="popupModal" style="display:none">
<h2>1:1 공유문의</h2>

<div class="popupCon2">


<form name="chkform" method="post" enctype="multipart/form-data">
<!--form name="frmRequestForm" method="post" onsubmit="return frmRequestForm_Submit(this);" action="query.asp" enctype="multipart/form-data"-->

<table class="person_change board_write" cellspacing="0">
    <colgroup>
      <col style="width:180px">
      <col>
    </colgroup>
        <tbody>
            <tr>
                <th>공유명</th>
                <td>스타벅스 2017 루돌프 콜드컵</td>
            </tr>
            <tr>
                <th>제목*</th>
                <td><input type="text" name="strTitle" style="width:100%;" class="f_left"></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td>성보123</td>
            </tr>
            <tr>
                <th>문의내용*</th>
                <td>
            <textarea rows="10" style="width:100%;" name="strContent" placeholder="문의를 하시면 판매자분께 알림문자가 통보됩니다. 판매자분께서 답변을 하시면 문의자분께도 알림문자가 통보되며, 답변내용은 마이페이지에서 확인 가능합니다."></textarea>
            </td>
            </tr>
         <tr>
            <th>첨부파일</th>
            <td><input type="file" name="strFile"></td>
         </tr>
        </tbody>
    </table>
            <input type="hidden" name="strinsertid" value="성보123">
            <input type="hidden" name="strgongu" value="스타벅스 2017 루돌프 콜드컵">
            <input type="hidden" name="strupdateid" value="cay0822">
    <div class="btn_bottom f_right">
          <a href="#"><span>보내기</span></a>
     </div>

</form>

</div>

<div class="popup_close modal_close"><img src="../image/common/popBtnClose.png"></div>
</div>


    </div><!-- #content END -->

            </div><!-- #A_Contents_C END -->

            <div id="A_Contents_R">

            </div>
        </div><!-- #A_Container END -->

    </div>
</body>
</html>