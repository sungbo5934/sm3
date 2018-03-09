<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!--  -->

<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<!--  -->
<%@ page import="java.net.URLEncoder"%>
<%@ page import="java.net.URL"%>
<%@ page import="java.net.HttpURLConnection"%>
<%@ page import="java.io.BufferedReader"%>
<%@ page import="java.io.InputStreamReader"%>
<!--  -->
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
   content="587645688652-0msja98f50i52bm9178eleus8gk6uafs.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Bootstrap -->
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>Login</title>
<style>
#title {
   text-align: center;
}

#login {
   width: 200px;
   height: 50px;
   background: rgb(94, 94, 94);
   color: white;
}

#join {
   margin-left:160px;
}

#forJoin, #forSearch {
   text-decoration: none;
   color: black;
}

#forJoin:hover {
   color: darkgray;
}

#forSearch:hover {
   color: darkgray;
}

.naverapi,.googleApi {
   text-align: center;
}

.g-signin3 {
   align: center;
   width: 250px;
   height: 50px;
}
.loginByGoogle{
   width:200px;
}
</style>
</head>
<script src="/p/js/hello.js"></script>
<body>
   <%@ include file="../common/header.jsp"%>

   <h1 id="title">Login</h1>
   <hr>

   <div align="center">
      <!-- <img src="../../Pimages/icon.jpg" id="icon"> -->
      <br> <br> <br>
      <form action="<%=request.getContextPath()%>/login" method="post">

         <input size="40" type="text" name="userId" placeholder="아이디를 입력하세요">
         <br> <br> 
         <input size="40" type="password" name="password"placeholder="비밀번호를 입력하세요"> <br> <br>
          <input   type="submit" value="Login" id="login"> <br><br> 
         <label id="join"><a href="join_step1.jsp" id="forJoin">회원가입</a></label>
         &nbsp; <label><a href="searchIdPwd.jsp" id="forSearch">
               Id/Pwd 찾기 </a></label> <br> 

      </form>
   </div>

   <!--네이버 로그인  -->
   <%
      String clientId = "jtu5ZnMavJLLrOoY0CYt";//애플리케이션 클라이언트 아이디값";
      String redirectURI = URLEncoder.encode("http://localhost:8001/p/naverLogin", "UTF-8");
      SecureRandom random = new SecureRandom();
      String state = new BigInteger(130, random).toString();
      String apiURL = "https://nid.naver.com/oauth2.0/authorize?response_type=code";
      apiURL += "&client_id=" + clientId;
      apiURL += "&redirect_uri=" + redirectURI;
      apiURL += "&state=" + state;
      session.setAttribute("state", state);
   %>
   
   
   <!-- 네이버 로그인 -->
   <br>
   <div class="naverapi" >
   <a href="<%=apiURL%>"><img  width=200px; height=50px;
   src="/p/Pimages/LoginNaver.png" /></a>
   </div>
   <!-- 구글 로그인 -->
    <br>
    <div class="googleApi" >
   <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8001/p/googleLogin&response_type=code&client_id=587645688652-0msja98f50i52bm9178eleus8gk6uafs.apps.googleusercontent.com&approval_prompt=force">
   <img src="/p/Pimages/LoginGoogle.png" class="loginByGoogle" >
   </a>
    </div>
   
   <!-- 새로고침 방지 -->



      <br> <br> <br> <br> <br> <br> <br>
      <br> <br> <br> <br> <br> <br> <br>
      <br> <br> <br>
      <%@ include file="../common/footer.jsp"%>
</body>
</html>