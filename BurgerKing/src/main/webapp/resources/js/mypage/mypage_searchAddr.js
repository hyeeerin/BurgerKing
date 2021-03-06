const search_Btn = document.querySelector(".search_btn");
const closeBtn = document.querySelector(".btn_close");
const popup = document.querySelector(".popWrap");

console.log(search_Btn);

//주소찾기 팝업 띄우기 액션
search_Btn.addEventListener('click', onPopup);
//searchBtn.addEventListener('click', goPopup);
//주소찾기 팝업 X버튼 액션
closeBtn.addEventListener('click', offPopup);

function offPopup() {
	popup.style.display ='none';
}

function onPopup() {
	popup.style.display ='block';
}

function goPopup(){
	//경로는 시스템에 맞게 수정하여 사용
	//호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://www.juso.go.kr/addrlink/addrLinkUrl.do)를
	//호출하게 됩니다.
	var pop = window.open("/popup/locationPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
	//** 2017년 5월 모바일용 팝업 API 기능 추가제공 **/
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서
	// 실제 주소검색 URL(https://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
	// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes");
}

$(function(){  
    $(".tab01_btn").click(function() {
    	
    	var li1 = $('.tab_tit .item2 li:nth-of-type(1)');
    	var li2 = $('.tab_tit .item2 li:nth-of-type(2)');
    	
    	if(li1.hasClass('on')) {
    		/*li1.removeClass('on');
    		$(".tab_recent_loc").hide();
    		
    		li2.addClass('on');
    		$(".tab_my_loc").show();*/
    	} else {
    		li1.addClass('on');
    		$(".tab_recent_loc").show();
    		
    		li2.removeClass('on');
    		$(".tab_my_loc").hide();
    	}
    
    });  
}); 

$(function(){  
    $(".tab02_btn").click(function() {
    	
    	var li1 = $('.tab_tit .item2 li:nth-of-type(1)');
    	var li2 = $('.tab_tit .item2 li:nth-of-type(2)');
    	
    	if(li2.hasClass('on')) {
    		/*li1.removeClass('on');
    		$(".tab_recent_loc").hide();
    		
    		li2.addClass('on');
    		$(".tab_my_loc").show();*/
    	} else {
    		li1.removeClass('on');
    		$(".tab_recent_loc").hide();
    		
    		li2.addClass('on');
    		$(".tab_my_loc").show();
    	}
    
    });  
});

$(document).ready(function() {
	$(".tab_my_loc").hide();
});



