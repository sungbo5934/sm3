<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>My Page</title>
<style>


#A_Container_L {
	float: left;
	width: 200px;
}

#A_Container_C {
	width: 770px;
	float: left;
	overflow: hidden;
	margin-left:40px;
}

#A_Container {
	width: 1100px;
	margin: 0 auto;
	margin-top: 30px;
	margin-bottom: 20px;
	clear: both;
	overflow: hidden;
	min-height: 500px;
}

#A_Container_Wrap {
	width: 100%;
	clear: both;
	height: 100%;
	}


li {
    display: list-item;
    text-align: -webkit-match-parent;
}


</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id='A_Container_Wrap'>
		<div id='A_Container'>
			<%@ include file="communityleft.jsp"%>
 
    <!-- Container 시작 -->
    <div id="A_Container_C">

					<h1>공지사항</h1>
			 
<table width="100%" border="0" class="search">
  <tr>
    <td align="right"><form action="#" method="post" name="board_search" id="board_search">
      <a href="#"> </a>
      <select name="keyword_option" id="keyword_option" class="btn btn-default">
        <option value="b_title">제목</option>
        <option value="b_text">내용</option>
        <option value="b_name">글쓴이</option>
      </select>
      <input name="keyword" type="text" id="keyword" size="20" class="btn btn-default" />
      <button type="button" class="btn btn-info" onclick="search_check();" />검색</button>
   
  
    </form></td>
  </tr>
    <tr>
    <td height="5px"></td>
  </tr>
</table>
<table class="table">
	<colgroup>
		 <col style="width:10%">
		 <col style="width:45%">
		 <col style="width:10%">
		 <col style="width:20%">
		 <col style="width:15%">
 </colgroup>
 <thead>
  <tr>
    <th>No</th>
    <th>제 목</th>
    <th>작성자</th>
    <th>작성일</th>
    <th>조회수</th>
  </tr>
</thead>
 
<tr>
    <td>1</td>
    <td align="left">
        <a href='#' class="global">첫글</a>
        </td>
    <td>관리자</td>
    <td>2018-02-21</td>
    <td>10</td>
  </tr>
  
  
<tr>
    <td>2</td>
    <td align="left">
        <a href='#' class="global">둘째글</a>
        </td>
    <td>관리자</td>
    <td>2018-02-21</td>
    <td>10</td>
  </tr>
  
  <tr>
    <td>3</td>
    <td align="left">
        <a href='#' class="global">셋째글</a>
        </td>
    <td>관리자</td>
    <td>2018-02-21</td>
    <td>10</td>
  </tr>
</table>

<ul class="pager">
   <li><a href="#">Previous</a></li>
  <li><a href="#" class="active">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">Next</a></li>
   </ul>


</div>

</div>

<hr>
<%@ include file="../common/footer.jsp" %>

</div>


</body>
</html>