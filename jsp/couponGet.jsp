<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <script>
    	function btn_back(){
    		document.getElementById('coupon_content').style.display='';
    		document.getElementById('coupon_get').style.display='none';
    	}
    	
    	
    	function title_num(num){
    		if(num == 1){
    			document.getElementById('title1').className="on";
    			document.getElementById('title2').className="";
    			document.getElementById('title3').className="";
    			document.getElementById('get_table1').style.display='';
    			document.getElementById('get_table2').style.display='none';
    			document.getElementById('get_table3').style.display='none';
    		}
    		else if(num == 2){
    			document.getElementById('title1').className="";
    			document.getElementById('title2').className="on";
    			document.getElementById('title3').className="";
    			document.getElementById('get_table1').style.display='none';
    			document.getElementById('get_table2').style.display='';
    			document.getElementById('get_table3').style.display='none';
    		}
    		else if(num == 3){
    			document.getElementById('title1').className="";
    			document.getElementById('title2').className="";
    			document.getElementById('title3').className="on";
    			document.getElementById('get_table1').style.display='none';
    			document.getElementById('get_table2').style.display='none';
    			document.getElementById('get_table3').style.display='';
    		}
    	}
    </script>
    
<div id="coupon_get" class="content_box" style="display:none">	
	<div class="coupon-info_box">
		<div class="top_box no_drag">
			<span><img onclick="javascript:btn_back()" src="../images/svg/back_button_b.svg"></span>
		</div>
		<div class="get_title no_drag">
			<span id="title1" class="on" onclick="javascript:title_num(1)">사용요청</span>
			<span id="title2" onclick="javascript:title_num(2)">쿠폰수령</span>
			<span id="title3" onclick="javascript:title_num(3)">사용완료</span>
		</div>
		
		<table id="get_table1" class="get_table" style="display:">
		<tbody>
			<tr class="title no_drag">
				<td class="cell1">고객명</td><td class="cell2">이메일</td><td class="cell3">상태</td>
			</tr>
			<tr onClick="document.getElementById('couponuse_pop').style.display='';">
				<td>네일룩</td><td>qwer@gmail.com</td><td>쿠폰사용신청</td>
			</tr>
			<tr onClick="document.getElementById('couponuse_pop').style.display='';">
				<td>네일룩</td><td>qwer@gmail.com</td><td>쿠폰사용신청</td>
			</tr>
			<tr onClick="document.getElementById('couponuse_pop').style.display='';">
				<td>네일룩</td><td>qwer@gmail.com</td><td>쿠폰사용신청</td>
			</tr>
		</tbody>
		</table>
		<table id="get_table2" class="get_table" style="display:none">
		<tbody>
			<tr class="title no_drag">
				<td class="cell1">고객명</td><td class="cell2">이메일</td><td class="cell3">상태</td>
			</tr>
			<tr>
				<td>네일룩2</td><td>qwer@gmail.com</td><td>쿠폰수령</td>
			</tr>
			<tr>
				<td>네일룩2</td><td>qwer@gmail.com</td><td>쿠폰수령</td>
			</tr>
			<tr>
				<td>네일룩2</td><td>qwer@gmail.com</td><td>쿠폰수령</td>
			</tr>
			
		</tbody>
		</table>
		<table id="get_table3" class="get_table" style="display:none">
		<tbody>
			<tr class="title no_drag">
				<td class="cell1">고객명</td><td class="cell2">이메일</td><td class="cell3">상태</td>
			</tr>
			<tr>
				<td>네일룩3</td><td>qwer@gmail.com</td><td>사용완료</td>
			</tr>
			<tr>
				<td>네일룩3</td><td>qwer@gmail.com</td><td>사용완료</td>
			</tr>
			<tr>
				<td>네일룩3</td><td>qwer@gmail.com</td><td>사용완료</td>
			</tr>
			
		</tbody>
		</table>
	</div>
</div>