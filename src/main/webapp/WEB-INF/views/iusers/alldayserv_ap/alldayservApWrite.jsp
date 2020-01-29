<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"   content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="/ibom/resources/images/favicon_83.png"   sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"   sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"   sizes="192x192" />
<link rel="apple-touch-icon-precomposed"   href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"   content="/ibom/resources/images/favicon_300.png" />
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
.jt_board_list30 th {padding: 3px 0 2px;position: relative;
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
    background-color: #f07e23;
}
.join_content:before, .join_content:after {
    content: '';
    display: block;
    width: 100%;
    height: 2px;
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
/* content99 */
.join_content99 {padding:15px 0 15px 15px;position: relative;}
.join_content99:before, .join_content99:after {content: '';display: block;width: 100%;height: 5px;position: absolute;left: 0;border-radius: 25px;overflow: hidden;}
.join_content99:before {top: 0;background-color: #f07e23;}
.join_content99:after {bottom: 0;background-color: #f07e23;}
.join_content99 > p {font-size: 16px;font-weight: 400;line-height: 1.75;letter-spacing: -0.025em;color: #666;}
             
.join_content99.secondary {padding-bottom: 0;}
.join_content99.secondary:after {display: none;}

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


/* document.addEventListener('DOMContentLoaded', function() {
    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  }); */

  // Or with jQuery
  
	//목록 버튼 클릭 시 
function movelist(){
	  if(confirm("종일제 신청을 취소 하시겠습니까?")){
		  <c:url var="list" value="/iusers/allDayApList.do"><c:param name="user_id" value="${loginIuser.user_id}"/></c:url>
		  location.href="${list}"
		  return false;
	  }
  }
$(function(){	
	
	//3번 체크박스 체크 안되면 라디오버튼 비활성화
	checkradio();
	
	
	
	
	$("#insert").click(function(){
		//신청 정보 유료성 검사
		//신청구분
		if($(':radio[name="baby_type"]:checked').length < 1){
			alert("신청 구분을 선택해주세요.")
			$(':radio[name="baby_type"]').focus();
		  	return false;
		}
		//아동과관계
		var baby_rela = $("#baby_rela");
		if(baby_rela.val() == null || baby_rela.val() ==""){
			alert("아동과의 관계를 목록에서 선택해주세요.")
			$(this).focus();
			  return false;
		}
		//돌봄시작 희망월
		
		//이메일
		
		//아동명
		var baby_name = $("#baby_name").val();
		if(baby_name.length < 1 || baby_name == ""){
			alert("아동명(태아명)을 입력해주세요.");			
			$("#baby_name").focus();
			 return false;
		}else if(baby_name.length > 10){
			alert("아동명(태아명)은 최대 10자리까지 입력가능합니다.");			
			$("#baby_name").focus();
			  return false;
		}
		//
		//휴대전화
		var user_phone = $("input[name='user_phone']");
		if(user_phone.val().length < 1){
			alert("휴대전화번호를 입력해주세요.");			
			user_phone.focus();
			return false;
		}else if(user_phone.val().length < 11){
			alert("휴대전화번호 자릿수를 확인해주세요.");			
			user_phone.focus();
			return false;
		}
		//생년월일
		var baby_birth = $("input[name='baby_birth']").val();		
		if(baby_birth == null || baby_birth == ""){
			alert("아동의 생년월일을 입력해주세요.");			
			$("input[name='baby_birth']").focus();
			return false;
		}
		
		//가정 유형 값 변경
		if($('input[type="checkbox"][name="fam_choi1"]').is(":checked")){
			$("input[name='fam_typ_choi1']").val('Y');
		}else{
			$("input[name='fam_typ_choi1']").val('N');
		}	
		if($('input[type="checkbox"][name="fam_choi2"]').is(":checked")){
			$("input[name='fam_typ_choi2']").val('Y');
		}else{
			$("input[name='fam_typ_choi2']").val('N');
		}
		//3 값 셋팅
		if($("#fam_choi3").is(":checked")){//체크 되었으면 radio체크 하고 체크된 radio값으로 전송
			if($("#one").is(":checked")){
				$("input[name='fam_typ_choi3']").val($("#one").val());
			}else if($("#two").is(":checked")){
				$("input[name='fam_typ_choi3']").val($("#two").val());
			}else{
				alert("가정 유형에 선택이 누락 되었습니다.");
				return false;
			}
			
		}else{//체크 안되어 있으면 값은 N으로 
			$("input[name='fam_typ_choi3']").val('N');
		}
		//
		if($('input[type="checkbox"][name="fam_choi4"]').is(":checked")){
			$("input[name='fam_typ_choi4']").val('Y');
		}else{
			$("input[name='fam_typ_choi4']").val('N');
		}
		if($('input[type="checkbox"][name="fam_choi5"]').is(":checked")){
			$("input[name='fam_typ_choi5']").val('Y');
		}else{
			$("input[name='fam_typ_choi5']").val('N');
		}
		if($('input[type="checkbox"][name="fam_choi6"]').is(":checked")){
			$("input[name='fam_typ_choi6']").val('Y');
		}else{
			$("input[name='fam_typ_choi6']").val('N');
		}
		
		
		
		
		
		
		var lastagree = $('input[type="checkbox"][name="lastagree"]');
		if(lastagree.prop("checked")){
			 $("#alldayserv_form").submit();
		  }else{
			  alert("종일제 신청 유의사항 동의서가 누락 되었습니다.");
			  lastagree.focus;
			  return false;
		  }
	})
	
})//document.ready
//3번 체크박스 체크 안되면 라디오버튼 비활성화
function checkradio(){
	  if($("#fam_choi3").is(':checked')){//체크 되었으니  radio활성화
			$("input[type='radio'][name='fam_typ_choi_3']").attr('disabled',false).attr('required', true);
		}else{//radio 비활성화
			$("input[type='radio'][name='fam_typ_choi_3']").attr('disabled',true).prop('checked',false);
			$("input[type='hidden'][name='fam_typ_choi3']").val('N');
		}
}
</script>
</head>
<body>

    <div id="skip"><a href="#main">메인 콘텐츠 바로가기</a></div>

    
   <!--  header 시작 -->
   <c:import url="../iusersHeader.jsp"/>
   <!-- header 끝 -->
<!--  종일제 신청 시작 =================================================================== -->
<main id="main" >
    <div id="main_container_inner">
       <div class="article">
       <!-- 타이틀 =================================================================== -->
       <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">종일제 서비스 대기 신청</h1>
                </div><!-- .wrap_narrow -->
          </div><!-- article_header -->
       <!-- 타이틀 끝 =========================================================================== -->
      <div class="article_body">
         <div class="wrap_narrow" id="result_wrap">
         
			<span class="join_s"><h5>종일제 서비스 대기 신청</h5></span>
			<p style="float:left;">임신기간, 출산휴가, 육아휴직 기간 등 종일제 서비스 이용제한 기간에도 향후 이용을 위한 대기 신청이 가능하며, 홈페이지에서 대기순번을 확인 할 수 있습니다.</p>
  				<br><br><br><p style="float:left;"><b>가점에 따른 우선순위 제공 및 연계</b></p><br><br>
  				<p style="float:left;">대기자가 있거나 예산 부족 등의 사유 발생 시 법에 의한 우선순위 자격요건(6개)에 따라 가점을 부여합니다. 요건에 해당시마다 가점 5점씩 부여하며, 대기 1개월마다 1점씩, 최대 5점까지 부여합니다.</p>
  				<br><br><br><p style="float:left; color:rgb(243, 114, 51)">영아종일제는 1회 3시간 이상(월 60~200시간) 사용이 원칙입니다. 3시간미만은 시간제 서비스를 이용하시기 바랍니다.
			<br>(시간제 서비스는 대기신청이 필요하지 않으며, 언제부터 서비스 이용이 가능한지는 소속 서비스제공기관으로 문의해 보시기 바랍니다. )</p><br><br>
			<br><br>   
		<form class="join-form" id="alldayserv_form" action="${pageContext.request.contextPath}/iusers/allDayApIn.do" name="form" method="post" >
         <input type="hidden" name="user_id" value="${loginIuser.user_id }"><input type="hidden" name="user_name" value="${loginIuser.user_name }">
         <div class="jt_board_list_wrap">   
         				
         
         <button onclick="movelist();" id="myBtn" class="btn waves-effect orange darken-3"style="float:right;margin-bottom: 5px;" name="action">목  록</button>
           <!--  신청정보 시작 ====================================================================================== -->
            
           <span class="join_s"><h5>신청정보</h5></span>                  
            
            
           <table class="jt_board_list30">
            <caption>이용사항 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                 	<th class="type" scope="col">보호자 성명<span class="red-text">*</span></th>
                    <td class=""  colspan="2">
                       ${loginIuser.user_name}
                    </td> 
                    <th class="type" scope="col">신청구분<span class="red-text">*</span></th>
                    <td class=""  colspan="2">
                       <label>
                       <input type="radio" id="baby_type1" name="baby_type" value="영아" class="with-gap"/>
                       <span>영아</span>      
                    </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <label>              
                       <input type="radio" id="baby_type2" name="baby_type" value="출산전" class="with-gap"/>
                       <span>출산 전</span>                      
                    </label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                 	<th class="type" scope="col">신청아동과의 관계<span class="red-text" >*</span></th>
                    <td class=""  colspan="2">
                      <select id="baby_rela" name="baby_rela" class="browser-default" style="height:2rem; padding:2px; width:100%;" required>
                     	<option value="">:::선택:::</option>
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
                    <th class="type" scope="col">돌봄시작 희망 월<span class="red-text">*</span></th>
                    <td class=""  colspan="2">
                       <select id="start_hope_month" name="start_hope_month" class="browser-default" required> 
	                       	<option value="202002">202002</option><option value="202003">202003</option><option value="202004">202004</option>
	               			<option value="202005">202005</option><option value="202006">202006</option><option value="202007">202007</option>
	               			<option value="202008">202008</option><option value="202009">202009</option><option value="202010">202010</option>
	               			<option value="202011">202011</option><option value="202012">202012</option><option value="202101">202101</option> 
                    	</select>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                 	<th class="type" scope="col">이메일</th>
                    <td class=""  colspan="2">
                       <label><input type="email" name="user_email" style="height:2rem;"></label>
                    </td> 
                    <th class="type" scope="col">아동명(태아명)</th>
                    <td class=""  colspan="2">
                       <label><input type="text" name="baby_name" id="baby_name"style="height:2rem;" placeholder="10글자 이하로 작성해주세요"></label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                 	<th class="type" scope="col">휴대전화번호<span class="red-text" >*</span></th>
                    <td class=""  colspan="2">
                       <label><input type="tel" name="user_phone" style="height:2rem;" maxlength="11" placeholder="'-'기호 없이 입력해주세요"></label>
                    </td> 
                    <th class="type" scope="col">생년월일(출산예정일)<span class="red-text">*</span></th>
                    <td class=""  colspan="2">
                       <div class="input-field col s2" >
			                  <input type="date" name="baby_birth" id="baby_birth" class="validate" style="width:80%; height:2rem;" required/><i class="material-icons prefix" style="padding-top:0px;">date_range</i></div>
			                 
                    </td>                        
                </tr>
             
            </tbody>
        </table><!-- .jt_board_list30 -->
           <!--  신청정보 끝 ====================================================================================== -->
           <br><br><br>
           <!--  가정 유형 선택 정보 시작 ====================================================================================== -->
           <span class="join_s"><h5>가정 유형 선택 정보</h5></span>
	           <div class="join_content99">
	           	<label>
			        <input type="checkbox" class="filled-in" name="fam_choi1"/>
			        <span>기초생활보장법상 수급자, 차상위계층 자녀</span>
			     </label><br>
			     <label>
			        <input type="checkbox" class="filled-in" name="fam_choi2"/>
			        <span>한부모가족지원법상 지원대상의 자녀</span>
			     </label><br>
			     <label>
			        <input type="checkbox" class="filled-in" name="fam_choi3" id="fam_choi3" onclick="checkradio();"/>
			        <span>장애부모 가정</span>
			        
			     </label><br>
			     	<label style="padding-left:25px;">
				        <input class="with-gap" name="fam_typ_choi_3" type="radio" value="one" id="one"/>
				        <span>1급·2급 5점, 지적장애·자폐성장애 3급 해당자로서 다른 장애와 중복된 경우</span>
				      </label><br>
				      <label style="padding-left:25px;">
				        <input class="with-gap" name="fam_typ_choi_3" type="radio" value="two" id="two"/>
				        <span>이외 장애</span>
				      </label><br>
			     <label>
			        <input type="checkbox" class="filled-in" name="fam_choi4" value="Y"/>
			        <span>다문화가족지원법상 다문화가족 자녀</span>
			     </label><br>
			     <label>
			        <input type="checkbox" class="filled-in" name="fam_choi5" value="Y"/>
			        <span>맞벌이 가정(취업한부모 포함) 자녀</span>
			     </label><br>
			     <label>
			        <input type="checkbox" class="filled-in" name="fam_choi6" value="Y"/>
			        <span>다자녀 가정(만 12세 이하 3명, 만 36개월 이하 2명)</span>
			     </label><br>
	           </div>
	           <input type="hidden" name="fam_typ_choi1">
	           <input type="hidden" name="fam_typ_choi2">
	           <input type="hidden" name="fam_typ_choi3">
	           <input type="hidden" name="fam_typ_choi4">
	           <input type="hidden" name="fam_typ_choi5">
	           <input type="hidden" name="fam_typ_choi6">
           
           <!--  가정 유형 선택 정보 끝 ====================================================================================== -->
           <br><br>
           <!-- 유의사항 시작 ====================================================================================== -->
           		
           		<span class="join_s"><h4>종일제 서비스 대기신청 시 유의사항</h4></span>
           		 	<p style="text-indent: -1em; margin-left: 20px;">※ 대기순번에 따라 아이돌보미를 연계하고 있으나, 활동 가능한 돌보미의 지역, 활동 가능 시간등의 여건에 따라 연계 순서가 변동될 수 있습니다.</p>
					<p style="text-indent: -1em; margin-left: 20px;">※ 아직 정부지원 대상이 아닌 가정은 해당 지역의 읍면동 주민센터에서 정부지원 유형결정을 받고, 희망이용일의 최소 15일 전까지 자격요건(우선제공 대상여부), 이용의사, 이용시간 등 확인을 위해 서비스제공기관으로 확정신청을 요청하여아 합니다.</p>
					<p style="text-indent: -1em; margin-left: 20px;">※ 대기신청시 체크하신 가정 유형은 서비스제공기관에서 시군구(읍면동) 시스템 정보를 기초로 사실 확인 후 변동(증감)될 수 있습니다.</p>
					<p style="text-indent: -1em; margin-left: 20px;">※ 대기신청 취소는 서비스제공기관에 유선으로 요청할 수 있으며, 대기신청 취소 후 재신청 대기 1개월 가점(1점) 부여 기준일은 재신청일로부터 시작합니다.</p><br>
					
					<p style="text-indent: -1em; margin-left: 20px;">- 돌보미의 지역, 활동 시간 등 여건에 따라 연계 순서 변동 가능 &nbsp;&nbsp;&nbsp;<i class="material-icons prefix">done</i></p>
					<p style="text-indent: -1em; margin-left: 20px;">- 최소 15일 전까지 서비스 확정 신청&nbsp;&nbsp;&nbsp;&nbsp;<i class="material-icons prefix">done</i></p>
					<p style="text-indent: -1em; margin-left: 20px;">- 가정 유형의 확인절타를 거쳐 가점 조정(증감)&nbsp;&nbsp;&nbsp;&nbsp;<i class="material-icons prefix">done</i></p>
					<p style="text-indent: -1em; margin-left: 20px;">- 재신청 시 가점 부여 기준일은 재신청일&nbsp;&nbsp;&nbsp;&nbsp;<i class="material-icons prefix">done</i></p>
					
					<br><br>
				<label>
			        <input type="checkbox" class="filled-in" name="lastagree" />
			        <span><b>모든 내용을 확인하고 확실하게 인지하였음에 동의합니다.</b></span>
			     </label><br><br><br>
					
					
		<!-- 유의사항 종료 ====================================================================================== -->	
         </div><!-- jt_board_list_wrap-->
   
   </form>
   
   <!-- submit 버튼 -->
         <div class="row">                 
                 <div class="btn_area double" align="center" style="margin-top:10px;"> 
               <span>
                  <!-- tg-text=terms_button_agree -->
                  <!-- <button onclick="adsaIn();" id="myBtn" class="btn waves-effect orange darken-3"style="float:center;" name="action">
                  종일제서비스 대기신청<i class="material-icons prefix">edit</i></button> -->
                  <a id="insert" class="waves-effect waves-light btn orange darken-3" role="button" style="width:30%;">
                  종일제서비스 대기신청<i class="material-icons prefix">edit</i></a>
               </span>
            </div>
           </div><!--  row -->
      <!--================================================================================================================-->

   </div><!--  wrap_narrow -->
</div><!-- article_body -->
</div><!-- article -->
</div><!--  main_container_inner -->
</main>
<!-- footer id="footer" 시작 ==-->

<c:import url="../../common/footer.jsp"/>


</body>
</html>
