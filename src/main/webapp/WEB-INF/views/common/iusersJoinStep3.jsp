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
$(document).ready(function(){
	// 취소 버튼
		$("#btnCancel3").click(function(event) {
			var result = confirm("회원가입을 취소하시겠습니까?")
			if(result){
				alert("이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.");
				sessionStorage.clear();
				console.log(sessionStorage.length);
				submitDisagree();
				return false;
			} else {
				alert("우리i봄 서비스 신청 및 연계시 필요한 정보이므로, 기본정보, 가정현황, 이용사항, 요구사항 등의 정보를 정확하게 입력해 주시기 바랍니다.");				 
			}
			  
		});
		
		$("#nextBtn3").click(function(event){			
	         submitStep3();	         
	         return false;			
			});  // end 

});// end document.ready

		function submitStep3() {
			 var cctv = $("#cctv_alter").val();			
		     var pet = $("#pet_alter").val();
		     
		     if(cctv == null){
					alert("CCTV여부는 필수 정보입니다.");
		            return false;
				}  else if(pet == null){
					alert("애완동물여부는 필수 정보입니다.");
		            return false;
				}  	
		     
		  // -- sessionStorage ==================================================
				
				// 변수설정
				var multicultural_alter = $("#multicultural_alter").val(); // 다문화가정여부
				var latchkey_alter = $("#latchkey_alter").val(); // 맞벌이여부
				var multichild_alter	= $("#multichild_alter").val(); // 다자녀가구여부
				var father_alter = $("#father_alter").val(); // 부자가정여부
				var mather_alter = $("#mather_alter").val();// 모자가정여부
				var grand_alter = $("#grand_alter").val(); // 조손가정여부
				var basiclife_alter = $("#basiclife_alter").val(); // 기초생활수급 여부
				var medical_alter = $("#medical_alter").val(); // 의료가구여부
				var working_alter = $("#working_alter").val(); // 취업한부모 여부
				var disabled_alter = $("#disabled_alter").val(); // 장애부모 여부
				var second_class = $("#second_class").val(); // 차상위본인부담경감대상자여부
				var etc_rearing = $("#etc_rearing").val(); // 기타양육부담
				
				var place_agree = $('input[name="place_agree1"]:checked').val();// 현장실습사전동의
				var reqst_cours = $("#reqst_cours").val(); // 서비스 신청경로
				var card_sms =$('input[name="card_sms1"]:checked').val(); // 카드결제 승인 취소 SMS 수신여부
				var license_alter = $("#license_alter").val(); // 아이돌보미 자격여부
				var service_place = $("#service_place").val(); // 서비스제공장소
								
				sessionStorage.setItem("cctv_alter", cctv);// cctv여부
				sessionStorage.setItem("pet_alter", pet);// 애완동물여부
				sessionStorage.setItem("multicultural_alter", multicultural_alter); // 다문화가정여부
				sessionStorage.setItem("latchkey_alter", latchkey_alter);
				sessionStorage.setItem("multichild_alter", multichild_alter);
				sessionStorage.setItem("father_alter", father_alter);
				sessionStorage.setItem("mather_alter", mather_alter);
				sessionStorage.setItem("grand_alter", grand_alter);
				sessionStorage.setItem("basiclife_alter", basiclife_alter);
				sessionStorage.setItem("medical_alter", medical_alter);
				sessionStorage.setItem("working_alter", working_alter);
				sessionStorage.setItem("disabled_alter", disabled_alter);
				sessionStorage.setItem("second_class", second_class);
				sessionStorage.setItem("etc_rearing", etc_rearing);
				sessionStorage.setItem("place_agree", place_agree);
				sessionStorage.setItem("reqst_cours", reqst_cours);
				sessionStorage.setItem("card_sms", card_sms);
				sessionStorage.setItem("license_alter", license_alter);
				sessionStorage.setItem("service_place", service_place);		
		        
				
			$("#join_form").submit();
			return true;
			
			//return false;
	    }
		
	function submitDisagree() {
        location.href = "main.do";
        return true;
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
                    <p class="article_desc">우리i봄 서비스 신청 및 연계시 필요한 정보이므로, 기본정보, 가정현황, 이용사항, 요구사항 등의 정보를 정확하게 입력해 주시기 바랍니다.</p>
                </div><!-- .wrap_narrow -->
    		</div><!-- article_header -->
    	<!-- 타이틀 끝 =========================================================================== -->
    	
		<div class="article_body">
			<div class="wrap_narrow" id="result_wrap">
				<div class="join_content">
			
			<div class="jt_board_list_wrap">	
			<!-- <form class="join-form" id="join_form" action="iusersJoinStep4.do" name="form" method="post" > -->
			<form class="join-form" id="join_form" action="iusersJoinStep4.do" name="form" method="post" > 
			<!--  가정현황 시작 ===================================================================================== -->
				<h5>
					<span class="join_s">가정현황</span>	
					<span class="star">"맞벌이여부, 다자녀가구여부" 수정은 이용자등록 완료 후 각 지역별 서비스 제공기관으로 문의하시기 바랍니다.</span>
				</h5>
				
        	<table class="jt_board_list30">
            <caption>가정현황 목록</caption>
            <tbody>
                    <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">CCTV여부<span class="red-text">*</span></th>
                    <td class="">
                    	<select name="cctv_alter1" id="cctv_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="" disabled selected>선택</option>
						    <option value="Y">예</option>
						    <option value="N">아니오</option>
					  	</select>
                    </td>
                    <th class="type">애완동물여부<span class="red-text">*</span></th>
                    <td class="">
                    	<select name="pet_alter1" id="pet_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="" disabled selected>선택</option>
						    <option value="Y">예</option>
						    <option value="N">아니오</option>
					  	</select>
                    </td>
                    <th class="type">다문화가정여부</th>
                    <td class="date">
                    	<select name="multicultural_alter1" id="multicultural_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" selected>아니오</option>
						    <option value="N">예</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">맞벌이여부</th>
                    <td class="">
                    	<select name="latchkey_alter1" id="latchkey_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">다자녀가구여부</th>
                    <td class="">
                    	<select name="multichild_alter1" id="multichild_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">부자가정여부</th>
                    <td class="date">
                    	<select name="father_alter1" id="father_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">모자가정여부</th>
                    <td class="">
                    	<select name="mather_alter1" id="mather_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">조손가정여부</th>
                    <td class="">
                    	<select name="grand_alter1" id="grand_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">기초생활수급 여부</th>
                    <td class="date">
                    	<select name="basiclife_alter1" id="basiclife_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">의료급여가구 여부</th>
                    <td class="">
                    	<select name="medical_alter1" id="medical_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">취업한부모 여부</th>
                    <td class="">
                    	<select name="working_alter1" id="working_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">장애부모 여부</th>
                    <td class="date">
                    	<select name="disabled_alter1" id="disabled_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">차상위본인부담경감대상자 여부</th>
                    <td class="">
                    	<select name="second_class1" id="second_class" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="N" selected>아니오</option>
						    <option value="Y">예</option>
					  	</select>
                    </td>
                    <th class="type">기타양육부담</th>
                    <td class="">
                    	<select name="etc_rearing1" id="etc_rearing" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="" disabled selected>선택</option>
						    <option value="Y">예</option>
						    <option value="N">아니오</option>
					  	</select>
                    </td>
                    <th class="type"></th>
                    <td class="date"></td>
                </tr>               
            </tbody>
        </table><!-- .jt_board_list30 -->
        <span class="error_next_box" id="cctvNoMsg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
        	<!--  가정현황 끝 ====================================================================================== -->
        	
        	<!--  이용사항 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">이용사항</span>						
				</h5>
				
        	<table class="jt_board_list30">
            <caption>이용사항 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">현장실습 사전동의<span class="red-text">*</span></th>
                    <td class=""  colspan="5">
                    	<label>
					        <input name="place_agree1" value="Y" class="with-gap" type="radio"/>
					        <span>동의합니다</span>		
					     </label>
					     <label>			     
					        <input name="place_agree1" value="N" class="with-gap" type="radio" checked/>
					        <span>동의하지 않습니다</span>					       
					     </label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">서비스 신청경로</th>
                    <td class="" colspan="5">
                    	<select id="reqst_cours" name="reqst_cours1" class="browser-default" style="height:2rem; padding:2px; width:12rem;">
						    <option value="" disabled selected>선택</option>
						    <option value="주변권유">주변권유</option>
						    <option value="신문방송">신문방송</option>
						    <option value="생활지정보">생활정보지</option>
						    <option value="전단&포스터">전단,포스터</option>
						    <option value="홈페이지">홈페이지</option>
						    <option value="기타">기타</option>
					  	</select>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">카드결제 승인/취소 SMS 수신여부</th>
                    <td class=""  colspan="5">
                    	<label>
					        <input name="card_sms1" value="Y" class="with-gap" type="radio" />
					        <span>동의합니다</span>					       
					     </label>
					     <label >
					        <input name="card_sms1" value="N" class="with-gap" type="radio" checked/>
					        <span>동의하지 않습니다</span>					       
					     </label>
                    </td>                    
                </tr>
            </tbody>
        </table><!-- .jt_board_list30 -->
        	<!--  이용사항 끝 ====================================================================================== -->
        	
        	<!--  요구사항 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">요구사항</span>	
				</h5>
				
        	<table class="jt_board_list30">
            <caption>요구사항 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                   <th class="type" scope="col">아이돌보미의자격</th>
                    <td class="" colspan="5">
                    	<select id="license_alter" name="license_alter1" class="browser-default" style="height:2rem; padding:2px; width:12rem;">
						    <option value="" disabled selected>선택</option>
						    <option value="보육관련소지자">보육관련자격소지자</option>
						    <option value="양육경험자">양육경험자</option>
						    <option value="기타">기타</option>
					  	</select>
                    </td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                   <th class="type" scope="col">서비스제공장소</th>
                    <td class="" colspan="5">
                    	<select name="service_place1" id="service_place" class="browser-default" style="height:2rem; padding:2px; width:12rem;">
						    <option value="" disabled selected>선택</option>
						    <option value="이용자가정">이용자가정</option>
						    <option value="돌보미가정">돌보미가정</option>
					  	</select>
                    </td>                    
                </tr>
                               
            </tbody>
        </table><!-- .jt_board_list30 -->
        	<!-- 요구사항 끝 ====================================================================================== -->
    </div><!-- jt_board_list_wrap-->
	</form>
	
	</div><!--  join_content-->
	<!-- 다음 버튼 -->
			<div class="row">        			
           		<div class="btn_area double" align="center" style="margin-top:10px;">
					<span>
						<!-- tg-text=terms_button_cancel -->
						<a href="#" id="btnCancel3"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> 
					<span>
						<!-- tg-text=terms_button_agree -->
						<a href="#" id="nextBtn3" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a> 
						<!-- <input type="button" value="다음단계" onclick='nextBtn3()'> -->
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

<c:import url="footer.jsp"/>


</body>
</html>

