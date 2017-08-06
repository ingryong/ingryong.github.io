<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@include file = "header.jsp" %>
<link rel="stylesheet" type="text/css" href="${ctxRoot }/css/chromagallery.css" />
<script type="text/javascript">

$(document).ready(function() {
	$('#top_menu1').addClass('on'); //상단 메뉴 색상 활성화
});

function remove(){
	if (confirm("삭제 하시겠습니까?")){
		  alert("삭제가 완료되었습니다.");
		}else{
			alert("취소하였습니다.");
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
				<div class="menu1 on" onclick="location.href='./communitylist.jsp'">
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
		<div class="community_area">
			<div class="title">
				<div class="left">
					커뮤니티
				</div>
				<div class="right">
					<span onclick="location.href='./communitywrite.jsp'"><img src="../images/svg/write_icon.svg">글쓰기</span>
				</div>
			</div>
			
			<!-- 콘텐츠뷰 -->
			<div class="community_view_area">
				<div class="line"></div>
				<div class="box">
					<!-- 작성자 정보 및 조회수 등 -->
					<div class="box_top no_drag">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg" alt="기본이미지">
						</div>
						<div class="cell2">
							<div class="intable">
								<div class="row1">
									<div class="cell1">
										<img src="../images/svg/img_people_b.svg" alt="" />
										닉네임
									</div>
									<div class="cell2">
										<a class="fix" onclick="location.href='./communitymodify.jsp'">수정</a>
										<a class="del" href="javascript:remove()">삭제</a>
									</div>
								</div>
								<div class="row2">
									<div class="cell1">
										<img src="../images/svg/clock.svg" alt="업데이트 시각" /> 2017-06-15 13:55:11
									</div>
									<div class="cell2">
										<span> <img src="../images/svg/eye.svg" alt="조회 수" /> 123 </span> 
										<span> <img src="../images/svg/heart.svg" alt="좋아요 수" /> 123 </span> 
										<span> <img src="../images/svg/comment.svg" alt="댓글 수" /> <span id="commentCountTop">123</span></span>
									</div>
								</div>
							</div>
						</div>
					</div>
		
					<div class="box_mid">
						<!-- 이미지 -->
						<div class="photo_area">
							<img src="../images/index/shop_img.jpg" onerror="this.src='../images/img_solo_nopic.png'" alt="이미지"/>
						</div>
						<!-- 본문 -->
						<div class="text_area">
							<pre class="community_pre">본문내용 입력본문내용 입력본문내용 입력본문내용 입력본문내용 입력본문내용 입력</pre>
						</div>
					<!-- 네일샵 카드 -->
						<div class="shop_card">
							<div class="cell1">
								<img src="../images/index/shop_img.jpg" alt="기본 프로필 이미지">
							</div>
							<div class="cell2">
								<div class="row1">
									<div id="shopNameD">네일샵 이름</div>
								</div>
								<div class="row2">
									<div id="shopAddress">네일샵 주소</div>
								</div>
							</div>
							<div class="cell3">
								<a>
									<img src="../images/svg/icon_next_b.svg" alt=">" />
								</a>
							</div>
						</div>
					</div>
		
					<!-- 좋아요 / 찜하기 / 공유하기 -->
					<div class="box_bottom">
						<div id ="heart" onclick="javascript:communityGood(${community.communitySeq });">
							<img src="../images/svg/heart_g.svg" alt="좋아요(off)" /> 좋아요 : 11
						</div> 
						<div class="on" id="recommend" onclick="javascript:communityRecommend(${community.communitySeq });">
							<img src="../images/svg/star_g.svg" alt="찜(off)" />찜하기
						</div> 
						<div id="kakao-link-btn" onclick="javascript:;">
							<img src="../images/svg/share_icon.svg" alt="공유하기" />공유하기
							<script type='text/javascript'>
							var likeCountOld = Number('${community.communityGoodCount }');
							var commentCountOld = Number('${community.communityCommentCount}');
							var contentOld = $('.community_pre').html();
							contentOld = contentOld.substring(0,500);
							contentOld = contentOld.replace("\n"," ");
						    Kakao.init('0ab81eda8edda1c914c01871e8c85153');
						    Kakao.Link.createDefaultButton({
						      container: '#kakao-link-btn',
						      objectType: 'feed',
						      content: {
						        title: 'Nailook 공유',
						        description: contentOld,
						        imageUrl: 'https://www.nailook.com/mobile/photo/img/${community.communityPhoto }',
						        link: {
						          mobileWebUrl: 'https://www.nailook.com'
						        }
						      },
						      social: {
						          likeCount: likeCountOld,
						        commentCount: commentCountOld,
						        sharedCount: 0
						      },
						      buttons: [{
						        title: '웹으로 이동',
						        link: {
						          mobileWebUrl: 'https://www.nailook.com'
						        }
						      }, {
						        title: '앱으로 이동',
						        link: {
						          mobileWebUrl: 'https://www.nailook.com'
						        }
						      }]
						    });
						</script>
						</div>
		
					</div>
				</div>	
				<!-- 댓글 보기 -->
				<div class="community_comment_area">
					<div class="comment_box_top">
						<div class="title">
								댓글<strong id="commentCount"> 122</strong>
						</div>
					</div>
					<div class="comment_box_bottom">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg">
						</div>
						<div class="cell2">
							<div class="row1">
								<img src="../images/svg/img_people_b.svg" alt="" />
								닉네임
							</div>
							<div class="row2">와 정말 멋지네요 한번 방문해보고 싶어요~</div>
							<div class="row3">
								<img src="../images/svg/clock.svg" alt="" />
								2017-05-16 15:22:15
							</div>
						</div>
						<div class="cell3">
							<span>
								<img src="../images/svg/icon_x.svg" alt="X" />
							</span>
						</div>
					</div>
					<div class="comment_box_bottom">
						<div class="cell1">
							<img src="../images/index/shop_img.jpg">
						</div>
						<div class="cell2">
							<div class="row1">
								<img src="../images/svg/img_people_b.svg" alt="" />
								닉네임
							</div>
							<div class="row2">와 정말 멋지네요 한번 방문해보고 싶어요~</div>
							<div class="row3">
								<img src="../images/svg/clock.svg" alt="" />
								2017-05-16 15:22:15
							</div>
						</div>
						<div class="cell3">
							<span>
								<img src="../images/svg/icon_x.svg" alt="X" />
							</span>
						</div>
					</div>
					<!-- 하단 댓글작성 -->
					<div class="footer">
						<div class="bottom1">
							<span> <input type="text" id="contents" placeholder="댓글을 입력하세요" maxlength="200" /> 
							<a class="no_drag" onclick="$('#contents').val('');	"><img src="../images/svg/icon_x.svg" alt="" /></a>
							</span> <a onclick="javascript:contentComplete();" class="btn_post no_drag">보내기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

</body>
</html>