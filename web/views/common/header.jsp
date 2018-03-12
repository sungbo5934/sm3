<%@page import="com.kh.tc.customer.model.vo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<% Customer loginUser =(Customer)session.getAttribute("loginUser"); %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Poppins"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script"
   rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Kavivanar|Ubuntu"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
   href="https://fonts.googleapis.com/css?family=Karma">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
   href="https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display"
   rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
   <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>오늘의 동료</title>
<style>
#char {
   /*    font-family: 'Nanum Pen Script', cursive; */
   font-family: 'Poppins', sans-serif;
   margin-top: 60px;
   font-size: 55px;
   margin-left: 180px;
}

#search {
   margin-top: 130px;
   margin-left: 130px;
   height: 40px;
   width: 220px;
}

#searchBtn {
   width: 50px;
   height: 50px;
}

.w3-button {
   font-family: 'Ubuntu', sans-serif;
} 

.dropbtn {
    background-color:white;
    color: black;
    padding: 16px;
    font-size: 15px;
    border: none;
   
}

.dropdown {
    position: relative;
    display: inline-block;
   padding-right:40px;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color:rgb(94, 94, 94);
    color:white;
}
.outer{
   
   border:1px solid lightgray;
}
.secondOuter{
margin-left:450px;
}
</style>
</head>
<body>
   
   <div class="w3-top">
   <% if(loginUser == null){ %>
      <div class="w3-bar w3-white w3-wide w3-padding w3-card">
         <a href="../main/Realmain.jsp" class="w3-bar-item w3-button">Today's
            Colleague</a>
         <!-- Float links to the right. Hide them on small screens -->
         <div class="w3-right w3-hide-small">
            <a href="../member/login.jsp" class="w3-bar-item w3-button">Login</a>
            <a href="../member/join_step1.jsp" class="w3-bar-item w3-button" id="loginForm">Join</a>
         </div>
      </div>
      <%}else{ %>
      <div class="w3-bar w3-white w3-wide w3-padding w3-card">
         <a href="../main/Realmain.jsp" class="w3-bar-item w3-button">Today's Colleague</a>
         <!-- Float links to the right. Hide them on small screens -->
         <div class="w3-right w3-hide-small">
            <a href="<%= request.getContextPath()%>/logout" class="w3-bar-item w3-button" id="logout">Logout</a> 
            <a href="/p/views/member/myPage.jsp" class="w3-bar-item w3-button" id="mypage">My Page</a>
         </div>
      </div>
      <%} %>
   </div>
   <script>
   function login(){
      $("#loginForm").submit();
   }
   </script>

   <div class="row">
      <!-- 아이콘 -->
      <div class="row1 col-lg-4 ">
         <div class="icon">
            <p id='char'>
               <b>Today's Colleague</b>
            </p>
         </div>
      </div>

      <!-- 검색창 -->
      <div class="row1 col-lg-8">
         <input id="search" type="text" placeholder="검색어를 입력하세요 "> <img
            id="searchBtn" src="/p/Pimages/search.PNG" href="#">
      </div>
      <!-- <div class="row1 col-lg-3"></div> -->
   </div>

   <!-- 카테고리 -->
   
   <div class="outer">
      <div class="secondOuter">
      <div class="dropdown">
        <button class="dropbtn">시간</button>
         <div class="dropdown-content">
              <a href="/p/views/product/sellpage.jsp"><b>실시간</b></a>
             <a href="/p/views/product/sellpage.jsp">우산대여</a>
             <a href="/p/views/product/sellpage.jsp">카풀</a>
             <a href="/p/views/product/sellpage.jsp">퀵서비스</a>
         </div>
      </div>
      <div class="dropdown">
      <button class="dropbtn">재능</button>
         <div class="dropdown-content">
             <a href="/p/views/product/sellpage.jsp">Link 1</a>
             <a href="/p/views/product/sellpage.jsp">Link 2</a>
             <a href="/p/views/product/sellpage.jsp">Link 3</a>
         </div>
      </div>

      <div class="dropdown">
      <button class="dropbtn">물건</button>
         <div class="dropdown-content">
             <a href="/p/views/product/sellpage.jsp">Link 1</a>
             <a href="/p/views/product/sellpage.jsp">Link 2</a>
             <a href="/p/views/product/sellpage.jsp">Link 3</a>
         </div>
      </div>
      <div class="dropdown">
      <button class="dropbtn">공간</button>
         <div class="dropdown-content">
             <a href="/p/views/product/sellpage.jsp">Link 1</a>
             <a href="/p/views/product/sellpage.jsp">Link 2</a>
             <a href="/p/views/product/sellpage.jsp">Link 3</a>
         </div>
      </div>
      <div class="dropdown">
      <button class="dropbtn">차량</button>
         <div class="dropdown-content">
             <a href="/p/views/product/sellpage.jsp">Link 1</a>
             <a href="/p/views/product/sellpage.jsp">Link 2</a>
             <a href="/p/views/product/sellpage.jsp">Link 3</a>
         </div>
      </div>
      <div class="dropdown">
      <button class="dropbtn" onclick="location.href='/p/views/category/requestShare.jsp'">공유요청</button>
        </div>
      <div class="dropdown">
        <button class="dropbtn" onclick="location.href='/p/views/community/FAQ.jsp'">커뮤니티</button>
      </div>
      </div>
   </div>

</body>
</html>