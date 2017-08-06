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
<%@include file="./reserveInfo.jsp" %>
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
				<div class="menu1" onclick="location.href='./couponmain.jsp'">
					쿠폰관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./couponcreate.jsp'">
					쿠폰발급 <span style="display:on;">></span>
				</div>
				<div class="menu2 on" onclick="location.href='./couponended.jsp'">
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
							종료된 쿠폰
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
								</div>
								<div class="row2">
									종료된 쿠폰
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="right">
					<div class="content_box">
						<div class="coupon-info_box">
							<div class="img_area">
								<img src="../images/index/shop_img.jpg">
							</div>
							<div class="info_table1">
								<div class="cell1 no_drag">
									남은쿠폰
								</div>
								<div class="cell2">
									100 / 300 장
								</div>
								<div class="cell3 no_drag">
								</div>
							</div>
							<div class="info-table2">
								<div class="row1">
									<div class="cell1">
										쿠폰명
									</div>
									<div class="cell2">
										<b>테스트쿠폰</b>
									</div>
								</div>
								<div class="row1">
									<div class="cell1">
										대상
									</div>
									<div class="cell2">
										VIP등급 이상
									</div>
								</div>
								<div class="row1">
									<div class="cell1">
										할인혜택
									</div>
									<div class="cell2">
										모든 서비스 중 택1 30%할인
									</div>
								</div>
								<div class="row1">
									<div class="cell1">
										할인기간
									</div>
									<div class="cell2">
										2017-06-01 ~ 2017-06-30
									</div>
								</div>
								<div class="row2">
									<div class="cell1">
										사용조건
									</div>
									<div class="cell2">
										<pre>사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용</pre>
									</div>
								</div>
							</div>
						</div>
						<div class="ps_area"><br>※ 종료된 쿠폰입니다. 해당 쿠폰은 사용하실 수 없습니다.<br></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>