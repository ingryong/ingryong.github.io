$(function(){
	

	/* /////////////////////////////// */
	/* ///// 네비게이션 부분 ///// */
	/* ////////////////////////////// */


	//변수 선언
	var $body = $("html,body");
	
	var $navi = $("#toggle-menu");
	var $nav_indi = $(".nav_indicator");

	var $nav_gnb = $nav_indi.siblings("div"); // = $(".nav_container")
	var $nav_line = $nav_indi.children("div");
	var $nav_guide = $nav_indi.children("p");

	var $nav_mnu = $("#gnb li a");

	var secTop = [0]
	var mnuName = new Array();

	
	//네비 메뉴 열림 함수
	function naviOpen(){
			$nav_gnb.stop().fadeIn(500);
			$navi.parent().addClass("on");
	}

	//네비 메뉴 닫힘 함수
	function naviClose(){
			$nav_gnb.stop().fadeOut(250);
			$navi.parent().removeClass("on");
			$navi.prop("checked",false);
	}


	//네비 클릭 시 메뉴 등장
	$navi.on("click",function(){
		//처음 누른 상태
		if($(this).prop("checked")){
			
			naviOpen();
			
		//다시 누른 상태
		}else{
			naviClose();
		}
	})
	

	//ESC를 눌러 닫기 (메뉴, 라이트박스 공용)
	$(document).on("keyup",function(evt){
		var keyCode = evt.which;
		if( keyCode == 27 ){
			naviClose();
			CloseDesignModal();
		}
		
	});
	$("#wrap").on("click",function(){
		if($nav_gnb.is(":visible")){
			naviClose();
		}
		if($designModalBg.is(":visible")){
			CloseDesignModal();
		}
	});
	$("nav").on("click",function(evt){
		evt.stopPropagation();
	});
	
	
	
	console.log('새로운 홈페이지를 준비 중이에요! :D');
    
	//윈도우 로드 이벤트
	$(window).on("load resize",function(){
		$moveBtn.removeClass("go_top");
		toTop_or_toBottom();
	});

	var $body = $("html,body");
	var $moveBtn = $(".to_top_bottom"); //아래/위로 가기 버튼
	var $homeBtn = $(".to_home"); //홈으로 가기 버튼
	
	var moveToSwitch = true; //true = 아래로, false = 위로
	//var bodyHeight = $("body").height();
	var bodyHeight = $(document).height(); //0410 - 기존 body.height에서 document로 변경 (body로 하면 윈도로드 전에 값을 가져와서 body height = window height가 되는 참사 발생....)

	//맨 위로 가는 함수
	function moveTop(timeVal){
		var time = 800; //속도 기본값
		if(timeVal!=null){
			time = timeVal; //값이 있으면 그 값이 time이 됩니다
		}
		$body.stop().animate({scrollTop:0},time);
	}

	//맨 아래로 가는 함수 
	function moveBottom(timeVal){
		var time = 800; //속도 기본값
		if(timeVal!=null){
			time = timeVal; //값이 있으면 그 값이 time이 됩니다
		}
		$body.stop().animate({scrollTop:bodyHeight},time);
	}


	//이동 버튼 클릭 이벤트
	$moveBtn.on("click",function(evt){	
		evt.preventDefault();
		if(moveToSwitch == false){
			//위로 가는 것으로 활성화
			moveTop();
		}else{
			//아래로 가는 것으로 활성화
			moveBottom();
		}
	});

	
	//문서 2/3이상 스크롤 시 맨 위/아래 버튼 전환 함수
	var scrollBottom = 0;
	var scrollOverBodyHeight = (bodyHeight/3)*2
	function toTop_or_toBottom(){
		scrollBottom = $(window).scrollTop()+$(window).height();
		if ( scrollBottom >= scrollOverBodyHeight ){
			//아래->위로 변환
			moveToSwitch = false;
			$moveBtn.addClass("go_top");
		}else{
			//위->아래로 변환
			moveToSwitch = true;
			$moveBtn.removeClass("go_top");
		}
	}
});
