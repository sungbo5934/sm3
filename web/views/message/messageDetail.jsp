<%@page import="com.kh.tc.message.model.vo.Message"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
   ArrayList<Message> meList = (ArrayList<Message>)request.getAttribute("meList");
   String receveId = (String)request.getAttribute("receveId");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>전체 메세지</title>
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
.allMessageOuter {
   float: left;
   width: 800px;
   /* border:1px solid black; */
   height: 1000px;
}

.topArea {
   /* border:1px solid red; */
   width: 800px;
   height: 80px;
   margin-top: 30px;
}

.Select {
   width: 140px;
   height: 40px;
   padding-left: 20px;
   margin-left: 50px;
   border-radius: 10px;
}

.showMessageList {
   margin-left: 50px;
   /* border:1px solid red; */
   width: 700px;
   height: 500px;
}

.showListTable {
   width: 700px;
   height: 600px;
}

.tableTh {
   text-align: center;
   background: #e6e6e6;
}

.showListTable td {
   text-align: center;
   border-bottom: 1px solid #cccccc;
}

/* 크몽 스타일 */
@font-face {
   font-family: 'NotoSansKR Regular';
   font-style: normal;
   src: local('NotoSans-DemiLight');
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-DemiLight.eot);
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-DemiLight.eot?#iefix)
      format('embedded-opentype'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-DemiLight.woff2)
      format('woff2'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-DemiLight.woff)
      format('woff'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-DemiLight.otf)
      format('truetype')
}

@font-face {
   font-family: 'NotoSansKR Medium';
   font-style: normal;
   src: local('NotoSans-Regular');
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Regular.eot);
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Regular.eot?#iefix)
      format('embedded-opentype'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Regular.woff2)
      format('woff2'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Regular.woff)
      format('woff'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Regular.otf)
      format('truetype')
}

@font-face {
   font-family: 'NotoSansKR Bold';
   font-style: normal;
   src: local('NotoSans-Medium');
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Medium.eot);
   src:
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Medium.eot?#iefix)
      format('embedded-opentype'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Medium.woff2)
      format('woff2'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Medium.woff)
      format('woff'),
      url(https://d2v80xjmx68n4w.cloudfront.net/assets/fonts/notosans/NotoSans-Medium.otf)
      format('truetype')
}

@font-face {
   font-family: FontAwesome;
   font-weight: 400;
   font-style: normal;
   src: url(/fonts/fontawesome-webfont.eot?v=4.3.0);
   src: url(/fonts/fontawesome-webfont.eot?#iefix&v=4.3.0)
      format('embedded-opentype'),
      url(/fonts/fontawesome-webfont.woff2?v=4.3.0) format('woff2'),
      url(/fonts/fontawesome-webfont.woff?v=4.3.0) format('woff'),
      url(/fonts/fontawesome-webfont.ttf?v=4.3.0) format('truetype'),
      url(/fonts/fontawesome-webfont.svg?v=4.3.0#fontawesomeregular)
      format('svg')
}

/* 아이디 박스 */
.inbox-detail-top-body {
   padding: 15px;
}

.border-solid {
   border: 1px solid #E6E6E6 !important;
}

element.style {
   cursor: pointer;
}

.btn-ad, .btn-xss {
   padding: 5px 10px;
}

.btn {
   display: inline-block;
   margin-bottom: 0;
   font-weight: 400;
   text-align: center;
   vertical-align: middle;
   touch-action: manipulation;
   cursor: pointer;
   background-image: none;
   border: 1px solid transparent;
   white-space: nowrap;
   padding: 15px;
   font-size: 13px;
   line-height: 1.5438;
   border-radius: 5px;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

.selling-panels>.events-more-btn>a, .selling-panels>.events-more-btn>a:active,
   .selling-panels>.events-more-btn>a:hover, a.plain, a.plain:active, a.plain:hover
   {
   text-decoration: none;
   color: #4d4d4d;
}

/* 메세지창 전체 폼 위치 조정 */
#test1 {
   margin-left: 250px;
}

/* 메세지 이미지 크기조정 */
.message-left-profile-image {
   width: 40px;
   margin-top: 10px;
}

/* 판매자 메세지글 스타일 */
.message-left-bubble-body {
   min-width: 90px;
   padding: 10px;
   word-break: break-all;
   background-color: #E6E6E6;
}

.message-right-bubble-body:before {
   background-color: #fae57c;
   -webkit-transform: rotate(-45deg);
   transform: rotate(-45deg);
   left: -4px;
}

.message-left-bubble-body:before, .message-right-bubble-body:before {
   display: block;
   width: 10px;
   position: absolute;
   top: 10px;
   height: 10px;
   content: '';
}

/* 회원본인 메시지 글 스타일 */
.message-right-bubble-body {
   min-width: 90px;
   padding: 10px;
   word-break: break-all;
   background-color: #FAE57C;
}

.checkbox-text, .position-relative {
   position: relative;
}

.message-left-bubble-body:before {
   background-color: #E6E6E6;
   -webkit-transform: rotate(-45deg);
   transform: rotate(-45deg);
   right: -4px;
}

.message-left-bubble-body:before, .message-right-bubble-body:before {
   display: block;
   width: 10px;
   position: absolute;
   top: 10px;
   height: 10px;
   content: '';
}

/* 메세지 받은 시간 스타일 */
.message-left-time {
   position: relative;
   text-align: right;
}

.message-left-time, .message-right-time {
   font-size: 11px;
   bottom: -5px;
   color: #878787;
}

/* 하단 메시지 폼 */
.message-box-container {
   background-color: #fff;
   border: 1px solid #E6E6E6;
}

/* 메세지 정보박스 */
.message-box-partner-information-body {
   position: relative;
}

.message-box-partner-available-time h6,
   .message-box-partner-average-response-time h6 {
   color: #878787;
   margin: 0;
}

.font-size-h6, h6 {
   font-size: 12px !important;
}

b, strong {
   font-family: "NotoSansKR Bold" !important;
   font-weight: inherit;
}

/* 텍스트에어리어  */
textarea.form-control, textarea.input-file-form-control {
   height: auto;
}

.panel, .panel-heading, .form-control {
   border-radius: 0;
}

.message-box-textarea {
   padding: 15px;
   resize: none;
   border-radius: 0;
}

/* 버튼 스타일 */
.btn.disabled, .btn[disabled], fieldset[disabled] .btn {
   cursor: not-allowed;
   opacity: .45;
   filter: alpha(opacity = 45);
   box-shadow: none;
}

.message-box-footer-body a, .message-box-footer-body button {
   padding: 8px 30px;
}

.btn-black {
   color: #fff;
   background-color: #4d4d4d;
   border-color: #404040;
}

.btn {
   display: inline-block;
   margin-bottom: 0;
   font-weight: 400;
   text-align: center;
   vertical-align: middle;
   touch-action: manipulation;
   cursor: pointer;
   background-image: none;
   border: 1px solid transparent;
   white-space: nowrap;
   padding: 15px;
   font-size: 13px;
   line-height: 1.5438;
   border-radius: 5px;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

/*메세지박스 패딩  */
.message-box-container {
   background-color: #fff;
   border: 1px solid #E6E6E6;
}

.padding-all-30 {
   padding: 30px !important;
}

/* 이미지 */
.inbox-detail-top-body-profile-image {
   width: 50px;
   position: absolute;
   top: 0;
   left: 0;
}

.border-round, .gig-list-profile-background-border,
   .message-left-profile-image, .new-alarm-active {
   border-radius: 500px !important;
}

img {
   vertical-align: middle;
}

hr, img {
   border: 0;
}

.col-xs-12 {
   width: 100%;
}

/* 가운데 메시지 창 스타일 */
.message-container {
   width: 100%;
   padding: 0 15px;
   background-color: #f5f5f5;
   border-left: solid #E6E6E6 1px;
   border-right: solid #E6E6E6 1px;
   height:400px;
   overflow-y:scroll;
}

/* 본인 메시지 위치 */
.message-right {
   padding-bottom: 10px;
   width: 75%;
   position: relative;
   float: right;
   text-align: left;
}

/* 판매자 메세지 위치 */
.message-left {
   padding-bottom: 10px;
   width: 75%;
   position: relative;
   float: left;
}

/* 첨부파일 버튼 스타일 */
.width-100px {
   width: 100px !important;
}

.padding-right-15 {
   padding-right: 15px !important;
}

.padding-left-15 {
   padding-left: 15px !important;
}

.btn-default {
   color: #4d4d4d;
   background-color: #fff;
   border-color: #e6e6e6;
}
</style>
</head>
<body>
   <%@ include file="../common/header.jsp"%>
   <div id='A_Container_Wrap'>
      <div id='A_Container'>
         <%@ include file="../mypage/mypageleft.jsp"%>
         <br> <br>
         <!--  -->
         <div class="row margin-top-30" id="test1">
            <div id="inboxLoading" class="col-xs-offset-1 col-xs-10 hidden">
               <div class="row text-center" style="margin-top: 250px;">
                  <div class="col-xs-12">
                     <img src="">
                  </div>
               </div>
            </div>
            <div id="inboxBodyDiv" class="col-xs-offset-1 col-xs-10">
               <div id="inboxTopDiv"
                  class="inbox-detail-top-body bg-color-white border-solid">
                  <div class="inline-block">
                     <div class="position-relative">
                        <a class="plain" href=""> 
                           <img class="inbox-detail-top-body-profile-image border-round" title="<%= receveId %>">
                        </a>
                     </div>
                     <div class="position-relative inbox-detail-top-profile">
                        <ul class="list-unstyled margin-bottom-0">
                           <li>
                              <h4 class="margin-top-0" style="margin-left: 80px;">
                                 <a class="plain" href="https://kmong.com/@lastpiano">
                                    <b><%= receveId %></b>
                                 </a>
                              </h4>
                              <h5 class="margin-bottom-0" style="margin-left: 80px;">&nbsp;</h5>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <br> <br>
               <div class="message-container" style="min-height: 282px;" id="message-container">
                  
               </div>
               <div class="position-relative">
                  <div class="row">
                     <div class="col-xs-12">
                        <div class="message-box-container padding-all-30">
                           <div class="message-box-partner-information-body">
                              <div class="message-box-partner-username">
                                 <h6>상대방 닉네임</h6>
                                 <b id="reciveId"><%= receveId %></b>
                              </div>
                              <div class="pull-right">
                              </div>
                           </div>
                           <div class="margin-top-25">
                              <div class="position-relative">
                                 <div class="form-group margin-bottom-0">
                                    <textarea id="generalMessageTxtArea"
                                       class="form-control message-box-textarea messageTextArea"
                                       data-button="generalMessageSendBtn" rows="4"
                                       placeholder="안전한 거래를 위해 결제 전 외부 연락처 공개 및 직거래(유도) 시 사이트 이용이 제한될 수 있습니다.">
                                    </textarea>
                                    <div id="keyword_warning"
                                       class="message-box-keyword-warning">
                                    </div>
                                 </div>
                              </div>
                              <div class="message-box-footer-body" style="display: none;">
                                 <div class="row">
                                    <div class="col-xs-12 text-right">
                                       <div class="inline-block">
                                           <button id="sendMessageBtn" class="btn btn-black sendBtn"role="button">
                                             전송
                                          </button> 
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="message-box-footer-body">
                                 <div class="dropzone-preview"></div>
                                 <div class="row">
                                    <div id="generalMessageFileDiv" class="col-xs-7">
                                       <div class="inline-block">
                                          <a id="dropzoneFile" class="btn btn-default sendBtn width-100px border-solid-black padding-left-15 padding-right-15 dz-clickable">
                                             첨부파일 
                                          </a>
                                          <div class="upload-tooltip bg-color-black color-white font-size-h6 padding-left-10 padding-right-10 padding-top-5 padding-bottom-5 inline-block position-relative margin-left-15">
                                             최대 250MB의 파일을 6개까지 첨부할 수 있어요!
                                          </div>
                                       </div>
                                    </div>

                                    <div class="col-xs-5 text-right">
                                       <div class="inline-block">
                                          <a id="sendMessageBtn" class="btn btn-black sendBtn" role="button">
                                             전송
                                          </a> 
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <script>
      $(function(){
         var receveId = "<%= receveId %>";
         var userId = "<%= loginUser.getC_id() %>";

         console.log("receveId"+receveId);
         console.log("userId"+userId); 
         
         $.ajax({
            url:"/p/selectAllMsg.me",
            data:{"receveId":receveId, "userId":userId},
            type:"get",
            success:function(data){
               var $message_container = $("#message-container");
               $message_container.html('');
               
               var $textArea = $("#generalMessageTxtArea");
               $textArea.text('');
               $textArea.html('');
               $textArea.val('');
               
               for(var key in data){
                  if(data[key].cCode == "<%= loginUser.getC_id() %>"){
                     var $div1 = $("<div>");
                     var $me_right = $('<div class="message-right">');
                     var $me_right_body = $('<div class="inline-block message-right-body">');
                     var $me_right_buble_body = $('<div class="message-right-bubble-body position-relative">');
                     var $div2 = $("<div>").text(data[key].msgContent);
                     var $me_right_time = $('<div class="message-right-time">').text(data[key].sendTime);
                     
                     $me_right_buble_body.append($div2);
                     $me_right_body.append($me_right_buble_body);
                     $me_right_body.append($me_right_time);
                     $me_right.append($me_right_body);
                     $div1.append($me_right);
                     $message_container.append($div1);
                     $("#message-container").scrollTop($(document).height()+$(document).height());
                  }else{
                     var $row_index = $('<div class="row margin-bottom-0" id="inbox">');
                     var $div1 = $("<div>");
                     var $me_left = $('<div class="message-left">');
                     var $me_left_arrow = $('<div class="inline-block message-left-arrow">');
                     var $inline_block = $('<div class="inline-block">');
                     var $a_t = $('<a target="_blank" href="">');
                     var $me_img = $('<img class="message-left-profile-image">');
                     var $me_left_body = $('<div class="inline-block message-left-body">');
                     var $me_left_partner = $('<div class="message-left-partner" style="margin-left:15px">');
                     var $me_a_plain = $('<a class="plain" target="_blank" href="">').text(data[key].cCode);
                     var $me_left_buble_body = $('<div class="message-left-bubble-body position-relative">');
                     var $div2 = $("<div>").text(data[key].msgContent);
                     var $me_left_time = $('<div class="message-left-time">').text(data[key].sendTime);
                     
                     $a_t.append($me_img);
                     $inline_block.append($a_t.append);
                     $me_left_arrow.append($inline_block);
                     
                     $me_left_partner.append($me_a_plain);
                     $me_left_buble_body.append($div2);
                     
                     $me_left_body.append($me_left_partner);
                     $me_left_body.append($me_left_buble_body);
                     $me_left_body.append($me_left_time);
                     
                     $me_left.append($me_left_arrow);
                     $me_left.append($me_left_body);
                  
                     $div1.append($me_left);
                     $row_index.append($div1);
                     $message_container.append($row_index);
                     $("#message-container").scrollTop($(document).height()+$(document).height());
                  }
               }
            },
            error:function(msg){
               alert(실패);
            }
         });
      });
   
      $(function(){
         $(".message-box-footer-body #sendMessageBtn").click(function(){
            var msgContent = $("#generalMessageTxtArea").val();
            var receveId = "<%= receveId %>";
            var userId = "<%= loginUser.getC_id() %>";

            console.log("msgContent"+msgContent);
            console.log("receveId"+receveId);
            console.log("userId"+userId); 
            
            $.ajax({
               url:"/p/insertMsg.me",
               data:{"msgContent":msgContent, "receveId":receveId, "userId":userId},
               type:"post",
               success:function(data){
                  var $message_container = $("#message-container");
                  $message_container.html('');
                  
                  var $textArea = $("#generalMessageTxtArea");
                  $textArea.text('');
                  $textArea.html('');
                  $textArea.val('');
                  
                  for(var key in data){
                     if(data[key].cCode == "<%= loginUser.getC_id() %>"){
                        var $div1 = $("<div>");
                        var $me_right = $('<div class="message-right">');
                        var $me_right_body = $('<div class="inline-block message-right-body">');
                        var $me_right_buble_body = $('<div class="message-right-bubble-body position-relative">');
                        var $div2 = $("<div>").text(data[key].msgContent);
                        var $me_right_time = $('<div class="message-right-time">').text(data[key].sendTime);
                        
                        $me_right_buble_body.append($div2);
                        $me_right_body.append($me_right_buble_body);
                        $me_right_body.append($me_right_time);
                        $me_right.append($me_right_body);
                        $div1.append($me_right);
                        $message_container.append($div1);
                        $("#message-container").scrollTop($(document).height()+$(document).height());
                     }else{
                        var $row_index = $('<div class="row margin-bottom-0" id="inbox">');
                        var $div1 = $("<div>");
                        var $me_left = $('<div class="message-left">');
                        var $me_left_arrow = $('<div class="inline-block message-left-arrow">');
                        var $inline_block = $('<div class="inline-block">');
                        var $a_t = $('<a target="_blank" href="">');
                        var $me_img = $('<img class="message-left-profile-image">');
                        var $me_left_body = $('<div class="inline-block message-left-body">');
                        var $me_left_partner = $('<div class="message-left-partner" style="margin-left:15px">');
                        var $me_a_plain = $('<a class="plain" target="_blank" href="">').text(data[key].cCode);
                        var $me_left_buble_body = $('<div class="message-left-bubble-body position-relative">');
                        var $div2 = $("<div>").text(data[key].msgContent);
                        var $me_left_time = $('<div class="message-left-time">').text(data[key].sendTime);
                        
                        $a_t.append($me_img);
                        $inline_block.append($a_t.append);
                        $me_left_arrow.append($inline_block);
                        
                        $me_left_partner.append($me_a_plain);
                        $me_left_buble_body.append($div2);
                        
                        $me_left_body.append($me_left_partner);
                        $me_left_body.append($me_left_buble_body);
                        $me_left_body.append($me_left_time);
                        
                        $me_left.append($me_left_arrow);
                        $me_left.append($me_left_body);
                     
                        $div1.append($me_left);
                        $row_index.append($div1);
                        $message_container.append($row_index);
                        $("#message-container").scrollTop($(document).height()+$(document).height());
                     }
                  }
               },
               error:function(msg){
                  alert(실패);
               }
            });
               
         });
      });
   
   </script>
   <br>

   <br>
   <%@ include file="../common/footer.jsp"%>

</body>
</html>