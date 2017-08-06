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
			<img src="../images/join/img_join02.png">
		</div>
		<div class="content_box">
			<div class="join_title no_drag">
				<h1>가입 정보 입력</h1>
				<span>Nailook 매니저 로그인 정보 및 가입 정보를 입력하세요.</span>
			</div>
			<div class="join_input_box">
				<div class="input_table no_drag">
					<div class="row1">
						<div class="cell1">
							이메일
						</div>
						<div class="cell2">
							<input type="text" id="bossEmail" placeholder="이메일">
						</div>
					</div>
					<div class="row2">
						<div class="cell1">
							비밀번호
						</div>
						<div class="cell2">
							<input type="password" id="bossPW" placeholder="비밀번호 (8~20자)">
						</div>
					</div>
					<div class="row3">
						<div class="cell1">
							비밀번호 재확인
						</div>
						<div class="cell2">
							<input type="password" id="bossPW2" placeholder="비밀번호 재확인">
						</div>
					</div>
				</div>
			</div>
			<div class="join_input_box">
				<div class="input_table no_drag">
					<div class="row1">
						<div class="cell1">
							이름
							</div>
						<div class="cell2">
							<input type="text" id="bossName" placeholder="실명">
						</div>
					</div>
					<div class="row1">
						<div class="cell1">
							닉네임
						</div>
						<div class="cell2">
							<input type="text" id="bossName" placeholder="닉네임">
						</div>
					</div>
					<div class="row1">
						<div class="cell1">
							휴대폰번호
						</div>
						<div class="cell3">
							<div onClick="document.getElementById('country_pop').style.display='';">
								<input type="text" id="numberAdress" value="+82" readonly="readonly">▼
							</div>
							<input type="number" id="bossName" placeholder="휴대폰번호">
						</div>
					</div>
				</div>
			</div>
			<div class="bottom_area">
				<div class="cell1">
					<img onclick="javascript:history.back();" src="../images/join/img_prev.png" alt="이전으로">
				</div>
				<div class="cell2">
					<img onclick="location.href='./join3.jsp'" src="../images/join/img_join_btn2.png" alt="가입완료">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>