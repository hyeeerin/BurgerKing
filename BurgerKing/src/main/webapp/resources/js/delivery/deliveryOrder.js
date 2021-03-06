$(document).ready(function() {
	//간편결제 선택 이벤트(빨간 테두리)
	$(document).on("click", ".rcen_btn > ul > li", function () {
		$(".rcen_btn > ul > li").removeClass("on");
		$(this).addClass("on");
		
		$(".payment_tabcont").addClass("w_none");
		$(".payment_tabcont").eq($(this).index()).removeClass("w_none");
		
	});
	
	$(document).on("click", "input[name='paymentType']:checked", function () {
		if($(this).val() == "네이버페이") {
			$(".naver_cont").show();
			$(".payco_cont").hide();
		} else if($(this).val() == "페이코") {
			$(".payco_cont").show();
			$(".naver_cont").hide();
		} else {
			$(".naver_cont").hide();
			$(".payco_cont").hide();
		}
	});
	
	//요청사항 입력감지
	$('.claim').keyup(function (e){
        var content = $(this).val();
        $('.txt_byte').html("<span>"+content.length+"</span>/<span>50</span>");
        
        if(content.length == 50) {
        	alert("요청사항은 50자까지 입력 가능합니다.");
        }
    });
	
	$(".easy_payment_list .naver label>input").prop("checked",true);
	
	totalPriceSetting();
});

//최종 결제 금액 셋팅
function totalPriceSetting() {
	var sum = 0;
	
	$(".price_span").each(function(index, item){
		sum += Number(delComma($(this).text().trim()));
    });
	
	$(".allprice_span").text(addComma(sum));
	$(".total_span").text(addComma(sum));
	
	$(".order_price").val(sum);
	$(".pay_price").val(sum);
	
}

//천단위 콤마 부여
function addComma(value){
     value = value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
     return value; 
}

//천단위 콤마 제거
function delComma(value){
    value = value.toString().replace(/,/g, '');
    return value; 
}

//주문하기
function goOrder() {
	
	var payment = $('input[name="paymentType"]:checked').val();
	
	$(".pay_way").val(payment);
	
	var orderForm = document.orderForm;
	orderForm.submit();
}