<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<link  href="resources/css/cs/notice.css"  rel="stylesheet"  type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		 <jsp:include page="header.jsp" /> 
</head>
<body>
		<!-- 전체 내용 영역 -->
	<div class="contentsWrap">
		
		<!-- 1. 까만 영역 -->
		<div class="WEB locationWrap">
			<div class="web_container">
				<div class="page_navi">
					<a href="/burger/">
						<span>HOME</span>
					</a>
					<span>고객센터</span>
					<span>공지사항</span>
				</div>
			</div>
		</div>		<!-- 까만 영역 끝 -->
		
		<div id = "menu_m">
		<jsp:include page="cs_menu.jsp" />	
		
	  	</div>
	  	<div class = "notice_list" align="center">
	    <table class = "table1">
	    
	    <form method="post"
	      action="<%=request.getContextPath() %>/notice_search.do">	      
	        <input type="hidden" name="page" value="${Paging.getPage() }">
	      	<div class="board_searchWrap">
	      		<input type="hidden" name="field" value="search_list">
	    		<input type="text" placeholder="제목  + 내용" class="search_bar" name = "keyword">
	    	 	<button class="btn_search" type="submit"></button>
	    	</div>
	  
	     
	     
	   </form>
	      <tr>
	         <th>NO.</th> <th>제목</th>
	      	 <th>날짜</th> <th>조회수</th>
	      </tr>
	      
	      <c:set var="list" value="${List }" />
	      <c:if test="${!empty list }">
	         <c:forEach items="${list }" var="dto">
	            <tr align="center">
	               <td> ${dto.getNotice_no() } </td>
	         	   <td> <a href="<%=request.getContextPath() %>/notice_cont.do?no=${dto.getNotice_no() }&page=${Paging.getPage() }">
	         						${dto.getNotice_title() }</a></td>
	               
	               <td> <fmt:formatDate value="${dto.getNotice_regdate() }"
	               				pattern="yyyy-MM-dd"/></td>
	               	<td> ${dto.getNotice_hit() } </td>			
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
	      
	      <c:if test="${memberSession.getUser_right() == 'admin'}">
	     	 <tr>
	        	 <td colspan="4" align="right">
	            	<input type="button" class="btn_list" value="공지작성"
	                	 onclick="location.href='notice_write.do'">
	         	 </td>
	      	 </tr>
	      </c:if>
	      
	      
	   </table>
	   </div>
	  
	   <%-- 페이징 처리 부분 --%>
	<%-- 페이징 처리 부분 --%>
      <div class="text">
      <c:forEach begin="${Paging.getStartBlock() }"
                         end="${Paging.getEndBlock() }" var="i">
         <c:if test="${i == Paging.getPage() }">
            <b class="page"><a href="notice_list.do?page=${i }">${i }</a></b>
         </c:if>
         
         <c:if test="${i != Paging.getPage() }">
            <span class="page"><a href="notice_list.do?page=${i }">${i }</a></span>
         </c:if>
      </c:forEach>
      </div>
      <br>
	   
	</div>


</body>
<div id = "footer_m">
<jsp:include page="siteMap.jsp" />
</div>
</html>