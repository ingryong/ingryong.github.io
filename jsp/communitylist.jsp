<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file = "header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/chromagallery.css" />
<script type="text/javascript">

$(document).ready(function() {
	$('#top_menu1').addClass('on'); //상단 메뉴 색상 활성화
});

//chroma에서 0일 경우 이미지 확대, 1일 경우 해당 페이지로 이동
var popSelect = 1;
</script>

<style type="text/css">
@media screen and (min-width: 980px) /* Desktop */ 
		{
		  .content {width: 60%;}
		}	
</style>


</head>
<body>
<div class="wrap">
	<%@include file = "./topBar.jsp" %>
	<!-- 상단 이미지 -->
	<div class="top_image_area">
	</div>
	
	<!-- 콘텐츠 -->
	<div class="content_area">
		<!-- 사이드 메뉴 -->
		<div class="side_area">
			<div class="side_menu_box">
				<div class="title">
					타라 강남 1호점
				</div>
				<div class="menu1 on" onclick="location.href='./communitylist.jsp'">
					전체글 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./communitylist2.jsp'">
					인기글 <span style="display:on;">></span>
				</div>
				<div class="menu2" onclick="location.href='./communitylist3.jsp'">
					갤러리 <span style="display:on;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="community_area no_drag">
			<div class="title">
				<div class="left">
					커뮤니티
				</div>
				<div class="right">
					<span onclick="location.href='./communitywrite.jsp'"><img src="../images/svg/write_icon.svg">글쓰기</span>
				</div>
			</div>
			<!-- 커뮤니티 리스트 -->
			<div class="community_list_area">
				<div class="line"></div>
				<div class="box" onclick="location.href='./communityview.jsp'">
					<!-- 타임라인 상단 -->
					<div class="box_top">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg" alt="기본이미지">
						</div>
						<div class="cell2">
							<div class="intable">
								<div class="row1"> 
									<img src="../images/svg/img_people_a.svg" alt="" />
									닉네임
								</div> 
								<div class="row2"> 
									<img src="../images/svg/img_shop.svg" /> 
									샵이름
								</div>
								<div class="row3"> 
									<div class="left">
										<img src="../images/svg/clock.svg" /> 
										2017-06-15 17:36:21
									</div>
									<div class="right">
										<span>
											<img src="../images/svg/eye.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/heart.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/comment.svg" alt=""/>
											123
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 타임라인 하단 -->
					<div class="box_bottom">
						<div class="photo_area">
							<div class="chroma-gallery mygallery">
								<img id="" src="../images/index/shop_img.jpg"  data-largesrc="../images/index/shop_img.jpg">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
							</div>
						</div>
						<div class="text_area">
							<pre class="community_pre">커뮤니티 본문</pre>
						</div>
					</div>
				</div>
			</div>
			<div class="community_list_area">
				<div class="line"></div>
				<div class="box">
					<!-- 타임라인 상단 -->
					<div class="box_top">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg" alt="기본이미지">
						</div>
						<div class="cell2">
							<div class="intable">
								<div class="row1"> 
									<img src="../images/svg/img_people_a.svg" alt="" />
									닉네임
								</div> 
								<div class="row2"> 
									<img src="../images/svg/img_shop.svg" /> 
									샵이름
								</div>
								<div class="row3"> 
									<div class="left">
										<img src="../images/svg/clock.svg" /> 
										2017-06-15 17:36:21
									</div>
									<div class="right">
										<span>
											<img src="../images/svg/eye.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/heart.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/comment.svg" alt=""/>
											123
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 타임라인 하단 -->
					<div class="box_bottom">
						<div class="photo_area">
							<div class="chroma-gallery mygallery">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
							</div>
						</div>
						<div class="text_area">
							<pre class="community_pre">커뮤니티 본문</pre>
						</div>
					</div>
				</div>
			</div>
			<div class="community_list_area">
				<div class="line"></div>
				<div class="box">
					<!-- 타임라인 상단 -->
					<div class="box_top">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg" alt="기본이미지">
						</div>
						<div class="cell2">
							<div class="intable">
								<div class="row1"> 
									<img src="../images/svg/img_people_a.svg" alt="" />
									닉네임
								</div> 
								<div class="row2"> 
									<img src="../images/svg/img_shop.svg" /> 
									샵이름
								</div>
								<div class="row3"> 
									<div class="left">
										<img src="../images/svg/clock.svg" /> 
										2017-06-15 17:36:21
									</div>
									<div class="right">
										<span>
											<img src="../images/svg/eye.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/heart.svg" alt=""/>
											123
										</span>
										<span>
											<img src="../images/svg/comment.svg" alt=""/>
											123
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					<!-- 타임라인 하단 -->
					<div class="box_bottom">
						<div class="photo_area">
							<div class="chroma-gallery mygallery">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
								<img id="" src="../images/index/shop_img.jpg" data-largesrc="../images/index/shop_img.jpg">
							</div>
						</div>
						<div class="text_area">
							<pre class="community_pre">커뮤니티 본문</pre>
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
<!-- chroma 관련 스크립트 -->
<script src="../js/modernizr-chrg.min.js" charset="utf-8"></script>
<script src="../js/masonry.min.js" charset="utf-8"></script>
<script src="../js/chromagallery.js" charset="utf-8"></script>
<script type="text/javascript">
$(document).ready(function() { //chromaGallery 실행
	$(".mygallery").chromaGallery();
});
</script>
</body>
</html>