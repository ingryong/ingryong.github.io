<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>
<link href='../fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='../fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />
<script src='../fullcalendar/lib/moment.min.js'></script>
<script src='../fullcalendar/lib/jquery.min.js'></script>
<script src='../fullcalendar/fullcalendar.js'></script>
<script src='../fullcalendar/locale/ko.js'></script>

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

<script>
	$(document).ready(function() {
		$('#calendar').fullCalendar({
			header: {
				left: 'prev today',
				center: 'title',
				right: 'next'
			},
			editable: false,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					id: 999,
					title: '김나라',
					start: '2017-05-15T10:30:00',
					editable: false
				},
				{
					id: 999,
					title: '신아경',
					start: '2017-05-16T18:30:00',
					end: '2017-05-16T19:30:00',
					editable: false
				},
				{
					id: 999,
					title: '이유라',
					start: '2017-05-16T19:30:00',
					editable: false
				},
				{
					id: 999,
					title: '이소정',
					start: '2017-05-16T21:00:00',
					editable: false
				},
				{
					id: 999,
					title: '박하연',
					start: '2017-05-18T13:00:00',
					editable: false
				},
				{
					id: 999,
					title: '이소영',
					start: '2017-05-12T10:30:00',
					end: '2017-05-12T12:30:00',
					editable: false
				},
				{
					id: 999,
					title: '강나래',
					start: '2017-05-12T12:00:00',
					editable: false
				},
				{
					id: 991,
					title: '오하나',
					start: '2017-05-28',
					editable: false
				}
			],
			eventClick:function(event){ //event의 id값이 999일 경우 reserve_pop을 활성화 시킴.
				if(event.id=="999"){
					document.getElementById('reserve_pop').style.display='';
				}
			}
		});
	});

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
				<div class="menu1 on" onclick="location.href='./reservemain.jsp'">
					예약관리 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./reserveAccept.jsp'">
					승인된 예약 <span style="display:off;">></span>
				</div>
				<div class="menu2" onclick="location.href='./reserveEnded.jsp'">
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
				<div class="table">
					<div class="left">
						<div class="title">
							오늘의 예약 고객
						</div>
						<div class="content">
							<table class="reserve_table" border="1">
							<tbody>
								<tr class="title">
									<td class="left">고객명</td><td class="center">서비스명</td><td>예약시간</td>
								</tr>
								<tr class="end" onClick="document.getElementById('reserve_pop').style.display='';">
									<td class="left">김나라</td><td class="center">젤글리터그라(클리어)</td><td>2017-05-16 10:30</td>
								</tr>
								<tr class="play" onClick="document.getElementById('reserve_pop').style.display='';">
									<td class="left">신아경</td><td class="center">젤 펄그라</td><td>2017-05-16 18:30</td>
								</tr>
								<tr onClick="document.getElementById('reserve_pop').style.display='';">
									<td class="left">이유라</td><td class="center">젤 펄그라</td><td>2017-05-16 19:30</td>
								</tr>
								<tr onClick="document.getElementById('reserve_pop').style.display='';">
									<td class="left">이소정</td><td class="center">젤(레귤러팁셋)</td><td>2017-05-16 20:00</td>
								</tr>
							</tbody>
							</table>
						</div>
						<div class="title">
							예약 승인대기중인 고객
						</div>
						<div class="content">
							<table class="reserve_table" border="1">
							<tbody>
								<tr class="title">
									<td class="left">고객명</td><td class="center">서비스명</td><td>예약시간</td>
								</tr>
								<tr>
									<td class="left">고경희</td><td class="center">젤 펄그라</td><td>2017-05-17 13:00</td>
								</tr>
								<tr>
									<td class="left">오나현</td><td class="center">젤(레귤러팁셋)</td><td>2017-05-19 11:30</td>
								</tr>
								<tr>
									<td class="left">강나래</td><td class="center">젤보수(회원)</td><td>2017-05-22 10:00</td>
								</tr>
							</tbody>
							</table>
						</div>
					</div>
					
					<div class="right">
						<div class="title">
							예약 캘린더
						</div>
						<div class="content">
							<div class="calendar" id='calendar'></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>