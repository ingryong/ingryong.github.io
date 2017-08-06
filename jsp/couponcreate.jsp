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
				<div class="menu1 on" onclick="location.href='./couponcreate.jsp'">
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
					쿠폰 발급
				</div>
				<div class="right">
				</div>
			</div>
			<div class="coupon-create_content">
				<div class="coupon-info_box">
					<div class="img_area">
						<img src="../images/index/shop_img.jpg">
					</div>
					<div class="info-table2">
						<div class="row1">
							<div class="cell1 no_drag">
								쿠폰명
							</div>
							<div class="cell2">
								<input class="input1" type="text" placeholder="쿠폰명">
							</div>
						</div>
						<div class="row1 no_drag">
							<div class="cell1">
								쿠폰수량
							</div>
							<div class="cell2">
								<input class="input2" type="number" placeholder="쿠폰 발급갯수">장
							</div>
						</div>
						<div class="row1">
							<div class="cell1 no_drag">
								대상
							</div>
							<div class="cell2">
								<select>
									<option>모든 회원</option>
									<option>브론즈 이상</option>
									<option>골드 이상</option>
									<option>플래티넘 이상</option>
									<option>VIP 이상</option>
								</select>
							</div>
						</div>
						<div class="row1">
							<div class="cell1 no_drag">
								할인혜택
							</div>
							<div class="cell2">
								<input class="input1" type="text" placeholder="예)모든 서비스 중 택1 30%할인">
							</div>
						</div>
						<div class="row1">
							<div class="cell1 no_drag">
								할인기간
							</div>
							<div class="cell2">
								<input class="input2" type="date"> ~ <input class="input2" type="date">
							</div>
						</div>
						<div class="row2">
							<div class="cell1 no_drag">
								사용조건
							</div>
							<div class="cell2">
								<textarea rows="" cols=""></textarea>
							</div>
						</div>
					</div>
				</div>
				<div class="cp-close_btn"><span class="no_drag">쿠폰 발급하기</span></div>
				<div class="ps_area">※ 발급한 쿠폰은 수정이 불가능하며 조기종료만 가능합니다.</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>