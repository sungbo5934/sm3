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

#About1 {background-color: blue;}
#About2 {background-color: green;}


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
<button class="tablink" onclick="openPage('About1', this, 'blue')">상품 등록 신청리스트</button>
<button class="tablink" onclick="openPage('About2', this, 'green')">상품 삭제 신청리스트</button>


<div id="About1" class="tabcontent">
  <h3 align="center">상품등록 신청 현황</h3>
  <form>
  	<table class="table1">
  		<tr>
  			<th>신청자</th>
  			<th>상품 제목</th>
  			<th>카테고리</th>
  			<th>등록시간</th>
  		</tr>
  		<tr>
  			<td><a href="productAgree.jsp">옥자</a></td>
  			<td>살빼자</td>
  			<td>다이어트</td>
  			<td>2018-02-27 PM02:30</td>
  		</tr>
  		<tr></tr>
  		<tr></tr>
  		<tr></tr>
  	</table>
  </form>
</div>

<div id="About2" class="tabcontent">
  <h3 align="center">상품삭제 신청 현황</h3>
  <form>
  	<table class="table1">
  		<tr>
  			<th>신청자</th>
  			<th>상품 제목</th>
  			<th>카테고리</th>
  			<th>요청시간</th>
  		</tr>
  		<tr>
  			<td><a href="deleteRequestDetail.jsp">옥자</a></td>
  			<td>살빼자</td>
  			<td>다이어트</td>
  			<td>2018-02-27 PM02:30</td>
  		</tr>
  		<tr></tr>
  		<tr></tr>
  		<tr></tr>
  	</table>
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
/* // Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click(); */
</script>

   
</body>
</html>