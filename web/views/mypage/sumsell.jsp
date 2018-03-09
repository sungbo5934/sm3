<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../_css/jquery-ui.css">
<script src="../js/jquery-ui.js"></script>
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
    margin-left:50px;   
}
#A_Container   { width:1100px; margin:0 auto; margin-top:50px; margin-bottom:20px; clear:both; overflow: hidden; min-height:500px;}
#A_Container_Wrap  { width:100%; clear:both;  height:100%;}

.sharelist_tab { display:inline-block; width:101%; border: 1px solid #dedede; margin-top:50px; }
.sharelist_tab li { float:left; width:49.8%; background:#efefef; line-height:50px; font-size:16px; font-weight:600; color:#666666; text-align:center;  }
.sharelist_tab li:first-child { border-right: 1px solid #dedede; }
.sharelist_tab li.on, .sharelist_tab li:hover { background:#2d9fee; color:#ffffff; }

.list_page { margin: 30px auto 0; text-align: center; zoom: 1; }
.list_page .first_btn { display: inline-block; width: 25px; height: 24px; text-indent: -9999px; vertical-align: bottom; background: url(https://www.sharepeople.co.kr/image/common/arrow_l.png) no-repeat left top; }
.list_page .first2_btn { display: inline-block; width: 24px; height: 24px; text-indent: -9999px; vertical-align: bottom; background: url(https://www.sharepeople.co.kr/image/common/arrow_l.png) no-repeat -25px top; }
.list_page ul { display: inline-block; overflow: hidden; padding: 0 7px; vertical-align: bottom;}
.list_page li { float: left; margin: 0 5px;}
.list_page li:hover a, .list_page li a.on { color: #fff; background: #0eade7;}
.list_page li a { display: block; width: 24px; height: 24px; font-size: 12px; color: #444; text-align: center; line-height: 25px; }
.list_page .last2_btn { display: inline-block; width: 25px; height: 24px; text-indent: -9999px; vertical-align: bottom; background: url(https://www.sharepeople.co.kr/image/common/arrow_r.png) no-repeat left top; }
.list_page .last_btn { display: inline-block; width: 24px; height: 24px; text-indent: -9999px; vertical-align: bottom; background: url(https://www.sharepeople.co.kr/image/common/arrow_r.png) no-repeat -25px top; }

.adjustform { margin-bottom:5px; float: right; }
.adjustform .input { width:90px; height:28px; border:1px solid #d2d2d2; font-size:14px; font-weight:600; color:#666666; }
.md_search_btn {
		padding: 0px 10px;
		background: #2fa0ee;
		font-size: 14px;
		font-weight: 600;
		color: #ffffff;
		line-height: 28px;
		display: inline-block;
		vertical-align: bottom;
	border:0;
}
.share_calculate { width:100%; border:1px solid #c6c6c6; border-bottom:none; border-right:none; margin-bottom:20px; }
.share_calculate th, .share_calculate td { border-bottom:1px solid #c6c6c6; border-right:1px solid #c6c6c6; font-size:14px; color:#666}
.share_calculate th { background: #f6f6f6; font-weight:600; padding:10px 5px; }
.share_calculate td { background: #ffffff; padding:8px 5px; }
.share_calculate .bold td { font-size:16px; font-weight:600; }
table{border-collapse:collapse;border-spacing:0}


</style>
</head>






<body>
   <%@ include file="../common/header.jsp" %>  
 
 <div id='A_Container_Wrap'>
 <div id='A_Container'>
    <%@ include file = "../mypage/mypageleft.jsp" %>
    
    <div id="A_Container_C" >
            <ul class="sharelist_tab">
            <a href="/p/views/mypage/sumsell.jsp"><li style="width:33%" class="on">수익금정산</li></a>
            <a href="/p/views/mypage/outsell.jsp"><li style="width:33%" class='on2'>수익금출금신청</li></a>
            <a href="/p/views/mypage/outsellstory.jsp"><li style="width:33%" class='on3'>수익금출금신청내역</li></a>
            </ul>
            <br><br>
            <h1>수익금 정산내역</h1>
            

<script type="text/javascript">
$(function() {
 $(".datepicker").datepicker({
	 dateFormat: 'yy-mm-dd',
	 changeMonth:'true',
	 changeYear:'true',
	 });
});
</script>


		<form name="searchForm" method="post" class="adjustform">

			<b>기간</b>

			<input type="hidden" name="scontent" value="" style="border:0px">
			<input name="m_EvSday" type="text" class="input datepicker hasDatepicker" id="m_EvSday" size="10" readonly=""> ~
			<input name="m_EvEday" type="text" class="input datepicker hasDatepicker" size="10" readonly="" id="dp1519294743334">

			&nbsp;<input class="md_search_btn" type="submit" value="검색">&nbsp;
					
		</form>

    
	<table class="share_calculate">
		<colgroup>
				<col width="20%">
				<col width="30%">
				<col width="20%">
				<col width="30%">
		</colgroup>
            <tbody><tr>
              	<th>판매된 공유수</th>
                <td>0 건</td>
                <th>판매 수수료율</th>
                <td>13%</td>
            </tr>
            <tr>
              <th> 총판매액 </th>
                <td>0원 </td>
                <th>판매 수수료</th>
                <td>0원 </td>
            </tr>
            <tr>
              <th>총수익금</th>
              <td>0원 </td>
              <th>출금완료 수익금</th>
              <td>0원 </td>
            </tr>
            <tr>

              <th> 출금가능 수익금 </th>
                <td>0원 </td>
              <th></th>
              <td></td>
            </tr>
        </tbody></table>
	    <!--  -->
		<br>
<table class="share_calculate">
	<colgroup><col width="10%">
	<col width="30%">
	<col width="12%">
	<col width="25%">
	<col width="10%">
	<col width="15%">
	</colgroup><tbody><tr>
		<th>주문번호</th>
		<th>공유명</th>
		<th>구매자ID</th>
		<th>구매시간</th>
		<th>상태</th>
		<th>가격</th>
	</tr>
<!-- 구매할 리스트  Start -->

	<tr>
		<td colspan="6" align="center">주문정보가 없습니다.</td>
	</tr>



</tbody></table>
	<div class="list_page"><a href="?page=1&amp;" class="first_btn">처음</a><a href="?page=1&amp;" class="first2_btn">이전</a><ul></ul><a href="?page=0&amp;" class="last2_btn">다음</a><a href="?page=11&amp;" class="last_btn">맨뒤</a></div>


                  </div>
     
   
   



</div>
</div>

<br><br><br><br>
<%@ include file="../common/footer.jsp" %>
</body>
</html>