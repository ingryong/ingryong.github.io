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
	<%@include file = "./topBar.jsp" %>
	
	<div class="join_area">
		<div class="title no_drag">
			<img src="../images/nailook_logo.png">
		</div>
		<div class="content_box">
			<div class="join_title no_drag">
				<h1>매니저 정보 수정</h1>
				<span>Nailook 매니저 로그인 정보 및 매니저 정보를 수정하세요.</span>
			</div>
			<div class="join_input_box">
				<div class="input_table no_drag">
					<div class="row1">
						<div class="cell1">
							이메일
						</div>
						<div class="cell2">
							<input class="readonly" type="text" id="bossEmail" value="qwer@gmail.com" readonly="readonly">
						</div>
					</div>
					<div class="row2">
						<div class="cell1">
							비밀번호 변경
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
							<input type="text" id="bossName" placeholder="실명" value="네일룩">
						</div>
					</div>
					<div class="row1">
						<div class="cell1">
							닉네임
						</div>
						<div class="cell2">
							<input type="text" id="bossName" placeholder="닉네임" value="네일룩">
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
							<input type="number" id="bossName" placeholder="휴대폰번호" value="01012341234">
						</div>
					</div>
				</div>
			</div>
			<div class="bottom_area">
				<div class="cell1">
				</div>
				<div class="cell2">
					<img onclick="location.href='./index.jsp'" src="../images/join/img_modify_btn.png" alt="가입완료">
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>