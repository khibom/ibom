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
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize3.css" />

<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script> 
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
<script type="text/javascript">
$(function(){
	$("#child_list_btn").click(function(){
	var userid = "${loginIuser.user_id}";
	//alert(userid);
	$.ajax({
		url : "service2ChildList.do",
		type : "post",
		data : {user_id : userid},
		dataType : "json",
		success : function(data){
			// data object를 string으로 바꿈
			var jsonStr = JSON.stringify(data);
			// 문자열을 json 객체로 바꿈
			var json = JSON.parse(jsonStr);
			var values = "";
			var values2 = ""; 
			var values3 = "</table>";
			
				values += "<table class='jt_board_list3' id='cardlist'>"
							+ "<tbody>"
							+ "<tr><th class='allCheck'>" + "<input type='checkbox' name='allCheck' id='allCheck'>"
							+ "</th><th class='family_name'>대상아동" 
							+ "</th><th class='ad_date'>판정일자"
							+ "</th><th class='family_gender'>성별"
							+ "</th><th class='ad_level'>판정등급"
							+ "</th><th class='dolbom_type'>돌봄구분"
							+ "</th><th class='remaining_time'>정부지원<br>잔여시간(연간)</th></tr>"
							+ "</tbody>"
							
							for(var i in json.list){
							values2 += "<tr><td class='choose'>" + "<input type='checkbox' name='family_CheckBox' id='family_CheckBox'>"   
							+ "</td><td class='family_name_cont'>" + decodeURIComponent(json.list[i].family_name).replace(/\+/gi, " ") 
							+ "</td><td class='ad_date_cont'>" + json.list[i].ad_date 
							+ "</td><td class='family_gender_cont'>" + json.list[i].family_gender
							+ "</td><td class='ad_level_cont'>" + decodeURIComponent(json.list[i].ad_level).replace(/\+/gi, " ")
							+ "</td><td class='dolbom_type_cont'>" + decodeURIComponent(json.list[i].dolbom_type)
							+ "</td><td class='remaining_time_cont'>" + json.list[i].remaining_time + "/720" 
							+ "</td></tr>";
							}
							
			console.log("values" + values);
			// childList의 div에 출력 적용
			$("#childList").html(values + values2 + values3);
			
		},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	});	// serviceCardList.do
	// 회원의 카드 목록 조회 서비스	
	}); //child_list_btn
	
	
});
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
							src="/ibom/resources/images/serviceApply/timeLine_aplly2.png">
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
					


		<div class="jt_board_list_wrap"> 
		<form action="service2.do" method="post">
			<table class="jt_board_list apply1">
            <caption>게시판 목록</caption>
            <colgroup>
				<col width="200px" />
				<col width="*" />
			</colgroup>
            <tbody>
				
                <tr>
                    <td class="apply1_title" style="text-align:left;">신청년월</td>
                    <!-- <td class="apply1_content">
                    	<input type="date" id="startDate" name="startDate">~
                    	<input type="date" id="endDate" name="endDate">
                    </td> -->
                    <td>

	                 	<div class="input-field col s2" >
	                        <i class="material-icons prefix">date_range</i>
	                    	<input type="date" name="stDate" id="resident_no1" class="validate" style="width:20%;" />
	                 		&nbsp;                 
	                 		<strong>~</strong>
	                 		&nbsp;
	                        <i class="material-icons prefix">date_range</i>
	                        <input id="resident_no2"name="endDate" type="date" class="validate" style="width:20%;">
	                        <p style="color: #ca3e00; font-size:13pt; display:inline;">&nbsp;신청년월을 선택해 주세요.</p>
	                 	</div>
                    </td>
                </tr>
                  
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄요일</td>
                    <td class="apply1_content">
                    <p style="margin-left:10px;">
                  		<input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;전체
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;일
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;월
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;화
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;수
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;목
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;금
	                    <input type="checkbox" name="care_day" id="care_day" value="N" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;토
	                </p>
                    </td>         
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">이용시간</td>
                    <td class="apply1_content">
                    <p style="margin-left:10px;">
						<select name="start_hour" id="start_hour" 
                        onchange="selectStartHour();"
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="01">01</option>
                  			<option value="00">02</option>
                  			<option value="01">03</option>
                  			<option value="00">04</option>
                  			<option value="01">05</option>
                  			<option value="00">06</option>
                  			<option value="01">07</option>
                  			<option value="00">08</option>
                  			<option value="01">09</option>
                  			<option value="00">10</option>
                  			<option value="01">11</option>
                  			<option value="00">12</option>
                  			<option value="01">13</option>
                  			<option value="00">14</option>
                  			<option value="01">15</option>
                  			<option value="00">16</option>
                  			<option value="01">17</option>
                  			<option value="00">18</option>
                  			<option value="01">19</option>
                  			<option value="00">20</option>
                  			<option value="01">21</option>
                  			<option value="00">22</option>
                  			<option value="01">23</option>
                  		</select>
                  		시
                  		<select name="start_minute" id="start_minute" 
                        onchange="selectStartMinute();"
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="30">30</option>
                  		</select>
                  		분&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp;
                  		<select name="end_hour" id="end_hour" 
                        onchange="selectEndHour();"
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="01">01</option>
                  			<option value="00">02</option>
                  			<option value="01">03</option>
                  			<option value="00">04</option>
                  			<option value="01">05</option>
                  			<option value="00">06</option>
                  			<option value="01">07</option>
                  			<option value="00">08</option>
                  			<option value="01">09</option>
                  			<option value="00">10</option>
                  			<option value="01">11</option>
                  			<option value="00">12</option>
                  			<option value="01">13</option>
                  			<option value="00">14</option>
                  			<option value="01">15</option>
                  			<option value="00">16</option>
                  			<option value="01">17</option>
                  			<option value="00">18</option>
                  			<option value="01">19</option>
                  			<option value="00">20</option>
                  			<option value="01">21</option>
                  			<option value="00">22</option>
                  			<option value="01">23</option>
                  		</select>
                  		시
                  		<select name="end_minute" id="end_minute" 
                        onchange="selectEndMinute();"
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="30">30</option>
                  		</select>
                  		분 까지 사용
                  		</p>
                    </td>
                    
                </tr>
 
            </tbody>
        </table> 
        <div class="service_next_footer" style="padding:0 10px; margin-top:30px;">
    		<button type="button" id="child_list_btn" class="service_next">조회</button>
  		</div>
		</form>				
		
		</div> <!-- .jt_board_list -->
		<div id="childList"></div>			 
				</div> <!-- .wrap_narrow -->
			</div> <!-- .article_body -->
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
