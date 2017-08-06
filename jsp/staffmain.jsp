<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$('#top_menu6').addClass('on'); //상단 메뉴 색상 활성화
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
				<div class="menu1 on" onclick="location.href='./staffmain.jsp'">
					직원관리 <span style="display:on;">></span>
				</div>
				<div class="menu2" onclick="location.href='./staffAccept.jsp'">
					직원신청자 <span style="display:on;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="dangol_area">
			<div class="title no-drag">
				<div class="left no_drag">
					직원 관리
				</div>
				<div class="right">
				</div>
			</div>
			<div class="content">
				<div class="left">
					<div class="content_box">
						<div class="list_title no_drag">
							직원 리스트
						</div>
						<table class="dangol_table" border="1">
						<tbody>
							<tr class="title">
								<td class="left">직원명</td><td class="center">이메일</td><td>아티스트명</td>
							</tr>
							<tr>
								<td class="left">김나라</td><td class="center">qwer@gmail.com</td><td>qwer</td>
							</tr>
							<tr>
								<td class="left">신아경</td><td class="center">nono_ami@naver.com</td><td>아경이</td>
							</tr>
							<tr>
								<td class="left">이유라</td><td class="center">alsoda121@gmail.com</td><td>Youra</td>
							</tr>
							<tr>
								<td class="left">이소정</td><td class="center">sldjkfsdl@gmil.com</td><td>SJung</td>
							</tr>
						</tbody>
						</table>
					</div>
				</div>
				<div class="right">
					<div class="content_box">
						<div class="dangol-info_box">
							<div class="title">
								직원 정보
							</div>
							<div class="detail_box">
								<div class="table1">
									<div class="left">
										<img src="../images/index/shop_img.jpg">
									</div>
									<div class="center">
										<div class="table2">
											<div class="row1">
												신아경(아티스트명)
											</div>
											<div class="row2">
												qwer@gmail.com
											</div>
											<div class="row3">
												010-1234-1234
											</div>
											<div class="row4">
												직원 등록일 : 2017-06-15
											</div>
										</div>
									</div>
									<div class="right">
									</div>
								</div>
							</div>
							
							<div class="title">
								추가정보 메모
							</div>
							<div class="detail_box">
								<div class="memo_box">
									<textarea class="long" placeholder="메모를 입력하세요"></textarea>
								</div>
							</div>
							
							<div class="title">
								직원 퇴사
							</div>
							<div class="detail_box">
								<div class="level_box">
									<span><a>퇴사 처리하기</a></span>
								</div>
							</div>
							
						</div>
						<div class="dangol_btn"><span>변경사항 저장하기</span></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="bottom_blank"></div>
</div>
</body>
</html>