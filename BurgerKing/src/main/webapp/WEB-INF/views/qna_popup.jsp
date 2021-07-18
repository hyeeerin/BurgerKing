<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="resources/js/cs/qna_popup.js"></script>

<link rel="shortcut icon" type="image/x-icon"
	href="resources/img/main/fab.ico">
<link  href="resources/css/cs/qna_popup.css"  rel="stylesheet"  type="text/css">
</head>
<body>
	<div class="popbox01 m_bg_basic">
		<div class="M_headerWrap">
			<div class="titleBar">
				<h1 class="page_tit w_alignL">
					<span>문의 작성</span></h1>
						<div class="title_btn">						
							<button type="button" class="btn_close" onclick="close_popup()">
							<span>Close</span>
							</button>
						</div>
					</div>
				</div>
					<div class="popcont">
						<h2 class="tit01 tit_ico man">
							<span>문의자 정보</span>
						</h2>
						<div class="container02">
						<p class="txt_info02 st02">정확한 연락처를 입력하셔야 신속한 처리가 가능합니다.</p>
						<div class="inpbox">
							
							<input type="text" placeholder="이름" maxlength="4" class="st02">								
						 <button type="button" class="btn_del01" onclick= "del_text()"></button> 
							
							
						</div>
							<div class="inpbox">
								<input type="text" placeholder="연락처" class="st02-2">
									<button type="button" class="btn_del01" style=""  onclick= "del_text2()">
										<span>입력 텍스트 삭제</span>
									</button></div><div class="inpbox">
								<input type="text" placeholder="이메일" class="st02-3">
									<button type="button" class="btn_del01" style="" onclick= "del_text3()">
										<span>입력 텍스트 삭제</span>
									</button>
								</div>
						</div>
						<h2 class="tit01 tit_ico Q">
							<span>문의상세</span>
						</h2>
							<div class="container02">
								<div class="dlist01 st03">
							<dl>
							<dt class="f_normal">문의분야</dt>
								<dd>
									<select class="st03">
										<option value="04001">칭찬사항</option>
										<option value="02003">서비스/제품 불만사항</option>
										<option value="01001">온라인 회원 관련 문의</option>
										<option value="01005">BK포인트 관련 문의</option>
										<option value="03002">연계 프로모션 제안</option>
										<option value="01003">매장관련 문의</option>
										<option value="01004">매장 Site 개발 관련문의</option>
										<option value="01006">채용관련 문의</option>
										<option value="01007">와퍼카드 문의</option>
										<option value="01008">가맹문의</option>
										<option value="01011">기타문의</option>
										</select>
								</dd>
							</dl>
							<dl>
								<dt class="f_normal vtop">매장명<br>(위치)</dt>
									<dd><div><input type="text" readonly="readonly" class="st02">
								</div>
								<div class="form_rtxt">
									<div>
										<button type="button" class="btn04 st02">
											<span>매장찾기</span>
										</button>
									</div>
										<div class="alignr">
											<label>
												&nbsp;&nbsp;&nbsp;
												<input type="checkbox">
													<span>선택 안함</span>
											</label>
										</div>
									</div>
								</dd>
							</dl>
							</div>
							<hr class="divder">
								<div class="inpbox">
									<input type="text" placeholder="제목" class="st02">
										<button type="button" class="btn_del01" style="display: none;">
											<span>입력 텍스트 삭제</span>
										</button>
								</div>
									<div class="inpbox">
										<textarea rows="9" cols="50" placeholder="관계 법령에 저촉되거나 사회통념등에 어긋나는 내용 (예> 개인정보 보안, 불충분한 증거/귀책 사유에 대한 개인 음해성/음란성 비방, 의도적인 업무방해 등) 또는 광고성 게시물은 별도의 사전 통보 없이 답변이 되지 않을 수 있으며, 등록된 의견은 처리가 시작되면 수정이 불가하오니 이 점 양지하여 주시기 바랍니다." maxlength="1000"></textarea>
										<div class="page_count">
											<span>0</span> / <span>1000</span>
										</div>
									</div>
							<!-- 	<dl class="dlist01 st03">
									<dt class="f_normal vtop m_vtop_form nowrap">파일첨부</dt>
										<dd>
											<div class="att_file">
												<label class="file">
													<input type="file" accept="image/*">
												<button type="button" class="btn04">
													<span>파일선택</span>
												</button>
												</label>
											</div>
											<ul>
												<li>
													<div class  = "att_file">
														<div class = "file">
														<span class="file_name"></span>
													</div>
													<button type="button" class="btn04 del">
														<span>삭제</span>
													</button>
													</div>
													</li>
										</ul> 
									<p class="txt05">
										<em>파일은 최대 3개까지 첨부 가능합니다.</em>
									</p>
									</dd>
								</dl> -->
								
								
	           
	         	 <input type="file"  class="btn04">	         	
	          	      	 	
	         	 <input type="file"  class="btn_f" >	         	
	          	 	
	         	 <input type="file"  class="btn_f" >	         	
	          	
	          	<p class="txt05">
						<em>파일은 최대 3개까지 첨부 가능합니다.</em>
				</p>		  
				</div>
							
							
						<h2 class="tit01 tit_ico noti">
							<span>약관동의</span>
						</h2>
							<div class="container02">
								<p class="txt_info02 st02">문의접수를 위해 약관동의가 필요합니다.</p>
							<div class="auth_list accWrap01">
								<div class="divide">
									<label>
										<input type="checkbox" class="check02">
											<span>전체동의(필수)</span>
										</label>
								</div>
							<div class="acc_list toggle">
								<div class="acc_tit">
									<label>
										<input type="checkbox" class="check02">
											<span>일반 개인정보 수집 및 활용에 관한 동의</span>
									</label>
										<button type="button" class="btn_acc"  onclick="open_toggle()">
											<span>상세보기</span>
										</button>
								</div>
							<div class="acc_cont">
								<p>
								<strong>수집하는 개인정보의 항목</strong>
									<br>
							이름, 연락처, 이메일주소, 이용매장, 고객문의사항 (첨부파일 포함), 손해입증서류 (견적서, 영수증)</p>
									<br>
								<p>
								<strong>개인정보의 수집, 이용 목적</strong>
									<br>고객불만사항 해결, 문의사항 응답 및 이와 관련한 고객 연락 업무, 고객 손해에 대한 배상 및 보험처리 등</p>
									<br>
								<p>
								<strong>개인정보의 보유, 이용 기간</strong>
									<br>전자상거래 등에서의 소비자 보호에 관한 법률에 따라 고객의 불만 또는 분쟁처리에 관한 기록은 3년간 보관됩니다.</p>
							</div>
						</div>
					<div class="acc_list">
						<div class="acc_tit">
							<label>
								<input type="checkbox" class="check02">
									<span>민감정보 수집 및 활용에 관한 동의</span>
							</label>
										<button type="button" class="btn_acc">
											<span>상세보기</span>
										</button>
						</div>
						<div class="acc_cont">
							<p>
								<strong>수집하는 개인정보의 항목</strong>
									<br>손해입증서류 (진단서, 의무기록사본)
							</p>
								<br>
							<p>
								<strong>개인정보의 수집, 이용 목적</strong>
								<br>고객불만사항 해결, 문의사항 응답 및 이와 관련한 고객 연락 업무, 고객 손해에 대한 배상 및 보험처리</p>
								<br>
							<p>
								<strong>개인정보의 보유, 이용 기간</strong>
								<br>전자상거래 등에서의 소비자 보호에 관한 법률에 따라 고객의 불만 또는 분쟁처리에 관한 기록은 3년간 보관됩니다.</p>
						</div>
					</div>
					
					<div class="acc_list">
					<div class="acc_tit">
					<label>
						<input type="checkbox" class="check02">
							<span>일반 개인정보의 제3자 제공에 관한 동의</span>
					</label>
						<button type="button" class="btn_acc">
							<span>상세보기</span>
						</button>
					</div>
					
					<div class="acc_cont">
						<p>
							<strong>개인정보를 제공받는 자</strong>
								<br>
								가맹점주, 보험사
						</p>
								<br>
						<p>
							<strong>개인정보를 제공받는 자의 개인정보 이용 목적</strong>
								<br>
								고객불만사항 해결, 문의사항 응답 및 이와 관련한 고객 연락 업무, 고객 손해에 대한 배상 및 보험처리 등
						</p>
								<br>
						<p>
							<strong>제공하는 개인정보의 항목</strong>
								<br>
									이름, 연락처, 이메일주소, 이용매장, 고객문의사항 (첨부파일 포함), 손해입증서류 (견적서, 영수증)
						</p>
								<br>
						<p>
							<strong>개인정보를 제공받는 자의 개인정보 보유 및 이용 기간</strong>
								<br>
									전자상거래 등에서의 소비자 보호에 관한 법률에 따라 고객의 불만 또는 분쟁처리에 관한 기록은 3년간 보관됩니다.
						</p>
						</div>
					</div>
							<div class="acc_list">
								<div class="acc_tit">
									<label>
										<input type="checkbox" class="check02">
										<span>민감 개인정보의 제 3자 제공에 관한 동의</span>
									</label>
										<button type="button" class="btn_acc">
											<span>상세보기</span>
										</button>
								</div>
								
								<div class="acc_cont">
									<p>
										<strong>개인정보를 제공받는 자</strong>
											<br>
												가맹점주, 보험사등
									</p>
										<br>
									<p>
										<strong>개인정보를 제공받는 자의 개인정보 이용 목적</strong>
										<br>
										고객불만사항 해결, 문의사항 응답 및 이와 관련한 고객 연락 업무, 고객 손해에 대한 배상 및 보험처리 등.
									</p>
										<br>
									<p>
										<strong>제공하는 개인정보의 항목</strong>
										<br>
											손해입증서류 (진단서, 의무기록사본)
									</p>
										<br>
									<p>
										<strong>개인정보를 제공받는 자의 개인정보 보유 및 이용 기간</strong>
										<br>
											전자상거래 등에서의 소비자 보호에 관한 법률에 따라 고객의 불만 또는 분쟁처리에 관한 기록은 3년간 보관됩니다.
									</p>
									</div>		
								</div>
							</div>
					</div>
					
					<p class="txtlist01">상담 문의가 급증 할 경우 답변처리가 다소 지연될 수 있음을 양해 바랍니다.</p>
					</div>
						<div class="pop_btn full_type">
						<button type="button" class="btn02" onclick="qna_ok()">
						<span>온라인 문의 접수하기</span>
						</button>
					</div>
				</div>
</body>
</html>