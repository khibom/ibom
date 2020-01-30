<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize3.css" />
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
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script> 
<script type="text/javascript">
	
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
						이용요금 확인 및 신청서 제출
						</h2>
						<br> <img style="width:100%"
							src="/ibom/resources/images/serviceApply/timeLine_aplly1.png">
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
  		<table class='jt_board_list3' id="service_apply_list" style="margin-top:50px;">
  		
			<colgroup>
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			</colgroup>
			<thead>
				<tr>
				<th class='apply_date'>신청일</th>
				<th class='family_name'>대상아동</th>
				<th class='service_type'>서비스 유형</th>
				<th class='start_time'>시작시간</th>
				<th class='end_time'>종료시간</th>
				<th class='using_time'>이용시간</th>
				<th class='support_time'>이용료</th>
				<th class='interview_yn'>정부지원금</th>
				<th class='support_time'>본인부담금</th>
				</tr>
			</thead>
			
			
			<tbody id='dolbom_list'>
				<c:set var="i" value="${fn:length(list)}" />
				<c:forEach items="${ list }" var="item" varStatus="varStatus" begin="0" end="100">
					<tr>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.apply_date }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.family_name }"/></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.service_type }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.start_time }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.end_time }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.using_time }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.using_charge }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.gov_fund }" /></td>
						<td style="text-align:center; vertical-align:middle;"><c:out value="${item.total_self_pay }" /></td>
					</tr>
				</c:forEach>		
			</tbody>	
			
		</table>
		<form action="apply3.do" method="post">
		<div class="service_next_footer" style="margin-top:30px;">
			<c:forEach items="${ list }" var="item" varStatus="i">
				<input type="hidden" name="family_code" value="${item.family_code }">
				<input type="hidden" name="family_name" value="${item.family_name }">
				<input type="hidden" name="apply_date" value="${item.apply_date }">
				<input type="hidden" name="service_type" value="${item.service_type }">
				<input type="hidden" name="care_day" value="${item.care_day }">
				<input type="hidden" name="start_time" value="${item.start_time }">
				<input type="hidden" name="end_time" value="${item.end_time }">
				<input type="hidden" name="using_time" value="${item.using_time }">
				<input type="hidden" name="using_charge" value="${item.using_charge }">
				<input type="hidden" name="interview_fee" value="${item.interview_fee }">
				<input type="hidden" name="total_self_pay" value="${item.total_self_pay }">
				<input type="hidden" name="total_pay" value="${item.total_pay }">
				<input type="hidden" name="interview_date" value="${item.interview_date }">
				<input type="hidden" name="interview_time" value="${item.interview_time }">
				<input type="hidden" name="gov_fund" value="${item.gov_fund }">
				<input type="hidden" name="personal_charge" value="${item.personal_charge }">
				<input type="hidden" name="care_user_time" value="${item.care_user_time }">
				
			</c:forEach>
			<input type="hidden" name="user_id" value="${apply1.user_id }">
			<input type="hidden" name="apply_reason" value="${apply1.apply_reason }">
			<input type="hidden" name="transferor" value="${apply1.transferor }">
			<input type="hidden" name="dolbom_place" value="${apply1.dolbom_place }">
			<input type="hidden" name="apply1_card" value="${apply1.apply1_card }">
			<input type="hidden" name="before_req" value="${apply1.before_req }">
			<input type="hidden" name="interview_req" value="${apply1.interview_req }">
			<input type="hidden" name="req_institution" value="${apply1.req_institution }">
			<input type="hidden" name="req_dolbomi" value="${apply1.req_dolbomi }">
			<input type="hidden" name="cancel_reason" value="${apply1.cancel_reason }">
    		<input type="submit" id="service_next_btn" value="신청서 제출" class="service_next">
  		</div>  
		</form>
				</div> <!-- .wrap_narrow -->
			</div> <!-- .article_body -->
		</div>
		<!-- .article -->

	</div>
	<!-- #main_container_inner --> </main>
	     <!-- Modal Trigger -->
  

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <div class="popHead">
			<h1>돌보미 면접 신청</h1>
			<!-- <div class="btnClose"><button type="button" onclick="javascript:self.close();" class="btn_close"><span>닫기</span></button></div> -->
	</div>
	<div class="popTitle" style="padding:0 10px;">
	<br>
		<h3 style="margin-left:10px; font-weight:bold; color:#ca3e00; margin-bottom:20px;">돌보미 면접 신청</h4>
	<br>
	<div class="jt_board_list_wrap"> 
		<table class="jt_board_list3" id="cardlist">
            <caption>카드 목록</caption>
            <colgroup>
				<col width="40%" />
				<col width="*" />
			</colgroup>
            <tbody>
                <tr>
                    <td class="interview_users">신청자</td>
                    <td class="interview_usersName">${loginIuser.user_name}</td>
                </tr>
                <tr>
                    <td class="interview_date">면접요청일자</td>
                    <td class="interview_date_hour">
                    	<div class="input-field col s2" >
	                        <i class="material-icons prefix">date_range</i>
	                    	<input type="date" name="interview_date_pop" id="interview_date_pop" class="validate" style="width:50%;" />&nbsp;
	                 		<select name="interview_time_pop" id="interview_time_pop" 
	                 		style="width:60px; height:35px; border: 1.5px solid #ccc; font-size:12pt; border-radius:5px 5px 5px 5px; vertical-align: middle;" > 
	                 			<option value="">선택</option>
	                 			<option value="09">09</option>
	                 			<option value="10">10</option>
	                 			<option value="11">11</option>
	                 			<option value="12">12</option>
	                 			<option value="13">13</option>
	                 			<option value="14">14</option>
	                 			<option value="15">15</option>
	                 			<option value="16">16</option>
	                 			<option value="17">17</option>
	                 			<option value="18">18</option>
	                 			<option value="19">19</option> 			
	                 		</select>
	                 		<span style="vertical-align: middle;">시</span>
	                 	</div>
                    </td>
                </tr>
           </tbody>
        </table>
    </div>
    </div>
    </div>
    <div class="modal-footer">
      <span class="modal-close waves-effect waves-green btn-flat" id="interviewPop_close">닫기</span>
      <button type="button" id="interview_send" class="modal-close interview_send">저장</button>
    </div>
  </div>
  
  
  
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
