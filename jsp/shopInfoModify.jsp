<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="pop_bg" id="shopmodify_pop" style="display:none">
	<div class="shop_modify_box">
		<div class="title no_drag">
			<div class="left">
				샵정보수정
			</div>
			<div class="right">
			<span onClick="document.getElementById('shopmodify_pop').style.display='none';">x</span>
			</div>
		</div>
		<div class="content">
			<div class="title">
				샵 대표 이미지 변경
			</div>
			<div class="detail_box">
				<div class="table1">
					<img src="../images/index/shop_img.jpg">
				</div>
			</div>
			<div class="title no_drag">
				샵 정보 변경
			</div>
			<div class="detail_box">
				<div class="shopInfo_box">
					<div class="row">
						<div class="left no_drag">
							샵 이름
						</div>
						<div class="right">
							<input class="input1" type="text" name="shopName"/>
						</div>
					</div>
					<div class="row">
						<div class="left no_drag">
							전화번호
						</div>
						<div class="right">
							<input class="input1" type="tel" name="shopNumber"/>
						</div>
					</div>
					<div class="row">
						<div class="left no_drag">
							주소
						</div>
						<div class="right">
							<input class="input1" type="text" name="shopAdress"/>
						</div>
					</div>
					<div class="row">
						<div class="left no_drag">
							영업시간
						</div>
						<div class="right">
							<input class="input2" type="time" name="shopOpenTime"/> ~ <input class="input2" type="time" name="shopCloseTime"/>
						</div>
					</div>
					<div class="row">
						<div class="left no_drag">
							휴무일
						</div>
						<div class="right">
							<input class="input1" type="text" name="shopCloseday"/>
						</div>
					</div>
					<div class="row">
						<div class="left no_drag">
							소개말
						</div>
						<div class="right2">
							<textarea rows="5" cols="62"></textarea>
						</div>
					</div>
				</div>
			</div>
			<div class="btn_box">
				<div class="access_btn">샵 정보수정 완료</div>
			</div>
			
		</div>
	</div>
</div>