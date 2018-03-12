<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
#title {
	text-align:center;
}
#login{
	width:240px;
	height:40px;
	background:rgb(94, 94, 94);
	color:white;
}

#join{
	margin-left:160px;
}
#forJoin,#forSearch{
	text-decoration:none;
	color:black;
}
#forJoin:hover{
	color:darkgray;
}
#forSearch:hover{
	color:darkgray;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<h1 id="title">Login</h1>
	<hr>

	<div align="center">
		<!-- <img src="../../Pimages/icon.jpg" id="icon"> -->
		<br><br><br>
		<form action="<%=request.getContextPath()%>/login" method="post">

			<input size="40" type="text" name="userId" placeholder="아이디를 입력하세요">
			<br><br>
			<input size="40" type="password" name="password" placeholder="비밀번호를 입력하세요"> <br>
			<br> 
			<input type="submit" value="Login" id="login"> <br>
			<br>
			<label id="join"><a href="join_step1.jsp" id="forJoin">회원가입</a></label> &nbsp; 
			<label><a href="searchIdPwd.jsp" id="forSearch"> Id/Pwd 찾기 </a></label>
		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br><br><br>
	<%@ include file="../common/footer.jsp"%>
	
</body>
</html>