<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>Insert title here</title>
<style>
@font-face {
	font-family: 'Nanum Gothic';
	font-style: normal;
	font-weight: 400;
	src: url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.eot);
	src:
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.eot?#iefix)
		format('embedded-opentype'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Regular.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Nanum Gothic';
	font-style: normal;
	font-weight: 700;
	src: url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Bold.eot);
	src:
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Bold.eot?#iefix)
		format('embedded-opentype'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Bold.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Bold.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-Bold.ttf)
		format('truetype');
}

@font-face {
	font-family: 'Nanum Gothic';
	font-style: normal;
	font-weight: 800;
	src:
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-ExtraBold.eot);
	src:
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-ExtraBold.eot?#iefix)
		format('embedded-opentype'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-ExtraBold.woff2)
		format('woff2'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-ExtraBold.woff)
		format('woff'),
		url(//fonts.gstatic.com/ea/nanumgothic/v5/NanumGothic-ExtraBold.ttf)
		format('truetype');
}

/* LAYOUT */
#A_Container {
	width: 1000px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 20px;
	clear: both;
	overflow: hidden;
	min-height: 500px;
}

table {
	display: table;
	border-collapse: separate;
	border-spacing: 1px;
	border-color: grey;
	border: 1px solid gray;
}

.serviceTable {
	width: 100%;
	border-left: 1px solid #dedede;
	border-top: 1px solid #dedede;
	border-right: 1px solid #dedede;
	text-align: center;
}

/*  */
.sb_contents {
	width: 93.8%;
	padding: 25px 30px;
	border: 1px solid #c6c6c6;
	margin-top: 10px;
	line-height: 24px;
}

/* common */
* {
	margin: 0;
	padding: 0;
	list-style: none;
	text-decoration: none;
	font-family: 'Nanum Gothic', sans-serif;
}

ul>li>a {
	text-decoration: none;
}
/* table { border-collapse: collapse; }*/
a {
	color: #666666;
}
/*span { color:#666; font-size:12px; }*/

/* 페이지 리스트 */
.list_page {
	margin: 30px auto 0;
	text-align: center;
	zoom: 1;
}

.list_page .first_btn {
	display: inline-block;
	width: 25px;
	height: 24px;
	text-indent: -9999px;
	vertical-align: bottom;
	background: url(../image/common/arrow_l.png) no-repeat left top;
}

.list_page .first2_btn {
	display: inline-block;
	width: 24px;
	height: 24px;
	text-indent: -9999px;
	vertical-align: bottom;
	background: url(../image/common/arrow_l.png) no-repeat -25px top;
}

.list_page ul {
	display: inline-block;
	overflow: hidden;
	padding: 0 7px;
	vertical-align: bottom;
}

.list_page li {
	float: left;
	margin: 0 5px;
}

.list_page li:hover a, .list_page li a.on {
	color: #fff;
	background: black;
}

.list_page li a {
	display: block;
	width: 24px;
	height: 24px;
	font-size: 12px;
	color: #444;
	text-align: center;
	line-height: 25px;
}

.list_page .last2_btn {
	display: inline-block;
	width: 25px;
	height: 24px;
	text-indent: -9999px;
	vertical-align: bottom;
	background: url(../image/common/arrow_r.png) no-repeat left top;
}

.list_page .last_btn {
	display: inline-block;
	width: 24px;
	height: 24px;
	text-indent: -9999px;
	vertical-align: bottom;
	background: url(../image/common/arrow_r.png) no-repeat -25px top;
}

thead {
	display: table-header-group;
	vertical-align: middle;
	border-color: inherit;
	border-top-color: inherit;
	border-right-color: inherit;
	border-bottom-color: inherit;
	border-left-color: inherit;
}

/* modal window styles */
#lean_overlay {
	position: fixed;
	top: 0px;
	left: 0px;
	display: none;
	width: 100%;
	height: 100%;
	background: #000;
	z-index: 100;
}

.popupModal {
	position: relative;
	overflow: hidden;
	width: 1080px;
	height: 450px;
	border: 2px solid #2fa0ee;
	box-sizing: border-box;
	background: #fff;
}

.popupModal * {
	box-sizing: border-box;
}

.popupModal h2 {
	position: relative;
	width: 100%;
	height: 40px;
	line-height: 40px;
	padding-left: 20px;
	color: #fff;
	font-size: 16px;
	font-weight: 600;
	background: #2fa0ee;
	margin-top: 0 !important;
	border: none !important;
}

.popupModal .popupCon {
	position: relative;
	width: 100%;
	height: 100%;
}

.popupModal .popupCon dd {
	position: relative;
	float: left;
	height: 100%;
	padding: 10px;
	border-right: 1px solid #cacaca;
}

.popupModal .popupCon dd:last-child {
	border-right: none;
}

.popupModal .popup_close {
	position: absolute;
	top: 0;
	right: 0;
	padding: 11px;
	cursor: pointer
}

.allCate {
	position: relative;
	width: 100%;
}

.allCate>li {
	width: 100px;
	padding-left: 10px;
}

.allCate a {
	font-size: 13px;
	font-weight: normal;
	color: #666666;
}

.allCate a:hover {
	color: #2fa0ee;
}

.allCate .allCate_tit01 {
	width: 100%;
	line-height: 34px;
	background: #f7f7f7;
	border-bottom: 1px solid #cacaca;
	font-size: 15px;
	font-weight: 600;
	color: #272727;
}

.tit452 {
	width: 492px;
	line-height: 34px;
	background: #f7f7f7;
	border-bottom: 1px solid #cacaca;
	font-size: 15px;
	font-weight: 600;
	color: #272727;
	padding-left: 10px;
}

.con452 {
	position: relative;
	width: 452px;
}

.tit252 {
	width: 180px;
	line-height: 34px;
	background: #f7f7f7;
	border-bottom: 1px solid #cacaca;
	font-size: 15px;
	font-weight: 600;
	color: #272727;
	padding-left: 10px;
}

.con252 {
	position: relative;
	width: 120px;
}

.con452 ul {
	float: left;
	width: 20%;
}

.con252 ul {
	width: 20%;
	width: 96px;
	float: left;
}

.con252 ul:nth-child(2) {
	float: right;
	width: 20%;
}

.allCate_tit02 {
	padding: 10px 0 5px 0;
}

.allCate_tit02 a {
	font-size: 15px !important;
	font-weight: 600;
	color: #333 !important;
	padding-bottom: 10px;
}

/* 공유하기 버튼 */
.btn_joinL {
	margin-top: 20px;
	text-align: center;
}

.btn_joinL span {
	display: inline-block;
	width: 190px;
	padding: 0;
	border-radius: 3px;
	color: #fff;
	font-size: 18px;
	font-weight: 600;
	line-height: 50px;
	background: black;
}

/* 공유리스트 레이아웃 */
.serviceTable {
	width: 100%;
	border-left: 1px solid #dedede;
	border-top: 1px solid #dedede;
	border-right: 1px solid #dedede;
	text-align: center
}

.serviceTable th, .serviceTable td {
	padding: 10px 0;
	border-bottom: 1px solid #dedede;
	color: #666;
	font-size: 13px;
	line-height: 20px;
}

.serviceTable th {
	font-weight: 500;
	background: #efefef
}

.serviceTable td.title {
	text-align: left;
}

.serviceTable td.title a {
	display: inline-block;
	color: #666;
	font-weight: 600
}

.serviceTable td.rec {
	background: url('../image/common/ico_reple.png') no-repeat left center;
	padding-left: 40px;
}

/* 공유하기 버튼, 셀렉 */
.board_search {
	width: 100%;
	height: 28px;
	position: relative;
	display: inline-block;
}

.board_search span {
	left: 0;
	bottom: 5px;
	font-size: 18px;
	font-weight: 400;
	color: #ffffff;
}

.board_search p select, .board_search input {
	border: 1px solid #c6c6c6;
	outline: none;
}

.board_search p select {
	width: 75px;
	height: 28px;
}

.board_search p input {
	width: 150px;
	height: 28px;
	padding-left: 5px;
}

.board_search p a {
	padding: 6px 15px;
	background: black;
	font-size: 14px;
	font-weight: 600;
	color: #ffffff;
}

#searchBtn{
	border-radius:5px;
	background:rgb(94,94,94);
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id="A_Container_Wrap">
		<div id="A_Container">
			<div id="A_Contents_L"></div>

			<div id="A_Contents_C">

				<h1>재능요청</h1>
				<br>

				<div class="sb_contents font_contents2">
					구매자가 필요한 서비스나 상품을 요청하는 공간입니다.<br> 서비스나 상품을 판매하시려면 재능등록을 하시기
					바랍니다.

				</div>
				<br>
				<!-- s: 판매관리 - 1:1공유문의 - 리스트  -->
				<div class="board_search font_subject">

					<br>
					<!--span>총게시물 <b class="co6393b4">6</b>개</span-->
					<form id="searchForm" name="searchForm" method="post"
						action="?page=1&amp;" align="right">
						<p>

							<select style="width: 82px;" name="keyword_option">
								<option value="g_title">공유명</option>
								<option value="g_id">아이디</option>
							</select> <input name="keyword" type="text" id="keyword" class="input01"
								value=""> <a href="#"
								onclick="document.searchForm.submit();" id="searchBtn">검색</a>
						</p>
					</form>

					<table class="serviceTable inquiry_list" cellpadding="0"
						cellspacing="0">
						<colgroup>
							<col style="width: 6%">
							<col style="">
							<col style="width: 13%">
							<col style="width: 20%">
							<col style="width: 10%">
						</colgroup>
						<thead>
							<tr>
								<th>NO</th>
								<th>재능요청명</th>
								<th>아이디</th>
								<th>등록시간</th>
								<th>희망가격</th>
							</tr>
						</thead>
						<tbody>


							<tr>
								<td>67</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=159&amp;"><p>[재능&gt;교육&amp;레슨&gt;과외]</p>미술</a></td>
								<td>woo405</td>
								<td>2018-02-09</td>
								<td>30000원</td>
							</tr>


							<tr>
								<td>66</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=157&amp;"><p>[공간&gt;비즈니스&gt;전시&amp;공연장]</p>엠팟</a></td>
								<td>samickcf</td>
								<td>2018-01-24</td>
								<td>1,650,000원</td>
							</tr>


							<tr>
								<td>65</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=156&amp;"><p>[재능&gt;교육&amp;레슨&gt;댄스&amp;무용]</p>한국무용</a></td>
								<td>koo7575</td>
								<td>2018-01-18</td>
								<td>50000원</td>
							</tr>


							<tr>
								<td>64</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=154&amp;"><p>[재능&gt;교육&amp;레슨&gt;외국어]</p>성인전문
										기초회화 ~ 비지니스영어회화 8주 완성</a></td>
								<td>dowan0590</td>
								<td>2018-01-06</td>
								<td>200000원</td>
							</tr>


							<tr>
								<td>63</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=153&amp;"><p>[재능&gt;교육&amp;레슨&gt;과외]</p>중고등
										수업지도!</a></td>
								<td>comboy823</td>
								<td>2017-12-28</td>
								<td>100000원</td>
							</tr>


							<tr>
								<td>62</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=152&amp;"><p>[물건&gt;리빙]</p>의자형
										안마기</a></td>
								<td>l371811</td>
								<td>2017-12-28</td>
								<td>70.000원원</td>
							</tr>


							<tr>
								<td>61</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=151&amp;"><p>[물건&gt;레저&amp;취미&gt;티켓&amp;상품권]</p>스벅아메리카노tall</a></td>
								<td>jd3421</td>
								<td>2017-12-27</td>
								<td>3500원</td>
							</tr>


							<tr>
								<td>60</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=149&amp;"><p>[물건&gt;리빙&gt;기타]</p>던킨도너츠커피앤도넛기프티콘</a></td>
								<td>gtiger51</td>
								<td>2017-12-22</td>
								<td>2000원</td>
							</tr>


							<tr>
								<td>59</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=147&amp;"><p>[물건&gt;레저&amp;취미&gt;티켓&amp;상품권]</p>앤티앤스프레즐(현대백화점)</a></td>
								<td>proghost7</td>
								<td>2017-12-22</td>
								<td>1500원</td>
							</tr>


							<tr>
								<td>58</td>
								<td class="title"><a
									href="?gonguMode=view&amp;intseq=146&amp;"><p>[물건&gt;레저&amp;취미&gt;티켓&amp;상품권]</p>롯데시네마
										주말1인 예매권 </a></td>
								<td>manu23</td>
								<td>2017-12-22</td>
								<td>7000원</td>
							</tr>

						</tbody>
					</table>
					<!-- e: 판매관리 - 1:1공유문의 - 리스트  -->
					<div class="list_page">
						<a href="?page=1&amp;" class="first_btn">처음</a><a
							href="?page=1&amp;" class="first2_btn">이전</a>
						<ul>
							<li><a href="#" class="on">1</a></li>
							<li><a href="?page=2&amp;">2</a></li>
							<li><a href="?page=3&amp;">3</a></li>
							<li><a href="?page=4&amp;">4</a></li>
							<li><a href="?page=5&amp;">5</a></li>
							<li><a href="?page=6&amp;">6</a></li>
							<li><a href="?page=7&amp;">7</a></li>
						</ul>
						<a href="?page=7&amp;" class="last2_btn">다음</a><a
							href="?page=11&amp;" class="last_btn">맨뒤</a>
					</div>
					<div class="btn_joinL">
						<a href="requestShareForm.jsp"><span>재능요청하기</span></a>
					</div>

				</div>

				<br><br><br><br>
				<%@ include file="../common/footer.jsp"%>
</body>
</html>