<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>재능등록</title>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
 @import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
    h1,p,h2,h3 { font-family: 'Nanum Pen Script', cursive; }
    
table, textarea{
	width: 100%;
}
 body{
 
 padding:50px;
 }
 ol{
 	background-color: #dddddd;
	 margin: 0;
    padding: 20px;
  	list-style-type: none;
 }
 li{
  margin: 10px;
   
 }
 #option3{
 display: inline;
 width:20%;
 flow:left;
 }
 
  #category{
  margin: 10px;
  display: inline;
   
 }
  ul{
	 margin: 0;
    padding: 0;
  	list-style-type: none;
  	
 }
h1, h2, h3{
	margin-top: 60px;
}
#option1, #option2{
	 padding: 10px;
	background-color:#dddddd;
	border: 1px solid gray;
}


th class="active"{
	background-color:#dddddd
	width class="active": 20%;
}


</style>


</head>

<body>
<%@ include file="../common/header.jsp" %>
	<h1>header</h1>
	<hr>
  <!-- header 부분 -->

		<div id="Container" >
      <h1>재능등록</h1>
          <ol>
            <li>1. 공유 판매가 아닌 홍보성 글이나 무성의한 글은 승인이 거절됩니다.</li>
            <li>2. 직거래를 유도하는 공유 상품은 사전 경고없이 삭제 처리되며, 서비스 이용에 제한이 있을 수 있습니다.</li>
            <li>3. 연락처, 이메일 등 개인정보가 포함된 글은 관리자에 의해 임의로 삭제될 수 있습니다.</li>
          </ol>

		<h2>재능 카테고리 선택</h2>

<form action = "?" method="post">
  <ul>
  <li id="category">
	<select class="btn btn-default">
		<option>1차 카테고리 선택</option>
		<option>시간</option>
		<option>재능</option>
		<option>물건</option>
		<option>공간</option>
		<option>차량</option>
	</select>
</li>

 <li id="category">
<select class="btn btn-default">
<option>2차 카테고리 선택</option>
<option>시간</option>
</select>
</li>

 <li id="category">
<select class="btn btn-default">
<option>3차 카테고리 선택</option>
<option>시간</option>
</select>
</li>

 <li id="category">
<select class="btn btn-default">
<option>4차 카테고리 선택</option>
<option>시간</option>
</select>
</li>

</ul>
</form>

<h2>재능 기본정보 입력</h2>
<table class="table table-bordered">

  <tr>
    <th class="active">재능판매형식</th>
    <td>
      <input type="radio" value="0">일반형(비배송형)
      <input type="radio" value="1"> 배송형
  </tr>
    <tr>
    <th class="active">재능명</th>
    <td><input type="text" class="btn btn-default" max length='55' placeholder="공유명 단어들이 검색시 반영됩니다(55자 이내)"></td>
  </tr>
  <tr>
    <th class="active">재능간단설명</th>
    <td><textarea placeholder=" 재능 설명 (80자 이내)" cols="100" rows="2"></textarea>
    </td>

  </tr>
  <tr>
    <th class="active">주문상황 알림연락처</th>
    <td>
<input type="text" class="btn btn-default" maxlength="4" size="4" value="">
<input type="text" class="btn btn-default" maxlength="4" size="4" value="">
<input type="text" class="btn btn-default" maxlength="4" size="4" value="">
</td>
  </tr>

  <tr>
    <th class="active">판매상태 *</th>
    <td><input type="radio" value="1">판매중
    <input type="radio" value="0">판매대기</td>
  </tr>
</table>

<h2>가격정보</h2>
<table class="table table-bordered">
  <tr>
    <th class="active">기본가격</th>
    <td><input type="text" class="btn btn-default" placeholder="내용을입력해주세요"> 원</td>
  </tr>
  <tr>
    <th class="active">주문옵션</th>
    <td>
      <input type="radio" value="0" onClick="Toggle('1');" checked>옵션 없음
      <input type="radio" value="1" onClick="Toggle('2');">옵션 있음
       <button class="btn btn-default" ><a href="#">옵션등록가이드</a></button>
      </td>
  </tr>

</table>
    <input type="hidden" name="g_sel" id="g_sel">
    <input type="hidden" name="g_sel2" id="g_sel2">
      <div class="register_option 2" style="display:none;">
      <div id="option1">
        <ul id="option3">
            <li class="btn btn-default" >주문 옵션 구분1</li>
              <li><select class="select" id="j_sel" onChange="getSelectValue();">
                  <option value="선택">선택</option>
                  </select>
              </li>

              <li>옵션명 :
              <div><input type="text" name="g_op" id="j_op"></div></li>
              <li><a href="#" onclick="optionadd();">등록</a>
                <a href="#" onclick="optionedit();">수정</a>
                <a href="#" onclick="optiondel();">삭제</a></li>
        </ul>
        
        </div>
        <div id="option2">
        <ul id="option3">
            <li>주문 옵션 구분2</li>
              <li>
                <select name="j_sel2" class="select" id="j_sel2" onchange="getSelectValue2();">
                  <option value="선택">선택</option>
                </select>
              </li>
              <li>옵션명 : 		<div><input type="text"  id="j_op2" placeholder=", / 는 사용하실수 없습니다"></div></li>
              <li>추가가격 : 		<div><input type="text" id="j_op3" value="0"></div></li>
              <li>추가일 : 	<div><input type="text" id="j_op4" value="0"></div></li>
              <li><a href="#" onclick="optionadd2();">등록</a>
                  <a href="#" onclick="optionedit2();">수정</a>
                  <a href="#" onclick="optiondel2();">삭제</a></li>
          </ul>
      </div>
	</div>

<h2>재능 이미지등록 </h2>
<table class="table table-bordered">

<form action="#"  method="post" enctype="multipart/form-data">
  <tr>
    <th class="active">리스트 이미지</th>
    	
      <td><input type="file"
        onchange="javascript:document.getElementById('file_route1').value=this.files[0].name">
      </td>
  </tr>

</table>

<h2>재능 상세설명</h2>
<table class="table table-bordered">
<textarea cols="120" rows="10"></textarea>

  


</form>
<br>
<button id="register" class="btn btn-default"><a href="#">재능등록</a></button>
<hr>

<%@ include file="../common/footer.jsp" %>
<!-- footer -->
</table>
</div>


<!-- event  -->

<!-- function -->
<script type="text/javascript">
function Toggle(item) {
//obj=document.getElementById(item);
var x = document.getElementsByClassName("2");
var i;
  if (item=='1') {
  for(i=0; i<x.length; i++){
  x[i].style.display="none";
  }
  }
  else {
    for(i=0; i<x.length; i++){
    x[i].style.display="";
    }
  }
}

$('#imgreset').click(function(){

    $('#file_route1').val("");
    $('#imgInp').val("");
    $('#showimg').attr('src', '');
    $('#imgreset').removeAttr('checked');

});

function getSelectValue()
{
document.getElementById("j_op").value = document.getElementById("j_sel").options[document.getElementById("j_sel").selectedIndex].text;
}

function getSelectValue2()
{
  var x = document.getElementById("j_sel2").options[document.getElementById("j_sel2").selectedIndex].value;
  var y = x.split('/');
document.getElementById("j_op2").value = y[1];
document.getElementById('j_op3').value = y[2];
document.getElementById('j_op4').value = y[3];
}
</script>
</div>
</div>
</div>

</body>
</html>
