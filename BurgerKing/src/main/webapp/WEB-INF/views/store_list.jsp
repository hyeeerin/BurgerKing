<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="shortcut icon" type="image/x-icon" href="resources/img/public/favicon.ico">
<link  href="resources/css/cs/event.css"  rel="stylesheet"  type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="resources/js/cs/event.js"></script>
		<jsp:include page="header.jsp" />	
		
</head>
<body>

		<!-- 1. 까만 영역 -->
		<div class="WEB locationWrap">
			<div class="web_container">
				<div class="page_navi">
					<a href="/burger/" class>
						<span>HOME</span>
					</a>
					<span>신규매장</span>
					<span>전체</span>
				</div>
			</div>
		</div>		<!-- 까만 영역 끝 -->
	
		<div id = "menu_m">
		<jsp:include page="store_menu.jsp" />	
		</div>
		 <div class="contentsBox01 bg_w">
		 	<div class="web_container">
		 		
					<ul class="tab_storyBtn m_shadow">
						<li class="">
							<button type="button" onclick="location.href='event_list.do'">이벤트</button>
						</li>
					
						<li class="on">
						<button type="button" onclick="location.href='store_list.do'">신규매장</button>						
						</li>
					</ul>
				<div class="tab_cont m_bg_basic">
					<div class = "store_list" align="center">
	    <table class = "table1">
	         
	   
	   	
	    
	      
	      <c:set var="list" value="${List }" />
	      <c:if test="${!empty list }">
	         <c:forEach items="${list }" var="dto">
	            <tr id = "tr0">
	               	<td id = "td0" rowspan="2" >
	               
	               	
	               		<a href="<%=request.getContextPath() %>/store_cont.do?no=${dto.getStore_no() }&page=${Paging.getPage() }">	               			
	               		<img src="../../burger/resources/img/nstore/${dto.getStore_thum() }"  alt="이미지없음" width="530px;" height="210px;">
	              				<br>	               					
	               			<p id= "p2"><fmt:formatDate value="${dto.getStore_regdate() }"
	               				pattern="yyyy-MM-dd"/></p>
	            		</a>
	            		
	            		</td>
	            </tr>
	         </c:forEach>
	      </c:if>
	      
	      <c:if test="${empty list }">
	      	 <tr>
	            <td colspan="4" align="center">
	               <h3>검색된 게시물이 없습니다.....</h3>
	            </td>
	         </tr>
	      </c:if>
	      
	      <tr>
	         
	      </tr>
	      
	   </table>
	   		
	   </div>
	  	
	  	<c:if test="${memberSession.getUser_right() == 'admin'}">
	  	<div align="center">
	            <input type="button" class="btn_list" value="스토어작성"
	                 onclick="location.href='store_write.do'">
	         	</div>
	      </c:if>   	
	   <hr class="hr1">
	    		
	<%-- 페이징 처리 부분 --%>
      <div class="text">
      <c:forEach begin="${Paging.getStartBlock() }"
                         end="${Paging.getEndBlock() }" var="i">
         <c:if test="${i == Paging.getPage() }">
            <b class="page"><a href="store_list.do?page=${i }">${i }</a></b>
         </c:if>
         
         <c:if test="${i != Paging.getPage() }">
            <span class="page"><a href="store_list.do?page=${i }">${i }</a></span>
         </c:if>
      </c:forEach>
      </div>
				
				</div>
	

</body>
<div id = "footer_m">
<jsp:include page="siteMap.jsp" />
</div>
</html>