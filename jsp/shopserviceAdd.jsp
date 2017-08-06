<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="pop_bg" id="service_pop" style="display:none;">
	<div class="pop_box">
		<div class="title">
			<div class="left">
				서비스 추가
			</div>
			<div class="right">
			<span onClick="javascript:close_pop();">x</span>
			</div>
		</div>
		
		<div class="content">
			<div class="title">
				서비스명
			</div>
			<div class="input_box">
				<input type="text" name="service_name" class="max">
			</div>
			<div class="title">
				시술 소요 시간
			</div>
			<div class="input_box">
				<input type="number" name="service_time"><span>분</span>
			</div>
			<div class="title">
				서비스 가격
			</div>
			<div class="input_box">
				<input type="number" name="service_price"><span>원</span>
			</div>
			<div class="title">
				서비스 설명
			</div>
			<div class="textarea_box">
				<textarea rows="5" cols="60" name="service_detail"></textarea>
			</div>
		</div>
		
		<div class="btn_box">
			<div class="btn">완료</div>
		</div>
	</div>
</div>