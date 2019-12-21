//HOME 부분 글자 타이핑 효과
$(function(){
    var typingBool = false;
    var typingIdx = 0;
    var typingTxt = $(".typing-txt").text(); // 타이핑할 텍스트(.typing-txt)를 가져온다
    typingTxt = typingTxt.split("") // typingTxt에 들어간 텍스트를 split("")하여 하나씩 나눈다.
    
    if(typingBool==false){ //타이핑이 진행되지 않았을 경우,
        typingBool = true;
        var tyInt = setInterval(typing,100);
    }
    
    function typing(){
        if(typingIdx < typingTxt.length){ //typingTxt에 입력된 텍스트의 수 만큼 반복
            $(".typing").append(typingTxt[typingIdx]); //한글자씩 이어준다.
            typingIdx++;
        } else{
            clearInterval(tyInt); //반복 종료
        }
    }

});


$(function(){
    //스크롤 해당 위치에 메뉴바 변경
    $(window).scroll(function(){
        $('li a').removeClass('active');
        var navScr =  $(window).scrollTop();

        if(navScr <= 650){
            $("li a[href='#home']").addClass('active');
        }else if(navScr > 650 && navScr <= 1300){
            $("li a[href='#about']").addClass('active');
        }else if(navScr > 1300 && navScr <= 2000){
            $("li a[href='#skills']").addClass('active');
        }else{
            $("li a[href='#portfolio']").addClass('active');
        }
    });
});

$(function(){
    //메뉴 클릭 시 스크롤 이동 애니메이션
    $('nav #m a').click(function(e){
        $('nav #m a').removeClass('active');
        $(this).addClass('active');

        $('html,body').animate({scrollTop:$(this.hash).offset().top}, 500);//해시값을 가진 위치로 이동

        var scrollH = $(window).scrollTop();
        e.preventDefault();
    }); //메뉴 클릭하면 스크롤다운
});


//해당 위치에서 애니메이션 효과내기
$(function(){

    $('#home .st').delay(1000).addClass('slidein');
    
  
        $(window).scroll(function(){
            
            var sct = $(window).scrollTop();
            var about = $('#about').offset().top;
            var skills = $('#skills').offset().top;
            var portfolio = $('#portfolio').offset().top;

            if(sct >= about-300 ){
                $('.left').addClass('fadein on');
                $('.right').addClass('fadein on');
            }
            if(sct > skills-400){
                $('.con_box').addClass('fadein on');
            }
            if(sct > portfolio-400 ){
                $('.pf_box').addClass('fadein on');
            }


        });
});

$(function(){
    // memu 클래스 바로 하위에 있는 a 태그를 클릭했을때
    $(".nav>a").click(function(){
        // 현재 클릭한 태그가 a 이기 때문에
        // a 옆의 태그중 ul 태그에 hide 클래스 태그를 넣던지 빼던지 한다.
        $("#m").toggleClass("menuon");
    });
});
