<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
function needlogin() {
	
	if(confirm("로그인 후 이용 가능합니다.")==true)
	{
		location.replace('./login.jsp');
	}
	else{
		return;
	}
}

function enterkey() {
    if (window.event.keyCode == 13) {

         // 엔터키가 눌렸을 때 실행할 내용
        location.replace('./index.jsp');
    }
}

</script>
</head>
<body>
<div class="wrap">
	<div class="top_area">
		<div class="black_bar">
			<div class="table">
				<div class="cell1"></div>
				<div class="cell2"></div>
				<div class="cell3"><a onclick="location.href='./login.jsp'">로그인</a></div>
				<div class="cell4"><a>회원가입</a></div>
				<div class="cell5"><a>고객지원</a></div>
			</div>
		</div>
		<div class="white_bar">
			<div class="table">
				<div class="cell1">
					<img src="../images/nailook_logo.png" onclick="location.href='./index_nologin.jsp'">
				</div>
				<div class="cell2"><a onclick="javascript:needlogin();">커뮤니티</a></div>
				<div class="cell3"><a onclick="javascript:needlogin();">샵정보관리</a></div>
				<div class="cell4"><a onclick="javascript:needlogin();">예약관리</a></div>
				<div class="cell5"><a onclick="javascript:needlogin();">단골관리</a></div>
				<div class="cell6"><a onclick="javascript:needlogin();">직원관리</a></div>
				<div class="cell7"><a onclick="javascript:needlogin();">1:1문의관리</a></div>
			</div>
		</div>
	</div>
	<div class="top_blank"></div>
	
	<div class="content_area">
		<div class="login_box">
			<div class="top">
				<span>로그인</span><p>네일룩 매니저를 이용하시려면 로그인이 필요합니다.</p>
			</div>
			<div class="mid">
				<div class="input">
					<input id="boss_id" type="text" placeholder="E-MAIL">
				</div>
				<div class="input">
					<input id="boss_pw" type="password" placeholder="PASSWORD" onkeyup="enterkey();">
				</div>
			</div>
			<div class="bottom">
				<div class="login_btn" onclick="location.href='./index.jsp'">
					로그인
				</div>
				<div class="other">
					<p>네일룩 매니저를 처음 이용하시나요? <span> 회원가입 ></span></p>
					<p>비밀번호가 기억나지 않으신가요? <span> 비밀번호찾기 ></span></p>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>