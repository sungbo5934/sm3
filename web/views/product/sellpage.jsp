<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.kh.tc.product.model.vo.product"%>
<%ArrayList<String> cateList = (ArrayList<String>)request.getAttribute("cateList"); %>
<%ArrayList<product> proList = (ArrayList<product>)request.getAttribute("proList");   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="/p/css/kmongadvertise.css" rel="stylesheet">
<link href="/p/css/kmongadvertise2.css" rel="stylesheet">
<link href="/p/css/kmong.css" rel="stylesheet">
<style>
#A_Container {
	width: 1100px;
	margin: 0 auto;
	margin-top: 50px;
	margin-bottom: 20px;
	clear: both;
	overflow: hidden;
	min-height: 500px;
}
</style>
<title>오늘의 동료</title>
</head>
<body>
	<%@ include file="../common/header.jsp"%>

	<div id='A_Container'>
		<div class="col-xs-2">

			<div class="row">
				<div class="col-xs-12" style='font-size:20px;'>
					<b>카테고리</b>
				</div>
			</div>
			<div class="row margin-top-5" style='font-size:16px;'>
				<div class="col-xs-12">


					<ul class="margin-none list-unstyled">
						<li class="category-list-item root-category"><a
							class="plain font-color-light sendGAEventClz"
							data-name="사이드 메뉴 - 카테고리 선택 - 6"><%=cateList.get(0) %></a></li>
					</ul>
					
					

					<ul class="margin-none list-unstyled">
						<li class="category-list-item sub-category active"><img
							class="width-20px position-relative"
							src="https://kmong.com/img/category/ic-arrow-right.png"
							style="top: -2px;"> <a
							href="/p/select.po?cate1=<%=cateList.get(0)%>&cate2=<%=cateList.get(1)%>"
							class="plain font-color-light sendGAEventClz"><%=cateList.get(1) %></a></li>
					</ul>

					<ul class="margin-none list-unstyled margin-left-10"> 
						<%for(int i=2; i<cateList.size();i++ ) {%>
						<li class="category-list-item third-category"><a
							class="plain font-color-light sendGAEventClz"
							href="/p/select.po?cate1=<%=cateList.get(0)%>&cate2=<%=cateList.get(1)%>&cate3=<%=cateList.get(i)%>"
							data-name="사이드 메뉴 - 카테고리 선택 - 60301"><%=cateList.get(i) %></a></li>
						<%}; %>

					</ul>
					
				








				</div>
			</div>


			<div class="padding-all-15">
				<div style="" class="fade-transition"></div>

				<div style="" class="fade-transition">



					<script>
					
					
					$(document).ready(function () {
						  $(document).scroll(function() {
						    var maxHeight = $(document).height();
						    var currentScroll = $(window).scrollTop() + $(window).height();
							var page =1;
						    if (maxHeight <= currentScroll + 20) {
						    	getList(page);
						    	page++;
						    }
						  })
						});
					
					function getList(page){
						
						
						$.ajax({
							url : '/p/sellPaging',
							data : {"page" : page,
									"cate1":"<%=cateList.get(0) %>",
									"cate2":"<%=cateList.get(1) %>"},
							type : 'POST',  
				            success : function(date) {
				              
				           },error:function(date){
				        	   
				           }


				
				    	})
					}
                                
					$('.sellerRatingCheckbox').removeAttr('checked').prop('checked', false);
                            </script>
				</div>
			</div>
		</div>

		<div class='col-xs-10'>
			<%for(int i =0; i<proList.size(); i++) {
		float star = proList.get(i).getStar_point()*20;
		String star2 = star+"%";%>
			<div
				class="kmong-grid-4-20  gig-wrapper margin-top-20 position-relative"
				data-ga-issend="1" data-ga-category="category"
				data-ga-action="6 - 서비스 클릭" data-ga-label="/category/6">

				<div class=" bg-color-white gig-wrapper-default  position-relative">
					<%if(proList.get(i).getAd_code() != 0 ) {%>
					<div class="gig-premium-img">
						<img class="width-30px" src="/img/gigs/gig_premium_ver3.png"
							title="프리미엄광고">
					</div>
					<%}; %>

					<a class="plain" 
						onclick="sendGAEvent('category', '6 - 서비스 클릭 - 서비스 이미지 - 1', '/category/6');">

						<div class="gig-image position-relative">
							<div class="gig-profile">
								<div class="position-relative">
									<div class="gig-list-profile-background-border"></div>
									<div class="gig-list-profile userProfileRanking SEMIPRO">
										<img
											class="gig-list-user-profile border-round position-relative"
											src="/p/thumbnail_uploadFiles/<%=proList.get(i).getSaveFiles() %>"
											title="onoffplatform"
											onerror="this.onerror=null;this.src='/img/tools/main_user_gray.png'">

									</div>
								</div>
							</div>


							<img class="width-100"
								src="/p/thumbnail_uploadFiles/<%=proList.get(i).getSaveFiles() %>"
								title="돈을 벌어다 주는 앱제작과 수익을 낼 수 있는 방법까지 제공 해드립니다"
								onerror="this.onerror=null;this.src='/img/404/no_gig_sm_image.jpg'"
								style="width:225.5px;height:169.125px">
						</div>
					</a>
					<div>
						<div id="tiong" class="gig-title ">

							<a class="plain" href="https://kmong.com/gig/80759"
								onclick="sendGAEvent('category', '6 - 서비스 클릭 - 서비스 제목 - 1', '/category/6');">
								<div class="GigLineClamp line-clamp-default-2 position-relative"
									style="line-height: 20px !important; height: 40px !important;">
									<%=proList.get(i).getP_simplecontent() %></div>
							</a>
						</div>
					</div>

					<div class="padding-left-15 padding-right-15 padding-bottom-15">
						<div class="inline-block">
							<button type="button"
								class="test inline-block border-none bg-color-transparent font-size-h4 padding-all-0"
								disabled="">
								<i class="fa fa-heart-o color-white"></i>
							</button>
						</div>
						<div class="pull-right inline-block">
							<b class="font-size-h4"><span class="NGB">₩</span>&nbsp;<%=proList.get(i).getP_price() %></b><span
								class="font-size-"> </span>
						</div>
					</div>

					<div class="border-top-solid padding-left-15 padding-right-15"
						style="padding-top: 4px; padding-bottom: 4px">
						<a class="inline-block plain color-dark-gray"
							style="margin-top: 4px; margin-bottom: 2px;"> <img
							class="padding-right-5 width-30px"
							style="vertical-align: inherit !important;">

							<div class="gig-username font-size-h6"
								style="max-width: 37px !important; white-space: nowrap; max-width: 55px; text-overflow: ellipsis; float: left; overflow-x: visible;">
								동시 :<%=proList.get(i).getP_share_count() %>
							</div>
						</a>

						<div
							class="gig-userinfo-rating-right inline-block pull-right text-right"
							style="margin-top: 4px;">
							<h6 class="gig-userinfo-rating margin-none">
								<div class="inline-block ">
									<div
										class="rating-container theme-krajee-fa rating-xs rating-disabled rating-margin-none">
										<div class="rating-stars">
											<span class="empty-stars"> <span class="star"><i
													class="fa fa-star color-e3"></i></span> <span class="star"><i
													class="fa fa-star color-e3"></i></span> <span class="star"><i
													class="fa fa-star color-e3"></i></span> <span class="star"><i
													class="fa fa-star color-e3"></i></span> <span class="star"><i
													class="fa fa-star color-e3"></i></span>
											</span> <span class="filled-stars" style="width:<%= star2 %>; ">
												<span class="star"><i class="fa fa-star"></i></span> <span
												class="star"><i class="fa fa-star"></i></span> <span
												class="star"><i class="fa fa-star"></i></span> <span
												class="star"><i class="fa fa-star"></i></span> <span
												class="star"><i class="fa fa-star"></i></span>
											</span>
										</div>
									</div>
								</div>
								<div
									class="inline-block color-dark-gray gig-rating-count font-size-h6">
									(70)</div>
							</h6>
						</div>
					</div>
				</div>
			</div>
			<%}; %>
		</div>

	</div>

</body>




<%@ include file="../common/footer.jsp"%>
</html>