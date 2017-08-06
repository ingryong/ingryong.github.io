<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
$(document).ready(function() {
	$('#top_menu5').addClass('on'); //상단 메뉴 색상 활성화
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
				<div class="menu2 on" onclick="location.href='./dangolmain.jsp'">
					단골관리 <span style="display:on;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="dangol_area">
			<div class="title no-drag">
				<div class="left no_drag">
					단골 관리
				</div>
				<div class="right">
				</div>
			</div>
			<div class="content">
				<div class="left">
					<div class="content_box">
						<div class="list_title no_drag">
							단골 고객 리스트
						</div>
						<div class="dangol_search">
							<select>
								<option> 모든단골 </option>
								<option>실버</option>
								<option>골드</option>
								<option>플래티넘</option>
								<option>VIP</option>
							</select>
							<input type="text" id="search" placeholder="성명 혹은 이메일 입력">
							<span><img src="../images/btn_search.png"></span>
						</div>
						<table class="dangol_table" border="1">
						<tbody>
							<tr class="title">
								<td class="left">고객명</td><td class="center">이메일</td><td>등급</td>
							</tr>
							<tr>
								<td class="left">김나라</td><td class="center">qwer@gmail.com</td><td>VIP</td>
							</tr>
							<tr>
								<td class="left">신아경</td><td class="center">nono_ami@naver.com</td><td>실버</td>
							</tr>
							<tr>
								<td class="left">이유라</td><td class="center">alsoda121@gmail.com</td><td>골드</td>
							</tr>
							<tr>
								<td class="left">이소정</td><td class="center">sldjkfsdl@gmil.com</td><td>플래티넘</td>
							</tr>
						</tbody>
						</table>
					</div>
				</div>
				<div class="right">
					<div class="content_box">
						<div class="dangol-info_box">
							<div class="title">
								고객정보
							</div>
							<div class="detail_box">
								<div class="table1">
									<div class="left">
										<img src="../images/index/shop_img.jpg">
									</div>
									<div class="center">
										<div class="table2">
											<div class="row1">
												신아경
											</div>
											<div class="row2">
												qwer@gmail.com
											</div>
											<div class="row3">
												010-1234-1234
											</div>
											<div class="row4">
												1회 예약방문
											</div>
										</div>
									</div>
									<div class="right">
										<span>실버등급</span>
									</div>
								</div>
							</div>
							
							<div class="title">
								단골 고객 등급 관리
							</div>
							<div class="detail_box">
								<div class="level_box">
									<select>
										<option>실버</option><option>골드</option><option>플래티넘</option><option>VIP</option>
									</select>
									<span>(으)로 <a>변경하기</a></span>
								</div>
							</div>
							
							<div class="title">
								단골 고객 메모
							</div>
							<div class="detail_box">
								<div class="memo_box">
									<p>※ 작성한 메모는 고객은 볼 수 없습니다.</p>
									<textarea placeholder="메모를 입력하세요"></textarea>
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