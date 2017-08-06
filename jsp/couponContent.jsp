<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    	function coupon_get(){
    		document.getElementById('coupon_content').style.display='none';
    		document.getElementById('coupon_get').style.display='';
    	}
    </script>
				<div id="coupon_content" class="content_box" style="display:">	
						<div class="coupon-info_box">
							<div class="img_area">
								<img src="../images/index/shop_img.jpg">
							</div>
							<div class="info_table1">
								<div class="cell1 no_drag">
									남은쿠폰
								</div>
								<div class="cell2">
									100 / 300 장
								</div>
								<div class="cell3 no_drag">
									<span onclick="javascript:coupon_get();">쿠폰수령목록 조회></span>
								</div>
							</div>
							<div class="info-table2">
								<div class="row1">
									<div class="cell1 no_drag">
										쿠폰명
									</div>
									<div class="cell2">
										<b>테스트쿠폰</b>
									</div>
								</div>
								<div class="row1">
									<div class="cell1 no_drag">
										대상
									</div>
									<div class="cell2">
										VIP등급 이상
									</div>
								</div>
								<div class="row1">
									<div class="cell1 no_drag">
										할인혜택
									</div>
									<div class="cell2">
										모든 서비스 중 택1 30%할인
									</div>
								</div>
								<div class="row1">
									<div class="cell1 no_drag">
										할인기간
									</div>
									<div class="cell2">
										2017-06-01 ~ 2017-06-30
									</div>
								</div>
								<div class="row2">
									<div class="cell1 no_drag">
										사용조건
									</div>
									<div class="cell2">
										<pre>사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용사용조건 내용</pre>
									</div>
								</div>
							</div>
						</div>
						<div class="cp-close_btn"><span class="no_drag">쿠폰 조기종료</span></div>
						<div class="ps_area">※ 발급한 쿠폰은 수정이 불가능하며 조기종료만 가능합니다.</div>
					</div>