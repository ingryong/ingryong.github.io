<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file = "header.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/chromagallery.css" />
<script type="text/javascript">
var photoCount = 1;
var photoCountA = new Array(5,4,3,2,1);
var photoCheck = 1;
var oldShopName = "";
var pageNo = 1;
var loading = false;
$(document).ready(function() {
	$('#top_menu1').addClass('on'); //상단 메뉴 색상 활성화
	
	$("#photoFile1")
	.change(
		function() {
			var files = !!this.files ? this.files: [];
			if (!files.length|| !window.FileReader) {
				return;
			}
			
			if(photoCountA.length<=0){
				$("#img_basic").remove();
				photoCheck = 0;
			}
			
			var readImg = new FileReader();
			readImg.readAsDataURL(files[0]);
			readImg.onload = function(e) {
				var content = "<li id ='img_add" + photoCount + "' onclick='removePhoto("+photoCount+")'><img style='height:120px; width:120px;' id='camera_dummy' src='" +  e.target.result + "'><div class='community_img_del'><img src='../images/svg/icon_x_w.svg'></div></li>";
				$("#img_area").prepend(content);
			}
	});

		$("#photoFile2")
		.change(
			function() {
				var files = !!this.files ? this.files: [];
				if (!files.length || !window.FileReader) {
					return;
				}
				
				if(photoCountA.length<=0){
					$("#img_basic").remove();
					photoCheck = 0;
				}
				
				var readImg = new FileReader();
				readImg.readAsDataURL(files[0]);
				readImg.onload = function(e) {
					var content = "<li id ='img_add" + photoCount + "' onclick='removePhoto("+photoCount+")'><img style='height:120px; width:120px;' id='camera_dummy' src='" +  e.target.result + "'><div class='community_img_del'><img src='../images/svg/icon_x_w.svg'></div></li>";
					$("#img_area").prepend(content);
				}
		});

		$("#photoFile3")
			.change(
			function() {
				var files = !!this.files ? this.files: [];
				if (!files.length || !window.FileReader) {
					return;
				}
				
				if(photoCountA.length<=0){
					$("#img_basic").remove();
					photoCheck = 0;
				}

				var readImg = new FileReader();
				readImg.readAsDataURL(files[0]);
				readImg.onload = function(e) {
					var content = "<li id ='img_add" + photoCount + "' onclick='removePhoto("+photoCount+")'><img style='height:120px; width:120px;' id='camera_dummy' src='" +  e.target.result + "'><div class='community_img_del'><img src='../images/svg/icon_x_w.svg'></div></li>";
					$("#img_area").prepend(content);
				}
	});

	$("#photoFile4")
	.change(
		function() {
			var files = !!this.files ? this.files: [];
				if (!files.length || !window.FileReader) {
					return;
				}
				
				if(photoCountA.length<=0){
					$("#img_basic").remove();
					photoCheck = 0;
				}
				
				var readImg = new FileReader();
				readImg.readAsDataURL(files[0]);
				readImg.onload = function(e) {
					var content = "<li id ='img_add" + photoCount + "' onclick='removePhoto("+photoCount+")'><img style='height:120px; width:120px;' id='camera_dummy' src='" +  e.target.result + "'><div class='community_img_del'><img src='../images/svg/icon_x_w.svg'></div></li>";
					$("#img_area").prepend(content);
				}
	});

	$("#photoFile5")
	.change(
		function() {

			var files = !!this.files ? this.files: [];
				if (!files.length || !window.FileReader) {
					return;
				}

				var readImg = new FileReader();
				readImg.readAsDataURL(files[0]);
				readImg.onload = function(e) {
									
				if(photoCountA.length<=0){
					$("#img_basic").remove();
					photoCheck = 0;
				}
									
				var content = "<li id ='img_add" + photoCount + "' onclick='removePhoto("+photoCount+")'><img style='height:120px; width:120px;' id='camera_dummy' src='" +  e.target.result + "'><div class='community_img_del'><img src='../images/svg/icon_x_w.svg'></div></li>";
				$("#img_area").prepend(content);
		}
	});
});

function removePhoto(photoNum) {
	if(confirm("삭제 하시겠습니까?") == true){
		photoCount = photoNum;
		if (photoCount == 1) {
			$("#photoFile1").val("");
			if(photoCheck == 0){
				$("#img_area").append("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
				photoCheck = 1;
			}
		} else if (photoCount == 2) {
			$("#photoFile2").val("");
			if(photoCheck == 0){
				$("#img_area").append("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
				photoCheck = 1;
			}
		} else if (photoCount == 3) {
			$("#photoFile3").val("");
			if(photoCheck == 0){
				$("#img_area").append("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
				photoCheck = 1;
			}
		} else if (photoCount == 4) {
			$("#photoFile4").val("")
			if(photoCheck == 0){
				$("#img_area").append("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
				photoCheck = 1;
			}
		} else if (photoCount == 5) {
			$("#photoFile5").val("");
			if(photoCheck == 0){
				$("#img_area").append("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
				photoCheck = 1;
			}
		}
		$("#img_add"+photoCount).remove();
		photoCountA.push(photoCount);
		if (photoCountA.length >= 5) {
			photoCount = 0;
			$("#img_area").html("<li id ='img_basic'><a href='javascript:openPhotoFile();'><img id='camera_dummy' src='../images/svg/icon_photo_plus.svg'></li>");
		}
	}else{
		return;
	}
}

function openPhotoFile() {
	photoCount = photoCountA.pop();
	if (photoCount == 1) {
		$("#photoFile1").click();
	} else if (photoCount == 2) {
		$("#photoFile2").click();
	} else if (photoCount == 3) {
		$("#photoFile3").click();
	} else if (photoCount == 4) {
		$("#photoFile4").click();
	} else if (photoCount == 5) {
		$("#photoFile5").click();
	} else {
		alert("최대 5개까지 첨부 가능합니다.");
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
				<div class="menu1" onclick="location.href='./communitylist.jsp'">
					전체글 <span style="display:on;">></span>
				</div>
				<div class="menu1" onclick="location.href='./communitylist.jsp'">
					인기글 <span style="display:on;">></span>
				</div>
				<div class="menu2" onclick="location.href='./communitylist.jsp'">
					갤러리 <span style="display:on;">></span>
				</div>
			</div>
		</div>
		
		<!-- 콘텐츠 -->
		<div class="community_area no_drag">
			<div class="title">
				<div class="left">
					커뮤니티 글쓰기
				</div>
				<div class="right">
				</div>
			</div>
			
			
			<input type="hidden" id="communityCategory" value="etc">
			<input type="hidden" id="shopSeq" value="0">
			<input type="hidden" id="shopName" value="개인">
			
			<form action="">
				<input type="file" id="photoFile1" accept="image/*" style="display: none"> <input
					   type="file" id="photoFile2" accept="image/*" style="display: none"> <input
					   type="file" id="photoFile3" accept="image/*" style="display: none"> <input
				       type="file" id="photoFile4" accept="image/*" style="display: none"> <input
				       type="file" id="photoFile5" accept="image/*" style="display: none">
			</form>
			
			<div class="write_area">
				<!-- 사진등록 -->
				<div class="write_form_group">
					<div class="input_community_photo" id="photo_community_img">
						<ul id = "img_area">
							<li id ="img_basic">
								<a href="javascript:openPhotoFile();"><img id="camera_dummy" src="../images/svg/icon_photo_plus.svg" alt="사진추가버튼" /></a>
							</li>
						</ul>
					</div>
				</div>
					
				<div class="writeform_area">
					<!-- 네일샵 카드 -->
					<div class="shop_card">
						<div class="cell1" id="shopPhoto">
							<img src="../images/index/shop_img.jpg" alt="기본 프로필 이미지">
						</div>
						<div class="cell2">
							<div class="row1">
								<div id="shopNameD">샵이름</div>
							</div>
							<div class="row2">
								<div id="shopAddress">샵주소</div>
							</div>
						</div>
						<div class="cell3">
							<a onclick="shopCancel()">
								<img class="x" src="../images/svg/icon_x.svg" alt=">" />
							</a>
						</div>
					</div>
				</div>
					
				<!-- 본문작성 -->
				<div class="writeform_area">
					<div class="write_box">
						<textarea id="communityContents" rows="10" cols="30" name="commuityContents" placeholder="내용을 입력하세요" onkeyup="chkword(this, 1900)"></textarea>
					</div>
				</div>
			</div>
			
			<!-- 버튼 -->
			<div class="shop_content_area">
				<div class="shop_box button1" onclick="javascript:communityComplete();">
					<div class="btn_banner2">
						<div>뽐내기 작성완료 ></div>
					</div>
				</div>
			</div>
		
		</div>
	</div>
</div>
</body>
</html>