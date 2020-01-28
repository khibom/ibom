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
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize3.css" />

<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
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
<script src="/ibom/resources/materialize/js/materialize.js"></script> 

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
						서비스 조회
						</h2>
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
					
					<div class="jt_single">
						<div>
								

						</div>
						<!-- .jt_single_content -->


					</div>


		<div class="jt_board_list_wrap"> 
		<form action="apply1.do" method="post" id="applyFrm">
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
                        <textarea name="req_institution" class="feedback-input" id="req_institution" placeholder="내용입력"></textarea>
                    </td>
                  
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄요청사항<br>
                    						(돌보미)
                    </td>
                    <td class="apply1_content">
                       <textarea name="req_dolbomi" class="validate[required,length[6,300]] feedback-input" id="req_dolbomi" placeholder="내용입력"></textarea>
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
