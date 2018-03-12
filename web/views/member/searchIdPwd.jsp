<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 비밀번호 찾기</title>
<style>
.idPwSearch_wrap { display:inherit; margin:0 auto; width:990px; padding:80px 0 20px 0; text-align:center; }
.idPwSearch_wrap dd {float:left; width:450px; border:1px solid #dedede; padding:20px 20px 30px 20px; }
.idPwSearch_wrap dd:first-child { border-right:none;}
.idPwSearch_wrap h3 { font-size:14px; font-weight:600; color:#444444; text-align:left; }
.idPwSearch_wrap p	{ display:block; height:32px; margin:30px 0 10px 0; color:#666666; font-size:13px; font-weight:400; text-align:left;}
.btn_idPwSearch { display: inline-block; width:120px; border-radius: 2px; color:white; font-size: 15px; font-weight:600; line-height: 40px; text-align:center; background: darkgray;}
.table_box2			{ width:100%; border-top:1px solid #e6e6e6; border-left:1px solid #e6e6e6; border-right:1px solid #e6e6e6; text-align:left; margin-bottom:30px;}
.table_box2 th, .table_box2 td		{ height:42px; vertical-align:middle;  border-bottom:1px solid #e6e6e6; color:#666; font-size:13px; font-weight:600; }
.table_box2 th		{ width:70px; text-align:left; padding-left:10px; font-weight:400; background:#efefef; }
.table_box2 td		{ padding:0 10px; background:#efefef; }
.table_box2 input, .table_box2 select	{ height:28px; padding-left:5px; border:1px solid #c6c6c6; color:#666; box-sizing:border-box}

</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<div class="idPwSearch_wrap">
		<form name="idsearchform" id="idsearchform" method="post" action="?member2=IDSearch&amp;">
			<dd>
				<h3>아이디 찾기</h3>
				<p>아래 회원가입 시 입력하신 개인정보를 입력해 주세요.</p>
				<table class="table_box2" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th>이름</th>
							<td><input type="text" name="strname"></td>
						</tr>
						<tr>
							<th>생년월일</th>
							<td><input type="text" name="strJumin1" id="strJumin1"
								maxlength="8" placeholder="YYYYMMDD"></td>
						</tr>
						<tr>
							<th>이메일</th>
							<td><input type="text" maxlength="25" name="strEmail1"
								value="" onkeyup="SetEmailAddress_strEmail(this.form);"
								style="width: 100px;"> @ <input type="text"
								maxlength="25" name="strEmail2a" value=""
								onkeyup="SetEmailAddress_strEmail(this.form);"
								style="width: 100px;" readonly=""> <select
								style="width: 82px;" name="strEmail2b"
								onchange="changeEmailType_strEmail(this.form, this.value);SetEmailAddress_strEmail(this.form);">

									<option value="">선택</option>
									<option value="naver.com">naver.com</option>
									<option value="daum.net">daum.net</option>
									<option value="hotmail.com">hotmail.com</option>
									<option value="nate.com">nate.com</option>
									<option value="yahoo.co.kr">yahoo.co.kr</option>
									<option value="paran.com">paran.com</option>
									<option value="empas.com">empas.com</option>
									<option value="dreamwiz.com">dreamwiz.com</option>
									<option value="freechal.com">freechal.com</option>
									<option value="lycos.co.kr">lycos.co.kr</option>
									<option value="korea.com">korea.com</option>
									<option value="gmail.com">gmail.com</option>
									<option value="hanmir.com">hanmir.com</option>
									<option value="직접입력">직접입력</option>
							</select> <input type="hidden" name="strEmail" value=""> <script
									language="javascript">
							<!--
								function changeEmailType_strEmail(frm,
										emailType) {
									frm.strEmail2a.value = "";
									if (emailType == "직접입력") {
										frm.strEmail2a.readOnly = false;
										frm.strEmail2a.focus();
									} else {
										frm.strEmail2a.readOnly = true;
										frm.strEmail2a.value = emailType;
									}
								}
								function SetEmailAddress_strEmail(frm) {
									frm.strEmail.value = frm.strEmail1.value
											+ "@" + frm.strEmail2a.value;
								}
							//-->
							</script></td>
						</tr>

					</tbody>
				</table>
				<a href="#" class="btn_idPwSearch" onclick="idsearch()">확인</a>
			</dd>
		</form>
		<dd>
			<h3>비밀번호 찾기</h3>
			<p>아래 회원가입 시 입력하신 정보를 입력하시면 메일을 통해 임시 비밀번호를 안내해 드립니다.</p>
			<form name="idsearchform2" id="idsearchform2" method="post"
				action="?member2=pwsearch&amp;">
				<table class="table_box2" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
							<th>아이디</th>
							<td><input type="text" name="strId"></td>
						</tr>
						<tr>
							<th>이름</th>
							<td><input type="text" name="strname"></td>
						</tr>
						<tr>
							<th>휴대폰</th>
							<td><select style="width: 82px;" name="strMobil1"
								onchange="SetHandPhone_strMobil(this.form);">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
									<option value="018">018</option>
									<option value="019">019</option>
							</select> - 
							<input style="width: 80px;" type="text" maxlength="4" size="4" name="strMobil2" value="" onkeyup="if(isNaN(this.value))this.value='';SetHandPhone_strMobil(this.form);">
								- 
								<input style="width: 80px;" type="text" maxlength="4" size="4" name="strMobil3" value="" onkeyup="if(isNaN(this.value))this.value='';SetHandPhone_strMobil(this.form);">
								<input type="hidden" name="strMobil" value=""> 
								<script language="javascript">
								<!--
									function SetHandPhone_strMobil(frm) {
										frm.strMobil.value = frm.strMobil1.value
												+ "-"
												+ frm.strMobil2.value
												+ "-" + frm.strMobil3.value;
									}
								//-->
								</script>
								</td>
						</tr>
					</tbody>
				</table>
				<a href="#" class="btn_idPwSearch" onclick="idsearch2()">확인</a>
			</form>
		</dd>
	</div>
	<br><br><br><br><br><br>
	<br><br><br><br><br><br><br><br><br><br><br><br>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>