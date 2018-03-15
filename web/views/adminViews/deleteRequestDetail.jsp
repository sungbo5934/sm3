<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<style>
body {
    font-family: "Lato", sans-serif;
}

.sidenav {
    height: 100%;
    width: 0;
    position: fixed;
    z-index: 1;
    top: 0;
    left: 0;
    background-color: #111;
    overflow-x: hidden;
    transition: 0.5s;
    padding-top: 60px;
}

.sidenav a {
    padding: 8px 8px 8px 32px;
    text-decoration: none;
    font-size: 25px;
    color: #818181;
    display: block;
    transition: 0.3s;
}

.sidenav a:hover {
    color: #f1f1f1;
}

.sidenav .closebtn {
    position: absolute;
    top: 0;
    right: 25px;
    font-size: 36px;
    margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
#mySidenav{
	width:180px;
}

* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
    height: 100%;
    margin: 0;
    font-family: Arial;
}

/* Style tab links */
.tablink {
    background-color: #555;
    color: white;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    font-size: 17px;
    width: 25%;
}

.tablink:hover {
    background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
    color: white;
    display: none;
    padding: 100px 20px;
    height: 693px;
}


#About1 {background-color: lightgray;}


.outer2{
	float:left;
	width:1100px;
	height:100%;
	margin-left:180px;
}
.table1{
	border:1px solid white;
	background:black;
	width:700px;
	height:400px;
	margin-top:50px;
	margin-bottom:auto;
	margin-left:auto;
	margin-right:auto;
	text-align:center;
}
.table1 th{
	border:1px solid white;
	height:30px;
}
.table1 td{
	border:1px solid white;
	height:30px;
}
.blackUserArea{
	width:200px;
}
.blackArea{
	margin-bottom:auto;
	margin-left:auto;
	margin-right:auto;
	text-align:center;
}
</style>
<body>
</head>
<body>
<div class="outer">
<div id="mySidenav" class="sidenav outer1" >
  <a href="aMemberList.jsp" style="color:white">회원</a>
  <a href="productRequestList.jsp">상품</a>
  <a href="totalIncome.jsp">매출</a>
  <a href="qnaList.jsp">QnA</a>
</div>
<div class="outer2"> 
<button class="tablink" onclick="openPage('About1', this, 'lightgray')">삭제 요청 상품</button>
<span></span>


<div id="About1" class="tabcontent">
  <h3 style="text-align:center">삭제 요청 내용</h3>
  <form>
  	<table class="table1">
  		<tr>
			<td>거래중 여부</td>
			<td>
				<span>Y</span>
			</td>
			<td>상품제목</td>
			<td colspan="3">
				<span>너무 뚱뚱함</span>
			</td>
		</tr>
		<tr>
			<td>신청자</td>
			<td>
				<span>godsungbo</span>
			</td>
			<td>작성일</td>
			<td>
				<span>2018-02-26 PM12:20</span>
			</td>
		</tr>
		<tr>
			<td colspan="6">내용</td>
		</tr>
		<tr>
			<td colspan="6" rowspan="6">
				<p id="content" >살이 너무 찜 </p>
			</td>
		</tr>
		<tr></tr>
  	</table>
  	<div align="center" style="margin-top:20px;">
		<button><a href="productRequestList.jsp">뒤로가기</a></button>
		<button><a href="#">가리기</a></button>
  	</div>
  </form>
</div>

</div>
</div>
<script>
	
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;
}
window.onload = function(){
	openPage('About1', 'tablink', 'lightgray');
}
/* // Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click(); */
</script>

	
</body>
</html>