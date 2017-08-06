<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">

$(document).ready(function() {
	$('#top_menu4').addClass('on'); //상단 메뉴 색상 활성화
});

function needlogin() {
	
	if(confirm("로그인 후 이용 가능합니다.")==true)
	{
		location.replace('./login.jsp');
	}
	else{
		return;
	}
}

</script>
</head>
<body>
<%@include file="./couponusepop.jsp" %>
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
				<div class="menu1 on" onclick="location.href='./couponmain.jsp'">
					쿠폰관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./couponcreate.jsp'">
					쿠폰발급 <span style="display:on;">></span>
				</div>
				<div class="menu2" onclick="location.href='./couponended.jsp'">
					종료된 쿠폰 <span style="display:on;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="coupon_area">
			<div class="title no-drag">
				<div class="left no_drag">
					쿠폰 관리
				</div>
				<div class="right">
				</div>
			</div>
			<div class="content">
				<div class="left">
					<div class="content_box">
						<div class="list_title no_drag">
							현재 진행중인 쿠폰
						</div>
						<div class="coupon-list_box">
							<div class="cell1">
								<img src="../images/index/shop_img.jpg"><span>잔여 "<b>9999</b>"장</span>
							</div>
							<div class="cell2">
								<div class="row1">쿠폰이름이 조금 많이 길거라고 예상하고 써봄</div>
								<div class="row2">2017-06-01 ~ 2017-06-30</div>	
								<div class="row3">모든 서비스 중 택1 30%할인</div>						
							</div>
							<div class="cell3">
								<div class="row1">
									<span>x</span>
								</div>
								<div class="row2">
									<span>VIP등급</span>이상
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="right">
					<%@include file="./couponContent.jsp" %>
					<%@include file="./couponGet.jsp" %>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>