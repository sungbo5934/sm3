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

#Home {background-color: gray;}
#News {background-color: gray;}
#Contact {background-color: gray;}
#About {background-color: gray;}

.outer2{
   float:left;
   width:1100px;
   margin-left:180px;
}


#A_Container_C {
	width: 770px;
	float: left;
	overflow: hidden;
	margin:40px;
}
th{
	background-color:#dddddd;
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
<button class="tablink" onclick="openPage('QnA', this, 'red')">Q&A</button>
 

<div id="QnA" class="tabcontent">
  <h3>Home</h3>
  
<div id="A_Container_C">

<colgroup>
	<col style="width:100%;">
	<col style="">
 </colgroup>

<table style="width:100%;" class="table table-bordered">
<tr>
 <th class="firstBar">
			 <h1> Q&A 목록</h1>
		 </th>

</tr>
</table>

<table width="100%" border="0" class="search">
  <tr>
    <td align="left">
      <form action="#" method="post" name="board_search" id="board_search">

        <select name="keyword_option" id="keyword_option" class="btn btn-default">
          <option value="b_title">ID</option>
        </select>
         <input name="keyword" type="text" id="keyword" size="10" class="btn btn-default" />
      ~
      <input name="keyword" type="text" id="keyword" size="10" class="btn btn-default" />
      <button type="button" class="btn btn-info" onclick="search_check();" />검색</button>

      <button type="button" class="btn btn-basic"   />전체보기</button>

    </form>
  </td>
  </tr>

    <tr>
    <td height="5px"></td>
  </tr>
</table>


<table width="100%" border="0" class="search">
<tr>
<td align="right"><form action="#" method="post" name="board_search" id="board_search">
 <a href="#"> </a>

<button type="button" class="btn btn-basic"   />삭제</button>

</form></td>
</tr>
<tr>
<td height="5px"></td>
</tr>
</table>

  <table>

<table style="width:100%;" class="table table-bordered" >
 <colgroup>
     <col style="width:15%;">
		 <col style="width:15%;">
		 <col style="width:70%;">


		 </colgroup>

	 </colgroup>

	 <tbody> <tr align="center">
		 <th> NO.</th>
		 <th>질문자</th>
     	<th>질문내용</th>

	 </tr>
	 <tr align="center">
		 <td><input type="checkbox" name="" value="">2</td>
		 <td>홍길동</td>
     <td>질문있습니다.</td>

	 </tr>
	 <tr align="center">
		 <td><input type="checkbox" name="" value="">1</td>
     <td>유관순</td>
     <td>질문이요</td>

	 </tr>
 </tbody></table>
</div>
 
 
</div>
</div>


<hr>
<input type="checkbox" name="" value="">전체선택
		 <div class="order_button">
				 <button type="button" name="button">페이징 처리</button>
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
        /*  // Get the element with id="defaultOpen" and click on it
         document.getElementById("defaultOpen").click(); */
         </script> 

</body>
</html>
