<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file = "header.jsp" %>

<script type="text/javascript">
$(document).ready(function(){
    $("#all_terms").click(function(){
        if($("#all_terms").prop("checked")){
            $("input[name=terms1]").prop("checked",true);
            $("input[name=terms2]").prop("checked",true);
            $("input[name=terms3]").prop("checked",true);

        }else{
            $("input[name=terms1]").prop("checked",false);
            $("input[name=terms2]").prop("checked",false);
            $("input[name=terms3]").prop("checked",false);

        }
    })
})

function goNext() {
	
	if ($("#terms1").is(":checked") == false) {
		alert("Nailook 서비스 약관에 동의하지 않으셨습니다.");
		return false;
	}
	else if ($("#terms2").is(":checked") == false) {
		alert("Nailook 개인정보 취급에 동의하지 않으셨습니다.");
		return false;
	}
	else if ($("#terms3").is(":checked") == false) {
		alert("Nailook 위치정보 수집에 동의하지 않으셨습니다.");
		return false;
	}
	else {
		document.location.href="./join2.jsp";
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
			<img src="../images/join/img_join01.png">
		</div>
		<div class="content_box">
			<div class="join_title no_drag">
				<h1>매니저 가입 약관 동의</h1>
				<span>서비스 이용약관, 개인정보 취급방침, 위치정보 수집에 동의해주세요.</span>
			</div>
			<div class="terms_box">
				<div class="row1 no_drag">
					<span>Nailook 서비스 약관 동의</span>
					<input type="checkbox" id="terms1" name="terms1">
				</div>
				<div class="row2">
					<pre>서비스 이용약관에 대한 글</pre>
				</div>
			</div>
			<div class="terms_box">
				<div class="row1 no_drag">
					<span>Nailook 개인정보 취급 동의</span>
					<input type="checkbox" id="terms2" name="terms2">
				</div>
				<div class="row2">
					<pre>개인정보 취급에 대한 글</pre>
				</div>
			</div>
			<div class="terms_box">
				<div class="row1 no_drag">
					<span>Nailook 위치정보 수집 동의</span>
					<input type="checkbox" id="terms3" name="terms3">
				</div>
				<div class="row2">
					<pre>위치정보 수집에 대한 글</pre>
				</div>
			</div>
			<div class="agree_box no_drag">
				<span>위의 약관에 모두 동의 합니다.</span>
				<input type="checkbox" id="all_terms">
			</div>
		</div>
		<div class="bottom_area">
			<div class="cell1">
				<img onclick="javascript:history.back();" src="../images/join/img_prev.png" alt="이전으로">
			</div>
			<div class="cell2">
				<img onclick="javascript:goNext();" src="../images/join/img_join_btn1.png" alt="동의완료">
			</div>
		</div>
	</div>
	
</div>
</body>
</html>