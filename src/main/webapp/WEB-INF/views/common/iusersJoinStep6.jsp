<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="/ibom/resources/images/favicon_83.png"	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"	content="/ibom/resources/images/favicon_300.png" />
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 <!-- CSS -->
    <link rel="stylesheet" href="/ibom/resources/css/styles.css" />

<!--  tab CSS 추가 -->
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize.css" />
<style>
.login-form {     width: 50%; }
.login-form-text {    text-transform: uppercase;    letter-spacing: 2px;    font-size: 0.8rem;}
.login-text {    margin-top: -6px;    margin-left: -6px !important;}
.margin {    margin: 0 !important;}
.pointer-events {    pointer-events: auto !important;}
.input-field >.material-icons  {    padding-top:10px;}
.error_next_box {
    display: block;
    margin: 9px 0 -2px;
    font-size: 12px;
    line-height: 14px;
    color: red;
}
/* **************************************** *
 * JT BOARD LIST30
 * **************************************** */
.jt_board_list30 {width: 100%;table-layout: fixed;padding-top: 2px;position: relative; border-collapse: separate;}
.jt_board_list30:before {content: '';display: block;width: 100%;height: 2px;position: absolute;top: 0;left: 0;background-color: #f07e23;border-radius: 25px;overflow: hidden;}
.jt_board_list30 caption {width: 1px;height: 1px;position: absolute;top: 0;left: 0;font-size: 0;line-height: 0;overflow: hidden;}
.jt_board_list30 tr {width: 100%;}
.jt_board_list30 th {padding: 2px 0 2px;position: relative;
font-size: 16px;text-align: center;font-weight: 500;color: #222;vertical-align: middle;
border-bottom: 1px solid #ddd;
background:#eee;
}
.jt_board_list30 th:first-child:before {display: none;}
.jt_board_list30 td {padding: 5px;font-size: 15px;font-weight: 400;text-align: center;color: #888;vertical-align: middle;border-bottom: 1px solid #ddd;cursor: pointer;-webkit-transition: background 300ms;transition: background 300ms;}
.jt_board_list30 .jt_board_title_wrap {width: auto;overflow: hidden;text-overflow: ellipsis;white-space: nowrap;word-wrap: normal;}
.jt_board_list30 .jt_board_title_wrap * {vertical-align: middle;}
.jt_board_list30 .jt_board_title_wrap a {font-size: 16px;letter-spacing: -0.025em;color: #222;}
.jt_board_list30 .jt_board_new {display: inline-block;width: 16px;height: 16px;margin-right: 3px;margin-top: 2px;position: relative;font-style: normal;line-height: 15px;text-align: center;background: #f07e23;border-radius: 50%;}
.jt_board_list30 .jt_board_new:after {font-family: 'jt_font';content: '\e945';font-size: 12px;color: #fff;}
.jt_board_list30 tr.jt_board_sticky_row td {background: #fef8f4;}
.jt_board_list30 tr.jt_board_sticky_row td a {font-weight: 500;}
html.desktop .jt_board_list tr:hover td {background: #f8f8f8;}
html.ie .jt_board_list30 .jt_board_new {line-height: normal;}
html.ie .jt_board_list30 .jt_board_new:after {position: absolute; top: 50%; left: 50%; transform: translate(-50%,-50%); -webkit-transform: translate(-50%,-50%); -ms-transform: translate(-50%,-50%)}

.jt_board_list30 .type {width: 130px;}
.jt_board_list30 .hit {width: 130px;}
.jt_board_list30 .date {width: 160px;}
.jt_board_list30 .title {width: auto;}
.jt_board_list30 td.title {padding: 19px 31px 21px;text-align: left;}

html.ie .jt_board_list_wrap {display: block; position: relative;}
html.ie .jt_board_list_wrap:before {content: '';display: block;width: 100%;height: 5px;position: absolute;top: 0;left: 0;background-color: #f07e23;border-radius: 25px;overflow: hidden;}

.star {
    display: inline-block;
    float:right;
    margin-top: 8px;
    padding-left: 20px;
    position: relative;
    font-size: 14px;
    letter-spacing: -0.025em;
    line-height: 1.5;
    color: #f07e23;
}
.star:after {
    display: block;
    position: absolute;
    left: 0;
    top: 3px;
    font-family: 'jt_font';
    content: '\e936';
    font-size: 15px;
    font-weight: normal;
    line-height: 1;
}
.join_s {
    display: inline;
    margin-bottom: 18px;
    font-size: 16px;
    letter-spacing: -0.025em;
    color: #f07e23;
    font-weight:600;
    }
    .join_content:after {
    bottom: 0;
    background-color: #222;
}
.join_content:before, .join_content:after {
    content: '';
    display: block;
    width: 100%;
    height: 5px;
    position: absolute;
    left: 0;
    border-radius: 25px;
    overflow: hidden;
}
[type="radio"]:checked + span:after,
[type="radio"].with-gap:checked + span:after {
  background-color: #f37233;
}
[type="radio"]:checked + span:after,
[type="radio"].with-gap:checked + span:before,
[type="radio"].with-gap:checked + span:after {
  border: 2px solid #f37233;
}
#scroll{
	overflow-x : scroll;
	width:100%;
}
/*input field 값 변경*/
  /* label color */
   .input-field30 label {
     color: #000;
   }
   /* label focus color */
   .input-field30 input[type=text]:focus + label {
     color: #000;
   }
   /* label underline focus color */
   .input-field30 input[type=text]:focus {
     border-bottom: 1px solid #000;
     box-shadow: 0 1px 0 0 #000;
   }
   /* valid color */
   .input-field30 input[type=text].valid {
     border-bottom: 1px solid #000;
     box-shadow: 0 1px 0 0 #000;
   }
   /* invalid color */
   .input-field30 input[type=text].invalid {
     border-bottom: 1px solid #000;
     box-shadow: 0 1px 0 0 #000;
   }
   /* icon prefix focus color */
   .input-field30 .prefix.active {
     color: #000;
   }
   .comment_write_label30 {
    position: absolute;
    top: 235px;
    left: 183px;
    font-size: 15px;
    color: #aaa;
    padding-right: 18px;
    line-height: 1.6;
    }
</style>
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
<script type="text/javascript" src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script>
 <!--  네이버 추가 js -->
<script type="text/javascript" src="/ibom/resources/js/clickcr.js"></script>
<!-- select js -->
<script type="text/javascript">
 	var $select = jQuery("#bmg_monday_start_hour");
 	for(var hr = 0; hr < 24; hr++){
 		var hrStr = hr.toString().padStart(2, "0") + ":";
 		var val = hrStr + "00";
 		$select.append('<option val="  ' + val + '  " >' + val + '</option>');
 		
 		val = hrStr + "30";
 		$select.append('<option val=" ' + val + ' " > ' + val + '</option>');
 	}
</script>
</head>
<body>

    <div id="skip"><a href="#main">메인 콘텐츠 바로가기</a></div>

    
   <!--  header 시작 -->
   <c:import url="../mainHeader.jsp"/> 
   <!-- header 끝 -->
<!--  회원가입 시작 =================================================================== -->
<main id="main" >
    <div id="main_container_inner">
    	<div class="article">
    	<!-- 타이틀 =================================================================== -->
    	<div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">회원가입</h1>
                    <p class="article_desc">동의하지 않을 경우 이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.</p>
                </div><!-- .wrap_narrow -->
    		</div><!-- article_header -->
    	<!-- 타이틀 끝 =========================================================================== -->
		<div class="article_body">
			<div class="wrap_narrow" id="result_wrap">
				<div class="join_content">			
			
					<div class="jt_board_list_wrap">	
			
			<!--  응급처치동의서 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">응급처치 동의서(시간제, 영아 종일제 공통)</span>
					<span class="star">본인은 우리i봄 서비스를 이용함에 있어, [응급처지 동의서]의 내용을 명확히 기재하였으며, 아이돌보미가 다음의 절차에 따라 응급처지를 하는 경우, 그 권한을 아이돌보미에 위임할 것에 동의합니다.</span>
				</h5>			
		
        	<table class="jt_board_list30">
            <caption>응급처치 동의서 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="">아동성명</th>
                    <th scope="col" class="">성별</th>
                    <th scope="col" class="">생년월일</th>
                    <th scope="col" class="">혈액형</th>
                    <th scope="col" class="">특이사항<br/>(기존병력, 부작용 약물 등)</th>
                </tr>
            </thead>

            <tbody>
                  <tr class="js_full_click  jq_click click_a">
                    <td colspan="5">등록된 내역이 없습니다.</td>
                </tr>
             </tbody>
        </table>
       
        	<!--  응급처치 동의서 조회 끝 ====================================================================================== -->
        	<form class="join-form" id="join_form" action="iusersJoinStep4.do" name="form" method="post" >
        		<!--  응급처치 절차 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">응급처치 절차</span>
					<span data-font="secondary" class="thema_list_album">1.사고 발생시 가장 먼저 보호자에게 연락합니다.</span>
				</h5>
				
        	<table class="jt_board_list30">
            <caption>응급처치 절차 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">보호자</th>
                    <th scope="col" class="">시간/기간</th>
                    <th scope="col" class="">전화번호</th>
                </tr>
            </thead>
            <tbody>
                  <tr class="js_full_click  jq_click click_a">
                    <td  rowspan="2">보호자 1과는</td>
                    <td>
                    	<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 동안에</span>
                    </td>
                    <td class="title">
                    <label>       	 
					         <input id="last_name" type="text" class="validate" style="width:15%; height:2rem;">
					         -
					         <input id="last_name" type="text" class="validate" style="width:20%; height:2rem;">
					         -
					         <input id="last_name" type="text" class="validate" style="width:20%; height:2rem;">		
					    </label>
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>
                    <select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 동안에</span>
                    </td>
                    <td>
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:50%; height:2rem;">			
					    </label> 
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td  rowspan="2">보호자 2와는</td>
                    <td>
                    	<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 동안에</span>
                    </td>
                    <td>
                    <label>       	 
					         <input id="last_name" type="text" class="validate" style="width:50%; height:2rem;">			
					    </label>
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>
                    <select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="si" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 동안에</span>
                    </td>
                    <td>
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:50%; height:2rem;">			
					    </label> 
					    로 연락합니다.</td>
                </tr>
             </tbody>
        </table>
        	<!-- 응급처치 절차1 끝 ====================================================================================== -->
        	
        	<!--  응급처치 절차2 시작 ====================================================================================== -->
				<h5>
					<!-- <span class="join_s">응급처치 절차</span> -->
					<span data-font="secondary" class="thema_list_album">2. 보호자와 신속하게 연락되지 않을 경우, 정해주신 다음의 연락처로 연락드립니다.</span>
				</h5>
				
        	<table class="jt_board_list30">
            <caption>응급처치 절차 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="">이름</th>
                    <th scope="col"  class="title">전화번호</th>
                    <th scope="col" class="">관계</th>
                </tr>
            </thead>
            <tbody>
                  <tr class="js_full_click  jq_click click_a">
                    <td>① 
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:40%; height:2rem;">					        
					    </label>
                    는
                    </td>
                    <td>
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:50%; height:2rem;">					        
					    </label>
					    로 연락할 수 있습니다.
                    </td>
                    <td>
                    아동과의 관계는
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:30%; height:2rem;">					        
					    </label>
					</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>②  
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:40%; height:2rem;">					        
					    </label>
                    는
                    </td>
                    <td>
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:50%; height:2rem;">					        
					    </label>
					    로 연락할 수 있습니다.
                    </td>
                    <td>
                    아동과의 관계는
                    	<label>       	 
					         <input id="last_name" type="text" class="validate" style="width:30%; height:2rem;">					        
					    </label>
					</td>
                </tr>
                
             </tbody>
        </table>
        	<!-- 응급처치 절차2 끝 ====================================================================================== -->
        <!--  응급처치 절차3 시작 ====================================================================================== -->
				<h5>
					<!-- <span class="join_s">응급처치 절차</span> -->
					<span data-font="secondary" class="thema_list_album">3.  필요한 경우 119 구조대에 연락할 것이며, 보호자께서 정하신 의료기간으로 응급수송 할 것입니다.</span>
				</h5>
				
		        	<div class="row">
				        <div class="input-field col s12">
				          <input placeholder="해당없음" id="first_name" type="text" class="validate" value="">
				          <label for="first_name">보호자 지정 의료기관 : </label>
				        </div>        
				      </div>
        	<!-- 응급처치 절차3 끝 ====================================================================================== -->
		        	<p>
				      <label>
				        <input type="checkbox" class="filled-in" checked="checked" />
				        <span>응급처치 절차를 확인하였으며, '응급처리 동의서' 제출에 동의합니다.</span>
				      </label>
				    </p>
        	</form>
        	
      </div><!-- jt_board_list_wrap-->
      </div><!--  join_content-->      
      <!-- ===================================================================================================== -->
      <!-- 다음 버튼 -->
			<div class="row">        			
           		<div class="btn_area double" align="center" style="margin-top:10px;">
					<span>
						<!-- tg-text=terms_button_cancel -->
						<a href="#" id="btnCancel4"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> 
					<span>
						<!-- tg-text=terms_button_agree -->
						<a href="#" id="nextBtn4" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a>
					</span>
				</div>
			  </div><!--  row -->
	 <!-- ========================================================================================================= -->
      
        	
	
	
		<!--================================================================================================================-->

	</div><!--  wrap_narrow -->
</div><!-- article_body -->
</div><!-- article -->
</div><!--  main_container_inner -->
</main>
<!-- footer id="footer" 시작 ==-->

<c:import url="footer.jsp"/>


</body>
</html>

