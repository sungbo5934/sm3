<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../css/buying.css">
<link rel="stylesheet" href="../../css/buying2.css">
<link rel="icon" href="../image/share.ico">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<style>
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

.table1 td{
	border:1px solid black;
	height:30px;
}	
	
	
</style>
</head>
<body>
	<%@ include file="../common/header.jsp" %>
	<table class="table1">
  		<tr align="center">
  			<td><h5>신고한유저</h5></td>
  			<td><h5>신고제목</h5></td>
  			<td><h5>신고날짜</h5></td>
  			<td><h5>신고당항유저</h5></td>
  		</tr>
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
	
	
	
</body>
</html>