<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script>
var selectObj;
function popupSelectCode(popupSelect) {
	selectObj = popupSelect;
	switch (popupSelect) {
	case "kr":

		$("#popup_country").html("대한민국");
		$("#popup_countryCode").html("+82");
		break;
	case "us":

		$("#popup_country").html("미국");
		$("#popup_countryCode").html("+1");
		break;
	case "jp":

		$("#popup_country").html("일본");
		$("#popup_countryCode").html("+81");
		break;
	case "cn":

		$("#popup_country").html("중국");
		$("#popup_countryCode").html("+86");
		break;
	case "au":

		$("#popup_country").html("호주");
		$("#popup_countryCode").html("+61");
		break;
	case "gb":

		$("#popup_country").html("영국");
		$("#popup_countryCode").html("+44");
		break;
	case "ca":

		$("#popup_country").html("캐나다");
		$("#popup_countryCode").html("+1");
		break;
	case "ph":

		$("#popup_country").html("필리핀");
		$("#popup_countryCode").html("+63");
		break;
	case "hk":

		$("#popup_country").html("홍콩");
		$("#popup_countryCode").html("+852");
		break;
	case "vn":

		$("#popup_country").html("베트남");
		$("#popup_countryCode").html("+84");
		break;
	case "my":

		$("#popup_country").html("말레이시아");
		$("#popup_countryCode").html("+60");
		break;
	case "tw":

		$("#popup_country").html("대만");
		$("#popup_countryCode").html("+886");
		break;
	case "sg":

		$("#popup_country").html("싱가포르");
		$("#popup_countryCode").html("+65");
		break;
	case "ru":

		$("#popup_country").html("러시아");
		$("#popup_countryCode").html("+7");
		break;
	default:
		$("#popup_country").html("#country");
		$("#popup_countryCode").html("#countryCode");
		break;
	}
}

function selectCode() {
	switch (selectObj) {
	case "kr":
		$("#country").html("대한민국");
		$("#countryCode").html("+82");
		break;
	case "us":
		$("#country").html("미국");
		$("#countryCode").html("+1");
		break;
	case "jp":
		$("#country").html("일본");
		$("#countryCode").html("+81");
		break;
	case "cn":
		$("#country").html("중국");
		$("#countryCode").html("+86");
		break;
	case "au":
		$("#country").html("호주");
		$("#countryCode").html("+61");
		break;
	case "gb":
		alert("영국을 선택");
		$("#country").html("영국");
		$("#countryCode").html("+44");
		break;
	case "ca":
		$("#country").html("캐나다");
		$("#countryCode").html("+1");
		break;
	case "ph":
		$("#country").html("필리핀");
		$("#countryCode").html("+63");
		break;
	case "hk":
		$("#country").html("홍콩");
		$("#countryCode").html("+852");
		break;
	case "vn":
		$("#country").html("베트남");
		$("#countryCode").html("+84");
		break;
	case "my":
		$("#country").html("말레이시아");
		$("#countryCode").html("+60");
		break;
	case "tw":
		$("#country").html("대만");
		$("#countryCode").html("+886");
		break;
	case "sg":
		$("#country").html("싱카포르");
		$("#countryCode").html("+65");
		break;
	case "ru":
		$("#country").html("러시아");
		$("#countryCode").html("+7");
		break;
	default:
		break;
	}
}
</script>

<!-- 팝업 -->
	<div id="country_pop" style="display:none;">
		<div class="background">
			<div class="box no_drag">
				<div class="title">
					<div class="left">
						국가코드 선택
					</div>
					<div class="right">
					<span onClick="document.getElementById('country_pop').style.display='none';">x</span>
					</div>
				</div>
				<div class="top">
					<div id="popup_countryCode" class="cell1">
						+82
					</div>
					<div id="popup_country" class="cell2">
						대한민국
					</div>
					<div class="cell3" onclick="selectCode(); document.getElementById('country_pop').style.display='none';">
						확인
					</div>
				</div>
				
				<div class="content">
					<div class="country_box" onclick="popupSelectCode('kr')">
						<div class="cell1">
							+82
						</div> 
						<div class="cell2">
							대한민국
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('us')">
						<div class="cell1">
							+1
						</div> 
						<div class="cell2">
							미국
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('jp')">
						<div class="cell1">
							+81
						</div> 
						<div class="cell2">
							일본
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('cn')">
						<div class="cell1">
							+86
						</div> 
						<div class="cell2">
							중국
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('au')">
						<div class="cell1">
							+61
						</div> 
						<div class="cell2">
							호주
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('gb')">
						<div class="cell1">
							+44
						</div> 
						<div class="cell2">
							영국
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('ca')">
						<div class="cell1">
							+1
						</div> 
						<div class="cell2">
							캐나다
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('ph')">
						<div class="cell1">
							+63
						</div> 
						<div class="cell2" >
							필리핀
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('hk')">
						<div class="cell1">
							+852
						</div> 
						<div class="cell2">
							홍콩
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('vn')">
						<div class="cell1">
							+84
						</div> 
						<div class="cell2">
							베트남
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('my')">
						<div class="cell1">
							+60
						</div> 
						<div class="cell2">
							말레이시아
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('tw')">
						<div class="cell1">
							+886
						</div> 
						<div class="cell2">
							대만
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('sg')">
						<div class="cell1">
							+65
						</div> 
						<div class="cell2">
							싱가포르
						</div>
					</div>
					<div class="country_box" onclick="popupSelectCode('ru')">
						<div class="cell1">
							+7
						</div> 
						<div class="cell2">
							러시아
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>