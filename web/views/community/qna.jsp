<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta charset="UTF-8">
<title>My Page</title>
<style>
 @import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
    h1,p,h2,h3 { font-family: 'Nanum Pen Script', cursive; }
    
/*freeBoard 스타일*/
body{
float:"center";

}

.pagination {
	
    display: inline-block;
}

.pager a {
    color: black;
    float: center;
    padding: 8px 16px;
    text-decoration: none;
}

.pager a.active {
    background-color: #4CAF50;
    color: white;
}

.pager a:hover:not(.active) {background-color: #ddd;}


th {
	background-color:#dddddd;
}
 
@import url(//fonts.googleapis.com/earlyaccess/nanummyeongjo.css);
    h1,p,h2,h3,a { font-family: 'Nanum Pen Script', cursive; }


#A_Container_L {
	float: left;
	width: 200px;
}

#A_Container_C {
	width: 770px;
	float: left;
	overflow: hidden;
	margin-left:20px;
}

#A_Container {
	width: 1100px;
	margin: 0 auto;
	margin-top: 30px;
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


</style>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id='A_Container_Wrap'>
		<div id='A_Container'>
			<%@ include file="communityleft.jsp"%>
 
   
   <div id="A_Container_C">
 <div id="A_Wrap">

<!-- Container 시작 -->
    <div id="A_Container_Wrap">
<div id = "A_Container">


<!-- Container 시작 -->

        <div id="A_Container_C">
            <h1>Q&A</h1>
					<div class="table_box">
					<table class="table" summary="Q&amp;A">
 
						<colgroup>
									<col style="width:4%">
									<col style="width:20%">
									<col style="width:9%">
									<col style="width:5%">
									<col style="width:10%">
									<col style="width:8%">
						</colgroup>
						<thead>
							<tr>
								<th>NO</th>
								<th>제목</th>
								<th>첨부파일</th>
								<th>등록자</th>
								<th>등록일</th>
								<th>답변</th>
							</tr>
						</thead>
					
				<tbody>
					<tr>
						<td>2</td>
						<td><a href="#">둘째글</a>
						<img src="#" alt="" /></td>
                        
                         <td></td>
                        
						<td>id2</td>
						<td>2018-02-22</td>
						<td><font color='#666'>완료</font></td>
					</tr>
				</tbody>
	
				<tbody>
					<tr>
						<td>1</td>
						<td><a href="#">첫글</a>
						</td>
                         <td>
                        </td>
						<td>id1</td>
						<td>2017-02-22</td>
						<td><font color='#666'>완료</font></td>
					</tr>
				</tbody>
				  
        </table>
			
				 <div class="btn_table">
                 	<input name="button" type="button" class="btn_input" onclick="self.location.href = '?qnaMode=form&intSeq=&';" value=" 입력 " />
                 </div>

			</div>

        </div>
 			<!-- #A_Container END -->

      </div><!-- #A_Container_Wrap END -->
	<!-- Container 끝 -->    





</div>
</div>
<hr>

</div>
</div>
<div float="left">
<%@ include file="../common/footer.jsp" %>
</div>
</body>
</html>