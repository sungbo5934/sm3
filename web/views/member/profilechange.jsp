<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 사진을 원모양으로 만들기 위한 bootstrap -->
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!--  -->
<style>
#A_Container_L {
	float: left;
	width: 200px;
}

#A_Container_C {
	width: 770px;
	float: left;
	overflow: hidden;
}

#A_Container {
	width: 1000px;
	margin: 0 auto;
	margin-top: 50px;
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

/*  */

.ChangeContainer{
	/* border:1px solid black; */
	width:780px;
	height:1000px;
	float:left;
	margin-left:10px;
}
.changePhoto{
	background:LightGray ;
		border-radius:10px;
}
.modifyBtn{
	width:60px;
	border:none;
	border-radius:10px;
	background:darkgray;
	color:white;
	height:40px;
	float:right;
	margin-right:10px;
	margin-top:180px;
}
.img-circle{
	margin-left:300px;
	margin-top:30px;
}
</style>
<title>프로필 수정</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id='A_Container_Wrap'>
		<div id='A_Container'>
			<%@ include file="../mypage/mypageleft.jsp"%>

			<!--  -->
			<div class="ChangeContainer">
			<h1 style="margin-left:20px;">프로필 수정</h1>
			
			<div class="changePhoto">
			 	<img src="/p/Pimages/city1.PNG" id="profileImg" class="img-circle" alt="프로필 사진" width="200" height="200">
			 	<button class="modifyBtn">삭제</button>
			 	<button class="modifyBtn">수정</button>
			 	<br>
			 <label style="margin-left:360px; font-size:25px; color:rgb(94,94,94);" ><b>닉네임</b></label>
			</div>
			<br>
			
			<div class="tableContainer">
				<table style="width:200px;" class="table">
					<tr class="tr">
						<th class="td">기술 / 자격
						<button style="color:red; border:none; background:white; float:right;">+ 추가</button></th>
					</tr>
					<tr class="tr">
						<td class="td">
						<div style="width:200px; height:40px; border:1px solid lightgray;" >
							등록된 글이 없습니다.
						</div>					
						</td>	
					</tr>
					<tr class="tr">
						<th class="td">자격증
						<button style="color:red; border:none; background:white; float:right;">+ 추가</button></th>
					</tr>
					<tr class="tr">
						<td class="td">
						<div style="width:200px; height:40px; border:1px solid lightgray;" >
							등록된 글이 없습니다.
						</div>					
						</td>	
					</tr>
					<tr class="tr">
						<th class="td">경력사항
						<button style="color:red; border:none; background:white; float:right;">+ 추가</button></th>
					</tr>
					<tr class="tr">
						<td class="td">
						<div style="width:200px; height:40px; border:1px solid lightgray;" >
							등록된 글이 없습니다.
						</div>					
						</td>	
					</tr>
					<tr class="tr">
						<th class="td">자격증
						<button style="color:red; border:none; background:white; float:right;">+ 추가</button></th>
					</tr>
					<tr class="tr">
						<td class="td">
						<div style="width:200px; height:40px; border:1px solid lightgray;" >
							등록된 글이 없습니다.
						</div>					
						</td>	
					</tr>
				</table>
			</div>
			<h3>"회원님"의 평가 | 상품들</h3>
			<div style="float:left; background:darkgray; width:800px; height:400px; ">
				
			</div>
		</div>
	</div>
</body>
</html>