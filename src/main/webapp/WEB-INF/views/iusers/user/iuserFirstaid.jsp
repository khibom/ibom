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
<!-- <script type="text/javascript" src="/ibom/resources/js/clickcr.js"></script> -->
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
	
	   	
 // 값 좀 불러오기
window.addEventListener('DOMContentLoaded', function()
{
	
			var outValues = "";
	
 			//data.family_no = sessionStorage.getItem("family_no");
			var blood = sessionStorage.getItem("family_blood");
			if(typeof blood == "undefined" || blood == null || blood == "") {
				blood = "해당없음";
			}
				
			var name = sessionStorage.getItem("family_name");
			var no = sessionStorage.getItem("family_no");
			//no.substring(0,6);
			var gender = sessionStorage.getItem("family_gender");
			var etc = sessionStorage.getItem("family_etc");
			
			gender == "여자";
			
			if( blood == null || name == null || no == null || gender == null || etc == null){
				outValues += '<tr>'
					+ '<td class="type" colspan="5"> 조회된 목록이 없습니다. </td>'	
					+ '</tr>';
			} else{
					outValues += '<tr>'
					+ '<td class="type">'+ name +'</td>'		
					+ '<td class="type">'+ gender +'</td>'
					+ '<td class="type">'+ no.substring(0,6) +'</td>'
					+ '<td class="type">'+ blood +'</td>'
					+ '<td class="title">'+ etc +'</td>'
					+ '</tr>';
			}
			
	$("#family_list").append(outValues);		
    // func();

 			// 취소 버튼
 				$("#btnCancel").click(function(event) {
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
 				
 			$("#nextBtn7").click(function() { 	
 				 setTimeout(function() {
 					submitAgree();
 	            }, 800);
 	 			  
 			      return false; 
 			 });

 		});// end document.ready
 		
 		
 		
 		function submitAgree() {				
 			if($("input:checkbox[name=firstaid_termyesno]").is(":checked") != true) {
	  			  //작업
	  				alert("응급처리 동의서는 필수 선택값 입니다.");
	  				return false;
	  			}
	 			//var fterm = document.getElementById('firstaid_termyesno');   // 주민번호 동의
	 			//console.log(document.getElementById('agree4').getAttribute('agree4'));
	 			//var agree4Value = $('input[name="agree4"]:checked').value;
	 			//var firstaid = document.getElementById('firstaid_termyesno').getAttribute('value');
	  			
	  			// 이름
	  			var protector_name1 = $("#protector_name1").val();
	 			var protector_name2 = $("#protector_name2").val();
	 				
	 			var firstaid = "Y";
	 				sessionStorage.setItem("firstaid_termyesno", firstaid);
	  		    	sessionStorage.setItem("protector_name1", protector_name1);
	  	 	    	sessionStorage.setItem("protector_name2", protector_name2); 	    	
	  	 	    	
			 		   // 시간
	 			 		var time1 = $("#time1 option:selected").val();
	 			 		var time2 = $("#time2 option:selected").val();
	 			 		var time3 = $("#time3 option:selected").val();
	 			 		var time4 = $("#time4 option:selected").val();
	 			 		var time5 = $("#time5 option:selected").val();
	 			 		var time6 = $("#time6 option:selected").val();
	 			 		var time7 = $("#time7 option:selected").val();
	 			 		var time8 = $("#time8 option:selected").val();
	 			 		
	 			 		var contact_time1 = "";
	 			 		var contact_time2 = "";
	 			 		var contact_time3 = "";
	 			 		var contact_time4 = "";
	 			 		
	 			 		 if(typeof time1 == "undefined" || typeof time2 == "undefined" ||	
	 			 				 typeof time3 == "undefined" || typeof time4 == "undefined" ||
	 			 				 typeof time5 == "undefined" || typeof time6 == "undefined" || 
	 			 				 typeof time7 == "undefined" ||	 typeof time8 == "undefined" ){
	 	  				
	 					time1 = "X";
	 			 		time2 = "X"
	 			 		time3 = "X"
	 			 		time4 = "X";
	 			 		time5 = "X";
	 			 		time6 = "X";
	 			 		time7 = "X";
	 			 		time8 = "X";	 			 			 	  				
	 	 	    	} 
	 	 	    		contact_time1 = time1 + "-" + time2;
	 			 		contact_time2 = time3 + "-" + time4;
	 			 		contact_time3 = time5 + "-" + time6;
	 			 		contact_time4 = time7 + "-" + time8;
	 	 	    	
	  		 		 		
		 		sessionStorage.setItem("contact_time1", contact_time1);
			    sessionStorage.setItem("contact_time2", contact_time2);
			    sessionStorage.setItem("contact_time3", contact_time3);
			    sessionStorage.setItem("contact_time4", contact_time4); 
	 	    	
	  	    	
	  			 
	  	    	 var protector_phone1 = $("#protector_phone1").val();
	 	    	 var protector_phone2 = $("#protector_phone2").val();
	 	    	 var protector_phone3 = $("#protector_phone3").val();
	 	    	 var protector_phone4 = $("#protector_phone4").val();
	 	    	 var protector_phone5 = $("#protector_phone5").val();
	 	    	 var protector_phone6 = $("#protector_phone6").val();
	 	    	 	
	 	    	 	sessionStorage.setItem("protector_phone1", protector_phone1);
	 	 	    	sessionStorage.setItem("protector_phone2", protector_phone2);
	 	 	    	sessionStorage.setItem("protector_phone3", protector_phone3);
	 	 	    	sessionStorage.setItem("protector_phone4", protector_phone4);
	 	 	    	sessionStorage.setItem("protector_phone5", protector_phone5);
	 	 	    	sessionStorage.setItem("protector_phone6", protector_phone6);
	 	    	 
	  	    	var protector_relationship1 = $("#protector_relationship1").val();
	  		   	var protector_relationship2 = $("#protector_relationship2").val();
	  		   	
	 		    sessionStorage.setItem("protector_relationship1", protector_relationship1);
	 	 	    sessionStorage.setItem("protector_relationship2", protector_relationship2);
	 	 	    	
	  	    	 var medical_institution = $("#medical_institution").val();
	  	    	 if( medical_institution == null || medical_institution == "" ){
	  	    		medical_institution = "해당없음";
	  	    	 }
	  	    	sessionStorage.setItem("medical_institution", medical_institution); 	    		    	
	  	    	sessionStorage.setItem("firstaid_termyesno", firstaid_termyesno); 
	  	    	
	  	    	
 			var data = {};
 	 		data.user_id = sessionStorage.getItem("user_id");
 	 		data.user_pwd = sessionStorage.getItem("user_pwd") 
 	 		data.user_name = sessionStorage.getItem("user_name");
 	 		data.resident_no = sessionStorage.getItem("resident_no");
 	 		data.user_email = sessionStorage.getItem("user_email");
 	 		data.user_address = sessionStorage.getItem("user_address");
 	 		data.sinm = sessionStorage.getItem("sinm");
 	 		data.sggnm = sessionStorage.getItem("sggnm");
 	 		data.user_tel = sessionStorage.getItem("user_tel"); 
 	 		data.user_phone = sessionStorage.getItem("user_phone");
 	 		data.office_code = sessionStorage.getItem("office_code"); 
 	 		data.agree1 =	sessionStorage.getItem("agree1");
 	 		data.agree2 =	sessionStorage.getItem("agree2");
 	 		data.agree3 =	sessionStorage.getItem("agree3");
 	 		data.agree4 =	sessionStorage.getItem("agree4"); 
 	 		data.cctv_alter = sessionStorage.getItem("cctv_alter");
 	 		data.pet_alter = sessionStorage.getItem("pet_alter");
 	 		data.multicultural_alter = sessionStorage.getItem("multicultural_alter");
 	 		data.latchkey_alter = sessionStorage.getItem("latchkey_alter");
 	 		data.multichild_alter = sessionStorage.getItem("multichild_alter");
 	 		data.father_alter = sessionStorage.getItem("father_alter");
 	 		data.mather_alter = sessionStorage.getItem("mather_alter");
 	 		data.grand_alter = sessionStorage.getItem("grand_alter");
 	 		data.basiclife_alter = sessionStorage.getItem("basiclife_alter");
 	 		data.medical_alter = sessionStorage.getItem("medical_alter");
 	 		data.working_alter = sessionStorage.getItem("working_alter");
 	 		data.disabled_alter = sessionStorage.getItem("disabled_alter");
 	 		data.second_class = sessionStorage.getItem("second_class");
 	 		data.etc_rearing = sessionStorage.getItem("etc_rearing");
 	 		data.place_agree = sessionStorage.getItem("place_agree");
 	 		data.reqst_cours = sessionStorage.getItem("reqst_cours");
 	 		data.card_sms = sessionStorage.getItem("card_sms");
 	 		data.license_alter = sessionStorage.getItem("license_alter");
 	 		data.service_place = sessionStorage.getItem("service_place");  
 	 		data.family_relationship =	 sessionStorage.getItem("family_relationship"); //
 	 		data.family_name = sessionStorage.getItem("family_name");
 	 		data.kor_yesno = sessionStorage.getItem("kor_yesno");
 	 		data.family_gender = sessionStorage.getItem("family_gender");
 	 		data.family_no = sessionStorage.getItem("family_no");
 	 		data.family_blood = sessionStorage.getItem("family_blood");
 	 		data.dolbom_type = sessionStorage.getItem("dolbom_type");
 	 		data.ad_level = sessionStorage.getItem("ad_level");
 	 		data.select_type = sessionStorage.getItem("select_type");
 	 		data.family_etc = sessionStorage.getItem("family_etc");	
 	 		data.user_comply = sessionStorage.getItem("user_comply");	
 	 		data.protector_name1 = sessionStorage.getItem("protector_name1");
 	 		data.protector_name2 = sessionStorage.getItem("protector_name2");
 	 		data.medical_institution = sessionStorage.getItem("medical_institution");
 	 		data.protector_phone1 = sessionStorage.getItem("protector_phone1");
 	 		data.protector_phone2 = sessionStorage.getItem("protector_phone2");
 	 		data.protector_phone3 = sessionStorage.getItem("protector_phone3");
 	 		data.protector_phone4 = sessionStorage.getItem("protector_phone4");
 	 		data.protector_phone5 = sessionStorage.getItem("protector_phone5");
 	 		data.protector_phone6 = sessionStorage.getItem("protector_phone6");
 	 		data.protector_relationship1 = sessionStorage.getItem("protector_relationship1");
 	 		data.protector_relationship2 = sessionStorage.getItem("protector_relationship2");
 	 		data.contact_time1 = sessionStorage.getItem("contact_time1");
 	 		data.contact_time2 = sessionStorage.getItem("contact_time2");
 	 		data.contact_time3 = sessionStorage.getItem("contact_time3");
 	 		data.contact_time4 = sessionStorage.getItem("contact_time4");
 	 		data.firstaid_termyesno = sessionStorage.getItem("firstaid_termyesno");
 	 		 
 	 		console.log(sessionStorage);
 	 		console.log(JSON.stringify(data));
 			
 	 		$.ajax({
				 url : "iusersJoinDone.do",
				 type : "post",
				 data : JSON.stringify(data),
				 dataType: "json", //받는 값의 종류 지정
				 contentType : "application/json; charset=utf-8",
				 success : function(result){
					 console.log("전송성공" + result);						
				 }, 
				 error: function(request, status, errorData){
					console.log("실패");
					console.log("error code : " + request.status
								+ "\nMessage : " + request.responseText
								+ "\nError : " + errorData);
					}
			 });  
 			
 			//$("#join_form").submit();
 		  	location.href = "iusersJoinDone2.do";
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
                    <h1 data-font="secondary" class="article_title">${firstaid.user_id}님의 정보변경</h1><!-- 
                    <p class="article_desc">동의하지 않을 경우 이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.</p> -->
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
		
        	<table class="jt_board_list30" id="family_list">
            <caption>응급처치 동의서 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="">아동성명</th>
                    <th scope="col" width="10%">성별</th>
                    <th scope="col" class="">생년월일</th>
                    <th scope="col" width="10%">혈액형</th>
                    <th scope="col" width="40%">특이사항<br/>(기존병력, 부작용 약물 등)</th>
                </tr>
            </thead>

            <tbody>
                  
             </tbody>
        </table>
       
        	<!--  응급처치 동의서 조회 끝 ====================================================================================== -->
        	
        		<!--  응급처치 절차 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">응급처치 절차</span>
					<span data-font="secondary" class="thema_list_album">1.사고 발생시 가장 먼저 보호자에게 연락합니다.</span>
				</h5>
			<form class="join-form" id="join_form" action="iusersJoinDone.do" name="form" method="post" >
			
        	<table class="jt_board_list30" id="value">
            <caption>응급처치 절차 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="">보호자</th>
                    <th scope="col" class="">시간/기간</th>
                    <th scope="col" class="">전화번호</th>
                </tr>
            </thead>
            <tbody>
                  <tr class="js_full_click  jq_click click_a">
                    <td  rowspan="2">보호자 1 과는</td>
                    <td>
                    	<select id="time1" name="time1" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="time2" name="time2" class="browser-default" style="width:20%; height:2rem; display: inherit;">
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
					         <input id="protector_phone1" type="text" class="validate" style="width:50%; height:2rem;" value="${firstaid.protector_phone1 }">					        	
					    </label>
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>
                    <select id="time3" name="time3" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="time4" name="time4" class="browser-default" style="width:20%; height:2rem; display: inherit;">
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
					         <input id="protector_phone2" type="text" class="validate" style="width:50%; height:2rem;" value="${firstaid.protector_phone2}">			
					    </label> 
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td  rowspan="2">보호자 2   와는      
                    </td>
                    <td>
                    	<select id="time5" name="time5" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="time6"  name="time6" class="browser-default" style="width:20%; height:2rem; display: inherit;">
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
					         <input id="protector_phone3" type="text" class="validate" style="width:50%; height:2rem;">			
					    </label>
					    로 연락합니다.</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>
                    <select id="time7" name="time7" class="browser-default" style="width:20%; height:2rem; display: inherit;">
								<c:set var="n" value="0" />								
								<c:forEach begin="0" end="23">								
								<option value="" >${n }</option>								
								<c:set var="n" value="${n+1}" />								
								</c:forEach>								
								</select>
						<span>시 ~</span>
						<select id="time8" name="time8" class="browser-default" style="width:20%; height:2rem; display: inherit;">
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
					         <input id="protector_phone4" type="text" class="validate" style="width:50%; height:2rem;">			
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
					         <input id="protector_name1" type="text" class="validate" style="width:40%; height:2rem;">					        
					    </label>
                    는
                    </td>
                    <td>
                    	<label>       	 
					         <input id="protector_phone5" type="text" class="validate" style="width:50%; height:2rem;">					        
					    </label>
					    로 연락할 수 있습니다.
                    </td>
                    <td>
                    아동과의 관계는
                    	<label>       	 
					         <input id="protector_relationship1" type="text" class="validate" style="width:30%; height:2rem;">					        
					    </label>
					</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td>②  
                    	<label>       	 
					         <input id="protector_name2" type="text" class="validate" style="width:40%; height:2rem;">					        
					    </label>
                    는
                    </td>
                    <td>
                    	<label>       	 
					         <input id="protector_phone6" type="text" class="validate" style="width:50%; height:2rem;">					        
					    </label>
					    로 연락할 수 있습니다.
                    </td>
                    <td>
                    아동과의 관계는
                    	<label>       	 
					         <input id="protector_relationship2" type="text" class="validate" style="width:30%; height:2rem;">					        
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
				          <input placeholder="해당없음" id="medical_institution" type="text" class="validate" value="">
				          <label for="first_name">보호자 지정 의료기관 : </label>
				        </div>        
				      </div>
        	<!-- 응급처치 절차3 끝 ====================================================================================== -->
		        	<p>
				      <label>
				        <input id="firstaid_termyesno" name="firstaid_termyesno" type="checkbox" value="Y" class="filled-in" />
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
						<a href="#" id="btnCancel"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> 
					<span>
						<!-- tg-text=terms_button_agree -->
						<a href="#" id="nextBtn7" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a>
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

