<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$('#top_menu2').addClass('on'); //상단 메뉴 색상 활성화
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
<%@include file="./shopInfoModify.jsp" %>
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
				<div class="menu1 on" onclick="location.href='./shopmain.jsp'">
					샵 정보 관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./shopservice.jsp'">
					서비스 관리 <span style="display:off;">></span>
				</div>
				<div class="menu2" onclick="location.href='./shopqna.jsp'">
					1:1문의 관리 <span style="display:off;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="shop_area">
			<div class="title">
				<div class="left">
					타라 강남 1호점
				</div>
				<div class="right">
					<span onClick="document.getElementById('shopmodify_pop').style.display='';">샵정보 수정하기></span>
				</div>
			</div>
			<div class="content">
				<div class="table">
					<div class="left">
						<div class="title">
							네일샵 정보
						</div>
						<div class="content">
							<table class="shop_table">
							<tbody>
								<tr><td class="left">전화번호</td><td class="right">02-945-7856</td></tr>
								<tr><td class="left">샵 위치</td><td class="right">서울특별시 종로구 연지동 136-46 한국기독교회관 민토시장 1F</td></tr>
								<tr><td class="left">영업시간</td><td class="right">10:00 ~ 21:00</td></tr>
								<tr><td class="left">휴무일</td><td class="right">매 주 월요일</td></tr>
								<tr><td class="left">소개말</td><td class="right"><pre>많이 오세요!!많이 오세요!!많이 오세요!!많이 오세요!!많이 오세요!!많이 오세요!!많이 오세요!!</pre></td></tr>
							</tbody>
							</table>
						</div>
					</div>
					<div class="right">
						<div class="title">
							네일샵 이미지
						</div>
						<div class="content">
							<img src="../images/index/shop_img.jpg">
						</div>
						<div class="title">
							네일샵 위치
						</div>
						<div class="content">
							<img src="../images/index/nav.PNG">
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>