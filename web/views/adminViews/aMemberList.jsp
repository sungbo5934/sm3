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

#Home {background-color: red;}
#News {background-color: green;}
#Contact {background-color: blue;}
#About1 {background-color: orange;}
#About2 {background-color: orange;}

.outer2{
	float:left;
	width:1100px;
	height:100%;
	margin-left:180px;
}
.table1{
	border:1px solid black;
	width:700px;
	height:400px;
	margin-top:50px;
	margin-bottom:auto;
	margin-left:auto;
	margin-right:auto;
	text-align:center;
}
.table1 th{
	border:1px solid black;
	height:30px;
}
.table1 td{
	border:1px solid black;
	height:30px;
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
<button class="tablink" onclick="openPage('About1', this, 'orange')">신고</button>
<span></span>
<button class="tablink" onclick="openPage('About2', this, 'orange')">블랙하기</button>
<span></span>

<div id="About1" class="tabcontent">
  <h3 style="text-align:center">신고된 회원</h3>
  <form>
  	<table class="table1">
  		<th>
  			<h5>신고한유저</h5>
  		</th>
  		<th>
  			<h5>신고제목</h5>
  		</th>
  		<th>
  			<h5>신고날짜</h5>
  		</th>
  		<th>
  			<h5>신고당항유저</h5>	
  		</th>
  		<tr >
  			<td><a href="aMemberListDetail.jsp">godsungbo</a></td>
  			<td><a href="aMemberListDetail.jsp">너무 뚱뚱함</a></td>
  			<td><a href="aMemberListDetail.jsp">2018-2-26 PM12:20</a></td>
  			<td><a href="aMemberListDetail.jsp">goddayoon</a></td>
  		</tr>
  		<tr></tr>
  		<tr></tr>
  		<tr></tr>
  	</table>
  </form>
</div>

<div id="About2" class="tabcontent">
	<h3 style="text-align:center">블랙때리기</h3>
  	<div class="blackArea">
  		<input type="text" class="blackUserArea" value="그녀석 아이디를 입력하라">
  		<button>블랙하기</button> 
  	</div>
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