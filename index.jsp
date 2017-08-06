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
<%@include file="./indexShopAdd.jsp" %>
<div class="wrap">
	<%@include file = "./topBar.jsp" %>
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
				<div class="shop_plus" onClick="document.getElementById('shopadd_pop').style.display='';">샵 등록 +</div>
			</div>
		</div>
	</div>
	<div class="bottom_blank"></div>
</div>
</body>
</html>