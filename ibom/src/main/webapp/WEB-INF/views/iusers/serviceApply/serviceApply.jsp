<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="/ibom/resources/images/favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"
	content="/ibom/resources/images/favicon_300.png" />

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />

<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>

<!-- 이용자 서약 관련 팝업 스크립트 -->
<script>
	function userPledgePop(){
		var url = "${ pageContext.request.contextPath}/iusers/moveuserPledgePopPage.do";
        var name = "userPledgePop";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no";
        window.open(url, name, option);
	}
	 function cardPop(){
		var url = "${ pageContext.request.contextPath}/iusers/moveCardPopPage.do";
		var name = "userCardPop";
		var option = "width = 500, height = 500, top = 100, left = 200, location = no";
		window.open(url, name, option);
	} 
	function selectSpace(){
		var select = $("#apply_space option:selected").val();
		console.log(select);
		if(select == "이용자가정"){
			//alert("${ loginIuser.user_address }");
			$("#dolbom_space").html("${ loginIuser.user_address }");
		}else if(select == "돌보미가정"){
			$("#dolbom_space").html("-");
		}else{
			$("#dolbom_space").html(" ");
		}
	}
	
	//인계자 값 합치기 이벤트 처리용
	function mergeTransferor(){
		var select = $("#transferor_2 option:selected").val();
		var transferor = $("#transferor_1").val();
		var mergeTransferor = transferor + " " + select
		/* console.log(select);
		console.log(transferor);
		console.log(mergeTransferor); */
		$("#transferor").val(mergeTransferor);
		console.log($("#transferor").val());
	}//mergeTransferor
	
	//체크박스 이벤트 처리용
	$(function(){
		$("#before_req").change(function(){
			if($("#before_req").is(":checked")){
				$("#before_req").val("Y");
				console.log($("#before_req").val());
			}else{
				$("#before_req").val("N");
				console.log($("#before_req").val());
			}
		});
		$("#interview_req").change(function(){
			if($("#interview_req").is(":checked")){
				$("#interview_req").val("Y");
				console.log($("#before_req").val());
			}else{
				$("#interview_req").val("N");
				console.log($("#interview_req").val());
			}
		});
	});//before_req, interview_req
</script>

</head>
<body>
	<c:import url="../iusersHeader.jsp" />

	<%-- <h2>돌보미 메인페이지</h2>
<h3>안녕하세요!${loginDolbomi.dol_name}님</h3> --%>

	<%-- <nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav> --%>
	<%-- <c:if test="${loginDolbomi != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
	<!-- <form action="sendEmail.do" method="post">
	<input type="email" name="email" >
	<input type="submit" value="전송">
</form> -->

	<!--  main =================================================================== -->
	<main id="main" class="main_container">


	<div id="main_container_inner" class="notice_list">

		<div class="article">
			<div class="article_header">
				<div class="wrap_narrow">
					<h2
						style="color: #ca3e00; font-weight: bold; text-align: left;">
						서비스 신청서 작성
						</h2>
						<br> <img style="width:100%"
							src="/ibom/resources/images/serviceApply/timeLine_aplly1.png">
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
					
					<div class="jt_single">
						<div>
								<div class="noticeBox2">
		                        	<p>1. 서비스 이용 신청은 아이돌봄 홈페이지에서만 가능합니다.</p>
		                        	<p>2. 서비스 이용일 전일(업무일 기준)에는 서비스 신청을 하실 수 없습니다.</p>
		                        	<p>* 목요일 - 금요일 이용 신청 불가, 토.일요일 이용 신청 가능</p>
		                        	<p>* 금요일 - 토.일요일 이용 신청 불가, 화요일 이용 신청 가능</p>
		                        	<p>3. 아이돌봄 서비스 이용료는 국민행복카드로 결제하거나(이용일 당일 자동 결제), 부여된 가상계좌를 통해 서비스 이용 1일 전(공휴일 제외)까지 선 납부해야 합니다. 카드결제 실패 상태가 지속되거나, 서비스 이용료를 납부하지 않을 경우 서비스 이용이 제한됩니다.</p>
		                        	<p>4. 정부지원 대상 아동은 아동별로 연 720시간(시간제), 월 200시간(영아종일제) 이내에서 정부지원을 받을 수 있으며, 정부지원시간 소진 시에는 전액 이용자부담(이용시간 제한 없음)으로 아이돌봄서비스를 이용하실 수 있습니다.</p>
		                        	<p>- 서비스 유형(시간제↔종일제)을 변경할 경우, 종일제 1개월을 시간제 60시간으로 치환하여 계산합니다.</p>
		                        	<p class="apply1">* 시간제 60시간이 남아 있어야 차월 영아종일제 1개월(200시간) 사용가능</p>
		                        	<p class="apply1">* 예를 들어 시간제 170시간 사용 후 종일제로 변경하면 종일제 9개월 이용가능 </p>
		                        	<p class="apply1">[계산식] (720시간 - 170시간) ÷ 60시간 = 9.1 (종일제 9개월 이용 후 시간제로 전환하여 남은 10시간 이용)</p>
		                        	<p>5. 종일제 서비스는 월 단위로 아이돌보미와 계약하며, 1회 최소 3시간 이상 이용해야 합니다.</p>
		                        	<p>* 양질의 서비스를 위해 아이돌보미가 보수교육 이수를 이유로 서비스를 제공할 수 없는 경우가 발생할 수 있음을 양해하며, 이 경우 비용은 지불하지 않음</p>
		                        	<p class="apply2" style="display:inline-block;">※ 상세사항은 “아이돌봄서비스 이용자 서약서” 참고</p>
		                        	&nbsp;
		                        	<span>
		                        			<%-- <div class="thema_list" id="result_wrap">
											<!-- <button type="button" id="addVoucherBtn" title="카드선택 버튼" 
											onclick="cardPop();"
											style="color: #555; background: #fff; border: 1px solid #d9d9d9;  font-size:12pt; padding:3px 7px;">
											<img src="/ibom/resources/images/serviceApply/btn_func8.png" style="width:12px; height:12px;">카드 선택</button> -->
											<button id="termsBtn"
											href="${ pageContext.request.contextPath}/iusers/moveuserPledgePopPage.do" 
											data-font="secondary" class="thema_list_lyrics">
											<img style="width:15px; height:15px" 
		                        			alt="" src="/ibom/resources/images/serviceApply/icon_contNew.png">
		                        			이용자 서약서 
		                        			</button>
											</div> --%>
		                        			 <button type="button" id="termsBtn" onClick="userPledgePop();">
		                        			<img style="width:15px; height:15px" 
		                        			alt="" src="/ibom/resources/images/serviceApply/icon_contNew.png">
		                        			이용자 서약서
		                        			</button> 
		                        	</span>
		                        	
		                        	<p>(문의 : 각 지역 서비스 제공기관 1577-2514).</p>
		                        </div><!-- noticeBox2 -->
		                        <br>

						</div>
						<!-- .jt_single_content -->


					</div>


		<div class="jt_board_list_wrap"> 
		<form action="apply1.do" method="post">
			<table class="jt_board_list apply1">
            <caption>게시판 목록</caption>
            <colgroup>
				<col width="200px" />
				<col width="*" />
			</colgroup>
            <tbody>
                <tr>
                    <td class="apply1_title" style="text-align:left;">신청자 성명</td>
                    <td class="apply1_content">
                    <input type="hidden" id="user_id" name="user_id" value="${ loginIuser.user_id }">
                     ${ loginIuser.user_name }
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">신청사유<img src="/ibom/resources/images/serviceApply/bul_dot.png"
                    style="margin-bottom:3px; margin-left:5px;"></td>
                    <td class="apply1_content">
                  		<select name="apply_reason" id="apply_reason" style="height:30px; border: 1px solid #ccc; font-size:12pt;">
                  			<option value="">:::신청사유 선택:::</option>
                  			<option value="직장근무">직장근무</option>
                  			<option value="교육참여">교육참여</option>
                  			<option value="병원치료">병원치료</option>
                  			<option value="여가활동">여가활동</option>
                  			<option value="산후 후유증">산후 후유증</option>
                  			<option value="집안행사">집안행사</option>
                  			<option value="자녀양육부담">자녀양육부담</option>
                  			<option value="기타">기타</option>
                  		</select>
                    </td>         
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">인계자 성명<img src="/ibom/resources/images/serviceApply/bul_dot.png"
                    style="margin-bottom:3px; margin-left:5px;">
                    </td>
                    <td class="apply1_content">
                    	<input type="text" id="transferor_1" name="transferor_1" style="width:30%; height:30px; border: 1px solid #ccc;">
                    	<input type="hidden" id="transferor" name="transferor">
                    	<select name="transferor_2" id="transferor_2" 
                    	onchange="mergeTransferor();"
                    	style="height:30px; border: 1px solid #ccc; font-size:12pt;">
                  			<option value="">:::가족관계선택:::</option>
                  			<option value="부">부</option>
                  			<option value="모">모</option>
                  			<option value="조부">조부</option>
                  			<option value="조모">조모</option>
                  			<option value="형제">형제</option>
                  			<option value="친척">친척</option>
                  			<option value="선생님">선생님</option>
                  			<option value="기타">기타</option>
                  		</select>
                 </td>
                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄장소<img src="/ibom/resources/images/serviceApply/bul_dot.png"
                    style="margin-bottom:3px; margin-left:5px;"></td>
                    <td class="apply1_content">
                        <select name="dolbom_place" id="apply_space" 
                        onchange="selectSpace();"
                        style="height:30px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="이용자가정">이용자가정</option>
                  			<option value="돌보미가정">돌보미가정</option>
                  		</select>
                    </td>
                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">카드정보</td>
                    <td class="apply1_content">
                    	<span class="txtBtn_white sizeSmall">
							<div class="thema_list" id="result_wrap">
								<input type="hidden" name="apply1_card" id="apply1_card">
								<span id="cardInfo"></span>
								<button type="button" id="addVoucherBtn" title="카드선택 버튼" 
								onclick="cardPop();"
								style="color: #555; background: #fff; border: 1px solid #d9d9d9;  font-size:12pt; padding:3px 7px;">
								<img src="/ibom/resources/images/serviceApply/btn_func8.png" style="width:12px; height:12px;">카드 선택</button>
								<%-- <button 
								href="${ pageContext.request.contextPath}/iusers/moveCardPopPage.do" 
								data-font="secondary" class="thema_list_lyrics" 
								style="color: #555; background: #fff; border: 1px solid #d9d9d9;  font-size:12pt; padding:5px 7px;">
								<img src="/ibom/resources/images/serviceApply/btn_func8.png" style="width:12px; height:12px;">카드 선택</button>
								</div> --%>
							</div>
						</span>
                    </td>
                   
                   
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄주소</td>
                    <td class="apply1_content"><p id="dolbom_space"></p></td>
                  
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">선호돌보미</td>
                    <td class="apply1_content">
	                    <p>
	                       <input type="checkbox" name="before_req" id="before_req" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;돌보미 면접을 진행했던 돌보미 요청
	                       <input type="checkbox" name="interview_req" id="interview_req" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;이전에 연계된 돌보미 요청
	                    </p>
	                    <p style="color: #ca3e00; font-size:13pt;">※아이돌봄 서비스를 처음 이용하시는 경우에는 선택하실 필요가 없습니다.</p>
                    </td>
                   
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄요청사항<br>
                    						(서비스제공기관)
                    </td>
                    <td class="apply1_content">
                        <textarea name="req_institution" class="feedback-input" id="comment" placeholder="내용입력"></textarea>
                    </td>
                  
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄요청사항<br>
                    						(돌보미)
                    </td>
                    <td class="apply1_content">
                       <textarea name="req_dolbomi" class="validate[required,length[6,300]] feedback-input" id="comment" placeholder="내용입력"></textarea>
                    </td>
                   
                </tr>
            </tbody>
        </table> 
        		<br>
        		<p style="color: #ca3e00; font-size:13pt;">※  ‘돌봄요청사항(돌보미)’는 아이돌보미 및 서비스제공기관 담당자가 확인 가능합니다.</p>
        		<div class="service_next_footer" style="padding:0 10px; margin-top:30px;">
    				<input type="submit" id="service_next_btn" value="다음" class="service_next">
  				</div>
  		</form><!-- iusers/apply1.do -->
						<!-- .jt_board_list -->
					 </div> 
	

				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_body -->
		</div>
		<!-- .article -->

	</div>
	<!-- #main_container_inner --> </main>
	<!-- .main_container -->
	<!-- footer ============================================================== -->
	<c:import url="../../common/footer.jsp" />
</body>
</html>
<%-- <h2>이용자 메인페이지</h2>
<h3>안녕하세요!${loginIuser.user_name}님</h3>

<nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav>
<c:if test="${loginIuser != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
