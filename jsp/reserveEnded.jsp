<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$('#top_menu3').addClass('on'); //상단 메뉴 색상 활성화
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
				<div class="menu1" onclick="location.href='./reservemain.jsp'">
					예약관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./reserveAccept.jsp'">
					승인된 예약 <span style="display:off;">></span>
				</div>
				<div class="menu2 on" onclick="location.href='./reserveEnded.jsp'">
					종료된 예약 <span style="display:off;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="shop_area">
			<div class="title">
				<div class="left">
					예약 관리<span>2017년 5월 16일 (화) 10:10</span>
				</div>
				<div class="right">
				</div>
			</div>
			<div class="content">
				<div class="reserve_title no_drag">
					종료된 예약
				</div>
				<div class="reserve_box">
					<table class="reserve_table2" border="1">
					<tbody>
						<tr class="title">
							<td class="cell1">고객명</td><td class="cell2">서비스명</td><td class="cell3">예약시간</td><td class="cell4">종류</td><td class="cell5">사유</td>
						</tr>
						<tr onClick="document.getElementById('reserve_pop').style.display='';">
							<td class="cell1">김나라</td><td class="cell2">젤글리터그라(클리어)</td><td class="cell3">2017-05-16 10:30</td><td class="cell4">고객취소</td><td class="cell5">선약이 있어 취소합니다</td>
						</tr>
						<tr onClick="document.getElementById('reserve_pop').style.display='';">
							<td class="cell1">신아경</td><td class="cell2">젤 펄그라</td><td class="cell3">2017-05-16 18:30</td><td class="cell4">거절</td><td class="cell5">고객 문의 후 예약 취소</td>
						</tr>
						<tr onClick="document.getElementById('reserve_pop').style.display='';">
							<td class="cell1">이유라</td><td class="cell2">젤 펄그라</td><td class="cell3">2017-05-16 19:30</td><td class="cell4">정상종료</td><td class="cell5"></td>
						</tr>
						<tr onClick="document.getElementById('reserve_pop').style.display='';">
							<td class="cell1">이소정</td><td class="cell2">젤(레귤러팁셋)</td><td class="cell3">2017-05-16 20:00</td><td class="cell4">정상종료</td><td class="cell5"></td>
						</tr>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>