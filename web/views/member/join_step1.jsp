<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title>회원가입</title>
<style>
#join_title {
	padding-left: 300px;
}

.agree {
	padding-left: 450px;
}

.step {
	border: 1px solid #b4b4b4;
	width: 250px;
	height: 40px;
	text-align: center;
}

#step1 {
	background: lightgray;
}

textarea {
	text-align: justify;
	overflow: scroll;
	width: 700px;
	border: 1px solid black;
	height: 200px;
}

#next {
	width: 200px;
	height: 50px;
	border:none;
	border-radius:10px;
	background: rgb(94, 94, 94);
	color: white;
}
</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>
	<h2 id="join_title">회원가입</h2>
	<hr>

	<div align="center">
		<table>
			<tr>
				<th class="step" id="step1"><h4>
						<strong>STEP1</strong>
					</h4></th>
				<th class="step" id="step2"><h4>STEP2</h4></th>
			</tr>
		</table>
	</div>
	<br>
	<br>


	<div class="agree">
		<h3 id="agree">이용약관 동의</h3>
		<div class="textarea">
			<textarea>
		제 1장 총칙 제 1조 (목적) 본 약관은 (주)쉐어피플(이하 “회사”라
		함)이 운영하는 “쉐어피플” 사이트(www.sharepeople.co.kr, 이하 “쉐어피플”이라 함)와 스마트폰 등
		이동통신기기를 통해 제공되는 ‘쉐어피플’ 모바일 애플리케이션(이하 “모바일쉐어피플”이라고 합니다)을 통해서 제공하는 중개
		서비스 및 기타 정보서비스 (이하 “서비스”라 함)와 관련하여, 회사와 이용자의 권리, 의무 및 책임사항을 정하는 것을
		목적으로 합니다. 제 2조 (용어의 정의) 본 약관에서 사용하는 용어의 정의는 아래와 같습니다. ① "쉐어피플"라 함은 회사가
		재화 또는 용역을 이용자에게 제공하기 위하여 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함) 등
		정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 웹사이트(www.sharepeople.co.kr)를
		말합니다. ② “서비스"라 함은 회사가 판매자 또는 구매자의 거래를 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게
		분류 가공, 집계하여 정보를 제공하는 서비스와 해당 인터넷 주소에서 제공하는 모든 부대 서비스를 말합니다. ③ “회원”이라
		함은 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다. 1.
		일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인 2. 판매회원(판매자):
		회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인 ④ “아이디(ID)”라 함은 회원의
		식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다. ⑤ “비밀번호”라 함은
		회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
		⑥ “공유정보”라 함은 회원이 서비스를 이용함에 있어 서비스상에 게시한 부호?문자?음성?음향?화상?동영상 등의 정보 형태의
		글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다 ⑦ “직거래”라 함은 회사가 제공하는 서비스를 이용하지 않고 이메일,
		연락처, 메신저 아이디 등 교환을 통한 개인간 거래를 통한 거래를 말합니다 ⑧ “프로필”이라 함은 회원이 경력, 자기소개,
		포트폴리오를 관리할 수 있는 란을 말합니다 ⑨ “중개서비스”라 함은 회사의 서비스(www.sharepeople.co.kr)을
		통하며 회원들에게 제공하는 중개서비스 및 관련 부가서비스 일체를 말합니다. ⑩ “안전거래서비스”라 함은 회사가 구매자의
		결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
		</textarea>
		</div>
		<p class="agreeCk">
			<input type="checkbox" name="strAgree"> 위의 이용약관에 동의합니다.
		</p>
	</div>

	<br>
	<br>
	<br>
	<div class="agree">
		<h3 id="agree">개인정보처리방침 동의</h3>
		<div class="textarea">
			<textarea>
		제 1장 총칙 제 1조 (목적) 본 약관은 (주)쉐어피플(이하 “회사”라
		함)이 운영하는 “쉐어피플” 사이트(www.sharepeople.co.kr, 이하 “쉐어피플”이라 함)와 스마트폰 등
		이동통신기기를 통해 제공되는 ‘쉐어피플’ 모바일 애플리케이션(이하 “모바일쉐어피플”이라고 합니다)을 통해서 제공하는 중개
		서비스 및 기타 정보서비스 (이하 “서비스”라 함)와 관련하여, 회사와 이용자의 권리, 의무 및 책임사항을 정하는 것을
		목적으로 합니다. 제 2조 (용어의 정의) 본 약관에서 사용하는 용어의 정의는 아래와 같습니다. ① "쉐어피플"라 함은 회사가
		재화 또는 용역을 이용자에게 제공하기 위하여 단말기(PC, TV, 휴대형단말기 등의 각종 유무선 장치를 포함) 등
		정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 웹사이트(www.sharepeople.co.kr)를
		말합니다. ② “서비스"라 함은 회사가 판매자 또는 구매자의 거래를 목적으로 등록하는 자료를 DB화하여 각각의 목적에 맞게
		분류 가공, 집계하여 정보를 제공하는 서비스와 해당 인터넷 주소에서 제공하는 모든 부대 서비스를 말합니다. ③ “회원”이라
		함은 회사에 개인정보를 제공하여 회원등록을 한 개인 또는 법인으로서, 다음과 같이 일반회원과 판매회원으로 구분이 됩니다. 1.
		일반회원(구매자): 회사에서 제공하는 구매서비스를 이용할 수 있는 14세 이상의 개인이나 법인 2. 판매회원(판매자):
		회사에서 제공하는 구매서비스 및 판매서비스를 이용할 수 있는 14세 이상의 개인이나 법인 ④ “아이디(ID)”라 함은 회원의
		식별과 서비스 이용을 위하여 회원이 설정하고 회사가 승인하여 등록된 문자와 숫자의 조합을 말합니다. ⑤ “비밀번호”라 함은
		회원의 동일성 확인과 회원의 권익 및 비밀보호를 위하여 회원 스스로가 설정하여 회사에 등록한 영문과 숫자의 조합을 말합니다.
		⑥ “공유정보”라 함은 회원이 서비스를 이용함에 있어 서비스상에 게시한 부호?문자?음성?음향?화상?동영상 등의 정보 형태의
		글, 사진, 동영상 및 각종 파일과 링크 등을 의미합니다 ⑦ “직거래”라 함은 회사가 제공하는 서비스를 이용하지 않고 이메일,
		연락처, 메신저 아이디 등 교환을 통한 개인간 거래를 통한 거래를 말합니다 ⑧ “프로필”이라 함은 회원이 경력, 자기소개,
		포트폴리오를 관리할 수 있는 란을 말합니다 ⑨ “중개서비스”라 함은 회사의 서비스(www.sharepeople.co.kr)을
		통하며 회원들에게 제공하는 중개서비스 및 관련 부가서비스 일체를 말합니다. ⑩ “안전거래서비스”라 함은 회사가 구매자의
		결제대금의 보호를 위하여 일정 기간 동안 결제대금을 예치하는 서비스를 말합니다.
		</textarea>
		</div>
		<p class="agreeCk">
			<input type="checkbox" name="strAgree"> 위의 이용약관에 동의합니다.
		</p>
	</div>

	<div align="center">
		<button id="next" onclick="goNext();">다음</button>
	</div>
	<script>
		function goNext() {
			location.href = "join_step2.jsp";

		}
	</script>
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
	<br>
	<%@ include file="../common/footer.jsp"%>
</body>
</html>