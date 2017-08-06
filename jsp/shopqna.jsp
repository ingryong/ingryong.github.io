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
				<div class="menu1" onclick="location.href='./shopmain.jsp'">
					샵 정보 관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./shopservice.jsp'">
					서비스 관리 <span style="display:off;">></span>
				</div>
				<div class="menu2 on" onclick="location.href='./shopqna.jsp'">
					1:1문의 관리 <span style="display:off;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="coupon_area">
			<div class="title no-drag">
				<div class="left no_drag">
					샵 1:1문의 관리
				</div>
				<div class="right">
				</div>
			</div>
			<div class="content">
				<div class="left">
					<div class="content_box">
						<div class="list_title no_drag">
							문의 목록
						</div>
						<div class="qna-list_box">
							<div class="cell1">
								<img src="../images/index/shop_img.jpg">
							</div>
							<div class="cell2">
								<div class="row1">
									<pre>문의내용이 조금 많이 길거라고 예상하고 써봄 문의내용이</pre>
								</div>
								<div class="row2">문의유저 닉네임</div>	
								<div class="row3">2017-06-21 13:22:00</div>						
							</div>
							<div class="cell3">
								<div class="row1">
									<span>x</span>
								</div>
								<div class="row2">
								</div>
							</div>
						</div>
						<div class="qna-list_box">
							<div class="cell1">
								<img src="../images/index/shop_img.jpg">
							</div>
							<div class="cell2">
								<div class="row1">
									<pre>문의내용이 조금 많이 길거라고 예상하고 써봄문의내용이 조금 많이 길거라고 예상하고 써봄문의내용이 조금 많이 길거라고 예상하고 써봄</pre>
								</div>
								<div class="row2">문의유저 닉네임</div>	
								<div class="row3">2017-06-21 13:22:00</div>						
							</div>
							<div class="cell3">
								<div class="row1">
									<span>x</span>
								</div>
								<div class="row2">
								</div>
							</div>
						</div>
						
					</div>
				</div>
				<div class="right">
					<%@include file="./shopqnaview.jsp" %>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>