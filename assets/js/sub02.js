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
	
	//esc 또는 바탕 눌러 네비 닫기
	$(document).on("keyup",function(evt){
		var keyCode = evt.which;
		if( keyCode == 27 ){
			naviClose();
		}
		
	});
	$("#wrap").on("click",function(){
		if($nav_gnb.is(":visible")){
			naviClose();
		}
	});
	$("nav").on("click",function(evt){
		evt.stopPropagation();
	});



});



$(function(){
	
	
		
	/* ////////////////////////////////// */
	/* ///// CHECK IT OUT 부분 ///// */
	/* ///////////////////////////////// */	
	
	//CHECK IT OUT부분
	var $checkPageBtn_top = $(".check_cont.box_top .page>li>a"); //위쪽 페이지네이션
	var checkPageIdx_top = 0; //몇 번째 글인지 판단 여부 변수
	var checkPageIdx_top_current = 0; //동일 버튼 누름 방지 변수
	var checkPageInterval_top = null; //인터벌 아이디를 담을 변수
	
	var $checkPageBtn_bottom = $(".check_cont.box_bottom .page>li>a"); //아래쪽 페이지네이션
	var checkPageIdx_bottom = 0; //몇 번째 글인지 판단 여부 변수
	var checkPageIdx_bottom_current = 0; //동일 버튼 누름 방지 변수
	var checkPageInterval_bottom = null; //인터벌 아이디를 담을 변수
	
	
		
	$(window).on("load",function(){
		checkPageInterval_top_fun();
		checkPageInterval_bottom_fun();
	});
	
	
	//몇 번째 서브 페이지인지 판단
	var subPageOrder = null;
	if( $(".container").hasClass("sub01") ){
		//console.log("서브 1번");
		subPageOrder = 1;
	}else if( $(".container").hasClass("sub02") ){
		//console.log("서브 2번");
		subPageOrder = 2;
	}else if( $(".container").hasClass("sub03") ){
		//console.log("서브 3번");
		subPageOrder = 3;
	}else if( $(".container").hasClass("sub04") ){
		//console.log("서브 3번");
		subPageOrder = 4;
	}
	
	
	//위쪽 박스 내용 바뀌는 함수
	function checkPage_top_change(){
		
		$checkPageBtn_top.eq(checkPageIdx_top).parent("li").addClass("on").siblings().removeClass("on"); //on클래스 붙이기
		$(".check_cont.box_top .txt").hide().eq(checkPageIdx_top).stop().fadeIn(200); //글자 내보이기
		$(".check_cont.box_top").css({"background-image":"url(images/sub_web_"+subPageOrder+"_check_top_"+checkPageIdx_top+".jpg"});
	}
		
	//아래쪽 박스 내용 바뀌는 함수
	function checkPage_bottom_change(){
		
		$checkPageBtn_bottom.eq(checkPageIdx_bottom).parent("li").addClass("on").siblings().removeClass("on"); //on클래스 붙이기
		$(".check_cont.box_bottom .txt").hide().eq(checkPageIdx_bottom).stop().fadeIn(200); //글자 내보이기
		$(".check_cont.box_bottom").css({"background-image":"url(images/sub_web_"+subPageOrder+"_check_bottom_"+checkPageIdx_bottom+".jpg"});
	}
	
	
	
	//6초마다 자동으로 바뀌는 인터벌
	function checkPageInterval_top_fun(){
		checkPageInterval_top = setInterval(function(){
		if ( checkPageIdx_top > $(".page.p_top").size()-1){
			checkPageIdx_top = 0;
		}else{
			checkPageIdx_top ++;
		}
		//console.log(checkPageIdx_top)
		checkPage_top_change()
		checkPageIdx_top_current = checkPageIdx_top //같은 걸 두 번 눌렀을 때 이벤트 발생 방지용
		},6000);
	}

	//6초마다 자동으로 바뀌는 인터벌
	function checkPageInterval_bottom_fun(){
		checkPageInterval_bottom = setInterval(function(){
		if ( checkPageIdx_bottom > $(".page.p_bottom").size()-1){
			checkPageIdx_bottom = 0;
		}else{
			checkPageIdx_bottom ++;
		}
		//console.log(checkPageIdx_bottom)
		checkPage_bottom_change()
		checkPageIdx_bottom_current = checkPageIdx_bottom //같은 걸 두 번 눌렀을 때 이벤트 발생 방지용
		},6000);
	}
	
	
	//위쪽 박스의 페이지네이션을 눌렀을 때
	$checkPageBtn_top.on("click",function(evt){
		evt.preventDefault();

		checkPageIdx_top = $checkPageBtn_top.index($(this));
		
		if(checkPageIdx_top !== checkPageIdx_top_current){
			checkPage_top_change()			
		}else{
			//console.log("같은 것을 또 눌렀습니다")
		}
		checkPageIdx_top_current = checkPageIdx_top //같은 걸 두 번 눌렀을 때 이벤트 발생 방지용
	});
	
	//위쪽 박스의 정지재생 버튼을 눌렀을 때
	$(".page_stop.top").on("click",function(){
		$(this).toggleClass("stopped");
		if($(".page_stop.top").hasClass("stopped")){
			clearInterval(checkPageInterval_top);
			//console.log("멈춤");
			$(this).text("▶");
		}else{
			//console.log("재생");
			$(this).text("||");
			
			/* 0410 - 재생 눌렀을 때 바로 바뀌는 게 좋겠다는 의견을 수렴하여 추가합니다 */
			if ( checkPageIdx_top > $(".page.p_top").size()-1 ){checkPageIdx_top = 0;}else{checkPageIdx_top ++}
			checkPage_top_change()
			checkPageIdx_top_current = checkPageIdx_top
			/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
			
			checkPageInterval_top_fun();
		}
	});	
	
	
	//아래쪽 박스의 페이지네이션을 눌렸을 때
	$checkPageBtn_bottom.on("click",function(evt){
		evt.preventDefault();

		checkPageIdx_bottom = $checkPageBtn_bottom.index($(this));
		
		if(checkPageIdx_bottom !== checkPageIdx_bottom_current){
			checkPage_bottom_change()			
		}else{
			//console.log("같은 것을 또 눌렀습니다")
		}
		checkPageIdx_bottom_current = checkPageIdx_bottom //같은 걸 두 번 눌렀을 때 이벤트 발생 방지용
	});

	//아래쪽 박스의 재생정지 버튼을 눌렀을 때
	$(".page_stop.bottom").on("click",function(){
		$(this).toggleClass("stopped");
		if($(".page_stop.bottom").hasClass("stopped")){
			clearInterval(checkPageInterval_bottom);
			//console.log("멈춤");
			$(this).text("▶");
		}else{
			//console.log("재생");
			$(this).text("||");
			
						
			/* 0410 - 재생 눌렀을 때 바로 바뀌는 게 좋겠다는 의견을 수렴하여 추가합니다 */
			if ( checkPageIdx_bottom > $(".page.p_bottom").size()-1 ){checkPageIdx_bottom = 0;}else{checkPageIdx_bottom ++}
			checkPage_bottom_change()
			checkPageIdx_bottom_current = checkPageIdx_bottom
			/* - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - */
			
			checkPageInterval_bottom_fun();
			}
	});
	
	
	
});



$(function(){
	
			
	/* /////////////////////////////////// */
	/* ///// 다른 웹포폴 보기 부분 ///// */
	/* ////////////////////////////////// */	
	
	
	var $otherWebWorks = $("#more_works>.container>div");
	var $otherWebWorksArrow = $otherWebWorks.children(".arrow");
	var $otherWebWorksDesc = $otherWebWorks.children(".desc");
	var otherWebWorks_LR = 0; //오른쪽 왼쪽 판단 변수. 0=왼쪽, 1=오른쪽
	
	//마우스를 올렸을 때
	$otherWebWorks.add($otherWebWorksDesc).on(
		"mouseover",function(){
			$otherWebWorksArrow.stop().fadeIn();
			otherWebWorks_LR = $otherWebWorks.index($(this));
			
			if (otherWebWorks_LR == 0){
				$otherWebWorksDesc.filter(".right").stop().fadeOut();
				$otherWebWorksDesc.filter(".left").stop().fadeIn();
				
			}else{
				$otherWebWorksDesc.filter(".left").stop().fadeOut();
				$otherWebWorksDesc.filter(".right").stop().fadeIn();
				
			}
	
			
			

	});
	
	//마우스를 내렸을 때	
	$otherWebWorks.on("mouseleave",function(){
		$otherWebWorksArrow.stop().fadeOut();
		$otherWebWorksDesc.stop().fadeOut();
	});



	
	
});