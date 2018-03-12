<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Page</title>
<style>


#A_Container_L{ 
   float:left;   width:200px;
}
#A_Container_C {
    width: 770px;
    float: left;
    overflow: hidden;
}
#A_Container   { width:1000px; margin:0 auto; margin-top:50px; margin-bottom:20px; clear:both; overflow: hidden; min-height:500px;}
#A_Container_Wrap  { width:100%; clear:both;  height:100%;}

.border-radius {
    border-radius: 4px !important;
}

.border-radius {
    border-radius: 5px!important;
}

.padding-right-10 {
    padding-right: 10px!important;
}

.padding-left-10 {
    padding-left: 10px!important;
}

.line-panel, .padding-bottom-5 {
    padding-bottom: 5px!important;
}

.padding-top-5 {
    padding-top: 5px!important;
}

.btn-default {
    color: #4d4d4d;
    background-color: #fff;
    border-color: #e6e6e6;
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

button, input, select, textarea {
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}

button, html input[type=button], input[type=reset], input[type=submit] {
    -webkit-appearance: button;
    cursor: pointer;
}

button, select {
    text-transform: none;
}

button {
    overflow: visible;
}

button, input, optgroup, select, textarea {
    color: inherit;
    font: "NotoSansKR Regular"!important;
    margin: 0;
}

*, :after, :before {
    box-sizing: border-box;
}


*, pre {
    word-break: break-all;
}

#A_Container   { width:1100px; margin:0 auto; margin-top:50px; margin-bottom:20px; clear:both; overflow: hidden; min-height:500px;}


table {
    display: table;
    border-collapse: separate;
    border-spacing: 1px;
    border-color: grey;
    border:1px solid gray;

}

 .serviceTable {
   weight:50%;
    border-left: 1px solid #dedede;
    border-top: 1px solid #dedede;
    border-right: 1px solid #dedede;
} 



/* common */
* {margin:0; padding:0; list-style:none; text-decoration:none; font-family: 'Nanum Gothic', sans-serif;}
ul>li>a { text-decoration:none; }
/* table { border-collapse: collapse; }*/
a { color:#666666;}
/*span { color:#666; font-size:12px; }*/

thead {
    display: table-header-group;
    vertical-align: middle;
    border-color: inherit;
    border-top-color: inherit;
    border-right-color: inherit;
    border-bottom-color: inherit;
    border-left-color: inherit;
}

/* modal window styles */
#lean_overlay         { position:fixed; top:0px; left:0px; display: none; width:100%; height:100%; background:#000; z-index:100;}
.popupModal            { position:relative; overflow:hidden; width:1080px; height:450px; border:2px solid #2fa0ee; box-sizing:border-box; background: #fff;}
.popupModal *         { box-sizing:border-box; }
.popupModal h2         { position:relative; width:100%; height:40px; line-height:40px; padding-left:20px; color:#fff; font-size:16px; font-weight:600; background:#2fa0ee; margin-top:0 !important; border:none !important;}
.popupModal .popupCon   { position:relative; width:100%; height:100%; }
.popupModal .popupCon dd { position:relative; float:left;  height:100%; padding:10px; border-right:1px solid #cacaca; }
.popupModal .popupCon dd:last-child { border-right:none; }
.popupModal .popup_close      { position:absolute; top:0; right:0; padding:11px; cursor:pointer}

.allCate { position:relative; width:100%; }
.allCate>li { width:100px; padding-left:10px; }
.allCate a {font-size:13px; font-weight:normal; color:#666666;}
.allCate a:hover {color:#2fa0ee;}
.allCate .allCate_tit01    { width:100%; line-height:34px; background:#f7f7f7; border-bottom:1px solid #cacaca; font-size:15px; font-weight:600; color:#272727; }

.tit452 { width:492px; line-height:34px; background:#f7f7f7; border-bottom:1px solid #cacaca; font-size:15px; font-weight:600; color:#272727; padding-left:10px; }
.con452 { position:relative; width:452px; }
.tit252 { width:180px; line-height:34px; background:#f7f7f7; border-bottom:1px solid #cacaca; font-size:15px; font-weight:600; color:#272727; padding-left:10px; }
.con252 { position:relative; width:120px; }
.con452 ul { float:left; width:20%; }
.con252 ul{width:20%; width:96px; float:left;}
.con252 ul:nth-child(2) {float: right; width:20%; }

.allCate_tit02    { padding:10px 0 5px 0; }
.allCate_tit02 a    { font-size:15px !important; font-weight:600; color:#333 !important; padding-bottom:10px;}


/* 메시지함 스타일 */
.serviceTable            { width:700px; border-left:1px solid #dedede; border-top:1px solid #dedede; border-right:1px solid #dedede; text-align:center}
.serviceTable th, .serviceTable td { padding:10px 0; border-bottom:1px solid #dedede; color:#666; font-size:13px; line-height:20px;}
.serviceTable th         { font-weight:500; background:#efefef}
.serviceTable td.title      { text-align:left; }
.serviceTable td.title a   { display:inline-block; color:#666; font-weight:600}
.serviceTable td.rec {background: url('../image/common/ico_reple.png') no-repeat left center; padding-left:40px; }

.test{
   margin-left: 250px;
}

.bor_btm266 { border-bottom: 2px solid #666666;  }

.m_bottom20 {margin-bottom:20px !important; width:700px;} 

</style>
</head>
<body>
   <%@ include file="../common/header.jsp" %>  
 
 <div id='A_Container_Wrap'>
 <div id='A_Container'>
    <%@ include file = "../mypage/mypageleft.jsp" %> 


   <!-- 여기부터 시작 -->



<div class="test">
<h1 style="margin-left:5px;" class="bor_btm266 m_bottom20">전체메시지</h1>

<br><br>

<!-- 셀렉트 -->
<div class="col-xs-9">
      <div id="dropdownMenuGroup" class="pull-left" role="group">

         <select id="inboxListDropdownBtn" type="button"
            class="border-radius padding-top-5 padding-bottom-5 padding-left-10 padding-right-10 btn btn-default dropdown-toggle">
            <option><a href="javascript:void(0);">전체수신함</a></option>
            <option><a href="javascript:void(0);">별표수신함</a></option>
            <option><a href="javascript:void(0);">미확인수신함</a></option>
         </select>   
      </div>


      <!-- 휴지통 표시 -->
      <div class="pull-left margin-left-10">
         <a class="btn btn-default btn-xss disabled"
            href="javascript:void(0);" role="button"> <i
            class="fa fa-trash-o fa-lg font-color-lighter" aria-hidden="true"></i>
         </a>
      </div>

      <!-- 닉네임 입력란 -->
      <div class="pull-left margin-left-10">
         <div class="input-group width-180px">
            <input id="searchKeywordInput" type="text"
               class="form-control input-xs padding-right-45"
               placeholder="상대방 닉네임 검색">
         </div>

      </div>
   
      <!-- 검색아이콘 -->
       <span> <a
         class="btn btn-xss btn-default inbox-list-search-input-group-btn"
         type="button" disabled=""> <i
            class="fa fa-search fa-lg font-color-lighter" aria-hidden="true"></i>
      </a>
      </span>

   </div>
   
   <br><br><br>
   
   
   <table class="serviceTable inquiry_list" cellpadding="0" cellspacing="0">
      <colgroup>
            <col style="width:10%">
            <col style="width:18%">
            <col style="width:8%">
            <col style="width:9%">
      </colgroup>
      <thead>
            <tr>
               <th><button id="inboxListDropdownBtn" type="button" class="border-radius padding-top-5 padding-bottom-5 padding-left-10 padding-right-10 btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <input id="checkboxMenu" type="checkbox">
                                <span class="dropdown-square"></span>
                            </button></th>
               <th>message</th>
               <th>nickname</th>
               <th>date</th>
            </tr>
      </thead>
      <tbody>

                  <tr>
                        <td>1</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=159&amp;">네 가능합니다~</a></td>
                        <td>woo405</td>
                        <td>2018-02-09</td>

                  </tr>
              

                  <tr>
                        <td>2</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=157&amp;">네 가능합니다!</a></td>
                        <td>samickcf</td>
                        <td>2018-01-24</td>
                  
                  </tr>
              

                  <tr>
                        <td>3</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=156&amp;">네 가능합니다!</a></td>
                        <td>koo7575</td>
                        <td>2018-01-18</td>
                  
                  </tr>
              

                  <tr>
                        <td>4</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=154&amp;">네 가능합니다!</a></td>
                        <td>dowan0590</td>
                        <td>2018-01-06</td>
                        
                  </tr>
              

                  <tr>
                        <td>5</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=153&amp;">네 가능합니다!</a></td>
                        <td>comboy823</td>
                        <td>2017-12-28</td>
                        
                  </tr>
              

                  <tr>
                        <td>6</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=152&amp;">네 가능합니다!</a></td>
                        <td>l371811</td>
                        <td>2017-12-28</td>
               
                  </tr>
              

                  <tr>
                        <td>7</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=151&amp;">네 가능합니다!</a></td>
                        <td>jd3421</td>
                        <td>2017-12-27</td>
                     
                  </tr>
              

                  <tr>
                        <td>8</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=149&amp;">네 가능합니다!!!!!</a></td>
                        <td>gtiger51</td>
                        <td>2017-12-22</td>
                     
                  </tr>
              

                  <tr>
                        <td>9</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=147&amp;">네 가능합니다!</a></td>
                        <td>proghost7</td>
                        <td>2017-12-22</td>
                     
                  </tr>
              

                  <tr>
                        <td>10</td>
                        <td class="title"><a href="?gonguMode=view&amp;intseq=146&amp;">네 가능합니다!</a></td>
                        <td>manu23</td>
                        <td>2017-12-22</td>
            
                  </tr>
              
      </tbody>

</div>

</div>
</div>


</body>
</html>