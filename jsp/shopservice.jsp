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
function close_pop() {
	document.getElementsByName('service_name')[0].value="";
	document.getElementsByName('service_time')[0].value=" "; 
	document.getElementsByName('service_price')[0].value=" "; 
	document.getElementsByName('service_detail')[0].value=" "; 
	document.getElementById('service_pop').style.display='none';
	
}
</script>
</head>
<body>
<%@include file="./shopserviceAdd.jsp" %>
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
				<div class="menu1 on" onclick="location.href='./shopservice.jsp'">
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
					서비스 관리
				</div>
				<div class="right">
					<span onClick="document.getElementById('service_pop').style.display='';">서비스 추가하기></span>
				</div>
			</div>
			<div class="content">
				<div class="service_box">
					<div class="table">
						<div class="title">
							<div class="left">
								젤글리터그라(클리어)
							</div>
							<div class="right">
								60분<span><strong>25000</strong>원</span>
							</div>
						</div>
						<div class="content">
							<p>서비스 설명 부분</p>
						</div>
					</div>
					<div class="remove_box">
						x
					</div>
				</div>
				<div class="service_box">
					<div class="table">
						<div class="title">
							<div class="left">
								젤글리터그라(클리어)
							</div>
							<div class="right">
								60분<span><strong>25000</strong>원</span>
							</div>
						</div>
						<div class="content">
							<p>서비스 설명 부분</p>
						</div>
					</div>
					<div class="remove_box">
						x
					</div>
				</div>
				<div class="service_box">
					<div class="table">
						<div class="title">
							<div class="left">
								젤글리터그라(클리어)
							</div>
							<div class="right">
								60분<span><strong>25000</strong>원</span>
							</div>
						</div>
						<div class="content">
							<p>서비스 설명 부분</p>
						</div>
					</div>
					<div class="remove_box">
						x
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>