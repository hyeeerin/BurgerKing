<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap&subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="stylesheet" href="resources/css/mypage/mypage.css" type="text/css">

<title>Insert title here</title>
</head>

<style>
	
	@font-face {
	 font-family: 'Material Icons';
	 font-style: normal;
	 font-weight: 400;
	 src: url(path/to/MaterialIcons-Regular.eot); /* For IE6-8 */
	 src: local('Material Icons'),
	     local('MaterialIcons-Regular'),
	     url(path/to/MaterialIcons-Regular.woff2) format('woff2'),
	     url(path/to/MaterialIcons-Regular.woff) format('woff'),
	     url(path/to/MaterialIcons-Regular.ttf) format('truetype');
 	}
 	
 	.material-icons {
		 font-family: 'Material Icons';
		 font-weight: normal;
		 font-style: normal;
		 font-size: 24px;  /* Preferred icon size */
		 display: inline-block;
		 line-height: 1;
		 text-transform: none;
		 letter-spacing: normal;
		 word-wrap: normal;
		 white-space: nowrap;
		 direction: ltr;
		
		 /* Support for all WebKit browsers. */
		 -webkit-font-smoothing: antialiased;
		
		 /* Support for Safari and Chrome. */
		 text-rendering: optimizeLegibility;
		
		 /* Support for Firefox. */
		 -moz-osx-font-smoothing: grayscale;
		
		 /* Support for IE. */
		 font-feature-settings: 'liga';
	 }
 
</style>
<body>

	<div class="order_container">
		<div class="order">
			<ul>
				<li>				
					<strong>딜리버리 주문내역</strong>
					<p>주문내역이 없습니다.</p>					
				</li>
				
				<li>
					<strong>카트</strong>
					<p>카트에 담은 상품이 없습니다.</p>
				</li>
			</ul>
		</div>
	</div>
	
	<div class="loc_container">
		<div class="loc">
			<div class="page-navi">
				<a><span>딜리버리</span></a>
				<a><span>MY킹</span></a>
			</div>
			
			<div class="location">
				<span class="material-icons">
					fmd_good
				</span>
				<span>배달지를 선택하세요</span>
				<a class="btn"><span>변경</span></a>
			</div>
		</div>
	</div>
		
	<div class="myking-wrapper">
		<div class="myking-container">
			<div class="my-king">
				<h2>MY킹</h2>
			</div>
			
			<div class="my-coupon">
				<div class="my-info">
					<p class="user">
						<strong>강혜린 님!</strong>
						<span>반갑습니다</span>
					</p>
					<a>
						<span>정보변경</span>
					</a>
				</div>
				
				<div class="coupon-info">
					<div class="coupon">
						쿠폰
					</div>
					
					<div class="stamp">
						스탬프
					</div>
				</div>
			</div>
		</div>
	</div>
			
</body>
</html>