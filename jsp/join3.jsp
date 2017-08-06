<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

</head>
<body>
<%@include file = "numberAdress.jsp" %>
<div class="wrap">
	<div class="top_area">
		<div class="black_bar">
			<div class="table">
				<div class="cell1"></div>
				<div class="cell2"></div>
				<div class="cell3"><a onclick="location.href='./login.jsp'">로그인</a></div>
				<div class="cell4"><a onclick="location.href='./join1.jsp'">회원가입</a></div>
				<div class="cell5"><a>고객지원</a></div>
			</div>
		</div>
	</div>
	
	<div class="join_area">
		<div class="title no_drag">
			<img src="../images/nailook_logo.png">
		</div>
		<div class="top_img no_drag">
			<img src="../images/join/img_join03.png">
		</div>
		<div class="content_box">
			<div class="join_title no_drag">
				<h1>매니저 가입 완료</h1>
				<span>Nailook 매니저 회원가입이 완료되었습니다.<br>로그인 후 서비스를 이용해주세요.</span>
			</div>
			<div class="join_input_box">
				<div class="join_comp">
					<div class="row">
						<div class="cell1">
							이메일
						</div>
						<div class="cell2">
							qwer@gmail.com
						</div>
					</div>
					<div class="row">
						<div class="cell1">
							닉네임
						</div>
						<div class="cell2">
							네일룩닉네임
						</div>
					</div>
				</div>
			</div>
			<div class="join_bottom_box no_drag">
				계정 정보 수정은 <span>내정보수정</span> 페이지에서 변경 가능합니다.
			</div>
			<div class="bottom_area noline">
				<div class="cell1">
				</div>
				<div class="cell2">
					<img onclick="location.href='./index_nologin.jsp'" src="../images/join/img_join_btn3.png" alt="메인으로">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>