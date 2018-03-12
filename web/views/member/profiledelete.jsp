<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	width: 1100px;
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

.person_change { width:700px; border:1px solid #dedede; border-bottom:none; margin-bottom:30px; font-size:13px;}
.person_change th{ text-align:left; background:#efefef;	color:#666;	font-weight:normal; padding-left:25px; border-bottom:1px solid #e6e6e6; height:40px; }
.person_change td{ position:relative; padding:6px 0 6px 9px; color:#666; border-bottom:1px solid #e6e6e6; }
.person_change p {	margin-left:10px;}
.person_change input {	border:1px solid #c6c6c6;	outline:none;	height:26px; 	padding-left:5px;}
.gongU {border: none !important;  width: 230px;}
.person_change input.max { width:98%; }
.person_change textarea.max { width:98%; height:180px; border: 1px solid #c6c6c6; }
.person_change select {	border:1px solid #c6c6c6;	outline:none;	height:28px; 	padding-left:5px;}
.person_change textarea {	border:1px solid #e6e6e6;	outline:none;	height:100px; 	width:96%;	padding-left:5px;}
.person_change input[type=password] {	width:235px;}
.person_change input[type=email], .person_change input[type=url] {	width:290px;}
.person_change input[type=tel]{	width:80px;}

.btn_bottom { margin-top: 6px; text-align: center; }
.btn_bottom span { display: inline-block; width: 120px; padding: 0; border-radius: 3px; color: #fff; font-size: 16px; font-weight:600; line-height: 40px; background: darkgray; }
.bor_btm266 { border-bottom: 2px solid #666666;  }
.m_bottom20 {margin-bottom:20px !important; width:700px;} 


</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id='A_Container_Wrap'>
		<div id='A_Container'>
			<%@ include file="../mypage/mypageleft.jsp"%>
			<!--  -->

			<div id="A_Container_C" style="margin-left:20px">
				<br>
				<h1  class="bor_btm266 m_bottom20">회원정보 변경</h1>
				<form name="Delform" method="post" action="?member2=DelOk&amp;">
					<table class="person_change" cellspacing="0">
						<tbody>
							<tr>
								<th>아이디</th>
								<td>보여줄 아이디 자리</td>
							</tr>
							<tr>
								<th>비밀번호 *</th>
								<td><input type="password" name="strPwd" id="strPwd"></td>
							</tr>
							<tr>
								<th>탈퇴사유*</th>
								<td><textarea name="strActionMessage" cols="70" rows="6" placeholder="작성해주세요" style="resize:none;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div class="btn_bottom f_right">
						<a href="#"><span>탈퇴</span></a> 
						<a href="../main/Realmain.jsp"><span class="bg979797">취소</span></a>
					</div>
				</form>

			</div>
		</div>
	</div>
</body>
</html>

