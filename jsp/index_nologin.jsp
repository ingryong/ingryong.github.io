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
		<div class="white_bar">
			<div class="table">
				<div class="cell1">
					<img src="../images/nailook_logo.png" onclick="location.href='./index_nologin.jsp'">
				</div>
				<div class="cell2"><a onclick="javascript:needlogin();">커뮤니티</a></div>
				<div class="cell3"><a onclick="javascript:needlogin();">샵정보관리</a></div>
				<div class="cell4"><a onclick="javascript:needlogin();">예약관리</a></div>
				<div class="cell5"><a onclick="javascript:needlogin();">쿠폰관리</a></div>
				<div class="cell6"><a onclick="javascript:needlogin();">단골관리</a></div>
				<div class="cell7"><a onclick="javascript:needlogin();">직원관리</a></div>
			</div>
		</div>
	</div>
	<!-- 상단 이미지 -->
	<div class="top_image_area">
	</div>
	
	<div class="content_area">
		<!-- 네일룩 다운로드 배너 -->
		<div class="index_banner_box">
			<div class="cell1">
				<img src="../images/index/img_nailook_down.png">
			</div>
			<div class="cell2">
				<img src="../images/index/icon_googleplay.png">
			</div>
			<div class="cell3">
				<img src="../images/index/icon_appstore.png">
			</div>
		</div>
		
		<!-- 랜덤매장리스트 -->
		<div class="index_shop_list">
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
			<div class="shop_list_box no_drag">
				<img src="../images/index/shop_img.jpg">
				<div class="list_content_box">
					<div class="row1">
						네일 보니토
					</div>
					<div class="row2">
						Tel : 02-744-1113
					</div>
					<div class="row3">
						서울특별시 종로구 연지동 136-36 한국기독교회관 민토시장 1F
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="bottom_blank"></div>
</div>
</body>
</html>