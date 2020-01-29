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

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
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
<!-- -->
#pwCtn{
position: absolute;
top: 209px;
left: 170px;
}
/* content */
.join_content44 {padding: 72px 0 50px;position: relative;}
.join_content44:before, .join_content44:after {content: '';display: block;width: 100%;height: 5px;position: absolute;left: 0;border-radius: 25px;overflow: hidden;}
.join_content44:before {top: 0;background-color: #f07e23; height:53px;border-radius: 3px 3px 0 0;}
.join_content44:after {bottom: 0;background-color: #222;}
.join_content44 > p {font-size: 16px;font-weight: 400;line-height: 1.75;letter-spacing: -0.025em;color: #666;}

.join_content44.secondary {padding-bottom: 0;}
.join_content44.secondary:after {display: none;}
</style>
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
<script type="text/javascript">
$(document).ready(function(){
	    $('.modal').modal();
	  });

</script>
<script type="text/javascript">
/* function popupOpen(){

	var popUrl = "${pageContext.request.contextPath}/iusers/iusersChangePwPage.do";	//팝업창에 출력될 페이지 URL

	var popOption = "width=370, height=360, resizable=no, scrollbars=no, status=no;";    //팝업창 옵션(optoin)

		window.open(popUrl,"",popOption);
	} 	 */
	
	  var pwFlag = false;
	  $(document).ready(function(){
		
		  
	        defaultScript();
	        
	        $("#user_pwd").blur(function() {
	            pwFlag = false;
	            checkPswd1();
	        }).keyup(function(event) {
	            checkShiftUp(event);
	        }).keypress(function(event) {
	            checkCapslock(event);
	        }).keydown(function(event) {
	            checkShiftDown(event);
	        });
	        
	        $("#user_pwd2").blur(function() {
	            pwFlag = false;
	            checkPswd2();
	        }).keyup(function(event) {
	            checkShiftUp(event);
	        }).keypress(function(event) {
	            checkCapslock(event);
	        }).keydown(function(event) {
	            checkShiftDown(event);
	        });

	        $("#user_pwd3").blur(function() {
	            checkPswd3();
	        }).keyup(function(event) {
	            checkShiftUp(event);
	        }).keypress(function(event) {
	            checkCapslock2(event);
	        }).keydown(function(event) {
	            checkShiftDown(event);
	        });
	        
	 }
  
	  
	 function checkPswd1() {
	        if(pwFlag) return true;

	        var pw = $("#user_pwd").val();
	        var oMsg = $("#pwdMsg");
	        var oInput = $("#user_pwd");

	        if (pw == "") {
	            showErrorMsg(oMsg,"필수 정보입니다.");
	            setFocusToInputObject(oInput);
	            return false;
	        }
	        if (isValidPasswd(pw) != true) {
	            showErrorMsg(oMsg,"6~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
	            setFocusToInputObject(oInput);
	            return false;
	        }

	        pwFlag = false;
	        idFlag = false;
	    	 $.ajax({
	    		 type: "post",
	    		 url : "iusersIdCheck.do",
	    		 data : { user_id : $("#user_id").val() },
	    		 success : function(data){
	    			 var result = data;
	    			 
	    			 if(result == "ok"){
	    				 if(event == "first"){
	    					 showSuccessMsg(oMsg, "비밀번호 맞음");
	    				 } else {
	    					 hideMsg(oMsg);
	    				 }
	    				 idFlag = true;
	    			 } else {
	    				 showErrorMsg(oMsg, ,"8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
	                     setFocusToInputObject(oInput);
	    			 }
	    		 }
	    	 });// end ajax
			return true;
	    }// end checkId
	       /*  $.ajax({
	            type:"GET",
	            url: "/user2/joinAjax.nhn?m=checkPswd&id=" + escape(encodeURIComponent(id)) + "&pw=" + escape(encodeURIComponent(pw)) ,
	            success : function(data) {
	                var result = data.substr(4);
	                if (result == 1) {
	                    showPasswd1ImgByStep(oImg, oSpan, 1);
	                    showErrorMsg(oMsg,"8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
	                    setFocusToInputObject(oInput);
	                    return false;
	                } else if (result == 2) {
	                    showPasswd1ImgByStep(oImg, oSpan, 2);
	                    showErrorMsg(oMsg,"8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
	                    setFocusToInputObject(oInput);
	                } else if (result == 3) {
	                    showPasswd1ImgByStep(oImg, oSpan, 3);
	                    oMsg.hide();
	                } else if (result == 4) {
	                    showPasswd1ImgByStep(oImg, oSpan, 4);
	                    oMsg.hide();
	                } else {
	                    showPasswd1ImgByStep(oImg, oSpan, 0);
	                    oMsg.hide();
	                }
	                pwFlag = true;
	                createRsaKey();
	            }
	        });
	        return true;
	    } */
		
	    // 비밀번호
	    function checkPswd2(){
	    	if(pwFlag) return true;
	    	
	    	var pw = $("#user_pwd2").val();/* 
	        var oImg = $("#pswImg");
	        var oSpan = $("#pswSpan"); */
	    	var oMsg = $("#pwdMsg2");
	    	var oInput = $("#user_pwd2");
	    	
	    	if(pw == ""){
	    		showErrorMsg(oMsg,"필수 정보입니다.");
	            setFocusToInputObject(oInput);
	            return false;
	    	}
	    	
	    	if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,12}$/.test(pw)){          
	    		showErrorMsg(oMsg,"숫자+영문자+특수문자 조합으로 6자리 이상 사용해야 합니다.");
	            setFocusToInputObject(oInput);
	            return false;
	        }    
	        var checkNumber = pw.search(/[0-9]/g);
	        var checkEnglish = pw.search(/[a-z]/ig);
	        if(checkNumber <0 || checkEnglish <0){
	        	showErrorMsg(oMsg,"숫자와 영문자를 혼용하여야 합니다.");
	            setFocusToInputObject(oInput);
	            return false;
	        }
	        if(/(\w)\1\1\1/.test(pw)){
	        	showErrorMsg(oMsg,"같은 문자를 4번 이상 사용하실 수 없습니다.");
	            setFocusToInputObject(oInput);
	            return false;
	        }
	            
	        if(pw.search(id) > -1){
	        	showErrorMsg(oMsg,"비밀번호에 아이디가 포함되었습니다.");
	            setFocusToInputObject(oInput);
	            /* alert("비밀번호에 아이디가 포함되었습니다.");
	            $('#password').val('').focus(); */
	            return false;
	        }
	        
	    	hideMsg(oMsg);
	    	return true;
	    	
	    }// end checkPswd1()
	 
	 
	    // 비밀번호 재확인
	    function checkPswd2(){
	    	var pwd1 = $("#user_pwd");
	    	var pwd2 = $("#user_pwd2");
	    	var oMsg = $("#pwd2Msg");
	    	var oInput = $("#user_pwd2");
	    	
	    	if( pwd2.val() == ""){
	    		showErrorMsg(oMsg,"필수 정보입니다.");
	            setFocusToInputObject(oInput);
	            return false;
	    	}// end pwd2가 빈값
	    	
	    	if(pwd1.val() != pwd2.val()){
	    		showErrorMsg(oMsg,"비밀번호가 일치하지 않습니다. 다시 입력 해주세요");
	            setFocusToInputObject(oInput);
	            return false;
	    	} else {
	    		/*showPasswd2ImgByDiff(oImg, true);
	            oBlind.html("일치합니다");*/
	    		 hideMsg(oMsg);
	             return true;
	    	}// 비번같은 지 확인
	    	return true;
	    }// end checkPswd2
	
	    function checkSpace(str) {
	        if (str.search(/\s/) != -1) {
	            return true;
	        } else {
	            return false;
	        }
	    }

	    function isValidPasswd(str) {
	        var cnt = 0;
	        if (str == "") {
	            return false;
	        }

	        /* check whether input value is included space or not */
	        var retVal = checkSpace(str);
	        if (retVal) {
	            return false;
	        }
	        if (str.length < 8) {
	            return false;
	        }
	        for (var i = 0; i < str.length; ++i) {
	            if (str.charAt(0) == str.substring(i, i + 1))
	                ++cnt;
	        }
	        if (cnt == str.length) {
	            return false;
	        }

	        var isPW = /^[A-Za-z0-9`\-=\\\[\];',\./~!@#\$%\^&\*\(\)_\+|\{\}:"<>\?]{8,16}$/;
	        if (!isPW.test(str)) {
	            return false;
	        }

	        return true;
	    }

	    var isShift = false;
	    function checkShiftUp(e) {
	        if (e.which && e.which == 16) {
	            isShift = false;
	        }
	    }

	    function checkShiftDown(e) {
	        if (e.which && e.which == 16) {
	            isShift = true;
	        }
	    }

	    function checkCapslock(e) {
	        var myKeyCode = 0;
	        var myShiftKey = false;
	        if (window.event) { // IE
	            myKeyCode = e.keyCode;
	            myShiftKey = e.shiftKey;
	        } else if (e.which) { // netscape ff opera
	            myKeyCode = e.which;
	            myShiftKey = isShift;
	        }

	        var oMsg = $("#pswd1Msg");
	        if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
	            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
	        } else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
	            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
	        } else {
	            hideMsg(oMsg);
	        }
	    }

	    function checkCapslock2(e) {
	        var myKeyCode = 0;
	        var myShiftKey = false;
	        if (window.event) { // IE
	            myKeyCode = e.keyCode;
	            myShiftKey = e.shiftKey;
	        } else if (e.which) { // netscape ff opera
	            myKeyCode = e.which;
	            myShiftKey = isShift;
	        }

	        var oMsg = $("#pswd2Msg");
	        if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
	            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
	        } else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
	            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
	        } else {
	            hideMsg(oMsg);
	        }
	    }

	    function defaultScript() {
	        $('.ps_box').click(function() {
	            $(this).children('input').focus();
	            $(this).addClass('focus');
	        }).focusout(function() {
	            var welInputText = $('.ps_box');
	            welInputText.removeClass('focus');
	        });
	    }

	    function submitClose() {
	        submitFlag = true;
	        $("#btnJoin").attr("disabled",true);
	    }

	    function submitOpen() {
	        $("#btnJoin").attr("disabled",false);
	    }

	    function setFocusToInputObject(obj) {
	        if(submitFlag) {
	            submitFlag = false;
	            obj.focus();
	        }
	    }

	    function showErrorMsg(obj, msg) {
	        obj.attr("class", "error_next_box");
	        obj.html(msg);
	        obj.show();
	    }

	    function showSuccessMsg(obj, msg) {
	        obj.attr("class", "error_next_box green");
	        obj.html(msg);
	        obj.show();
	    }

	    function showAuthDefaultBox(oBox, oCode) {
	        oBox.attr("class", "ps_box");
	        oCode.html("");
	        oCode.hide();
	    }

	    function showAuthSuccessBox(oBox, oCode, msg) {
	        oBox.attr("class", "ps_box accord");
	        oCode.html(msg);
	        oCode.show();
	    }

	    function showAuthErrorBox(oBox, oCode, msg) {
	        oBox.attr("class", "ps_box discord");
	        oCode.html(msg);
	        oCode.show();
	    }

	    function hideMsg(obj) {
	        obj.hide();
	    }
</script>
</head>
<body>
<c:import url="../iusersHeader.jsp" />


<!--  main =================================================================== -->
	<main id="main" class="main_container">


	<div id="main_container_inner" class="notice_list">

		<div class="article">
			<div class="article_header">
				<div class="wrap_narrow">
					<h1 data-font="secondary" class="article_title">${iusers.user_name}님의 정보변경</h1>
						
				</div><!-- .wrap_narrow -->
			</div><!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
			<div class="join_content">			
			
					<div class="jt_board_list_wrap">	
					
					<!--  가족정보입력 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">기본정보 입력</span>	
					<span class="star"><span class="red-text">*</span> 필수 입력 사항입니다.</span>
				</h5>
				
        	<!-- 비밀번호 수정 -->
				<!-- Modal Trigger -->
					  <a id="pwCtn" class="waves-effect waves-light btn orange darken-3 modal-trigger" href="#modal1">비밀번호수정</a>
					
					  <!-- Modal Structure -->
					  <div id="modal1" class="modal">
					    <div class="modal-content">
					    	<div class="join_content44">	
								
								<!--  가족정보입력 시작 ====================================================================================== -->
									<h5>
										<span class="join_s">비밀번호 변경</span>	
										<span class="star">숫자+영문자+특수문자 조합으로 6자리 이상 사용해야 합니다.</span>
									</h5>			     	

					        <table class="jt_board_list30">
					            <caption>비밀번호 변경</caption>
					            <tbody>
					                 <tr class="js_full_click  jq_click click_a">
					                   <th class="type" scope="col">현재 비밀번호</th>
					                    <td class="" colspan="2">
					                    	<input type="password" name="user_pwd" id="user_pwd" class="validate" title="현재 비밀번호 입력" aria-describedby="pwdMsg" maxlength="12" required/>											
					                    </td> 
					                     <span class="error_next_box" id="pwd1Msg" style="display:none" aria-live="assertive"></span>                   
					                </tr>
					                <tr class="js_full_click  jq_click click_a">
					                   <th class="type" scope="col">새 비밀번호</th>
					                    <td class="" colspan="2">
					                    	<input type="password" name="user_pwd" id="user_pwd" class="validate" title="새 비밀번호 입력" aria-describedby="pwdMsg" maxlength="12" required/>
											 <span class="error_next_box" id="pwd2Msg" style="display:none" aria-live="assertive"></span>
					                    </td>                    
					                </tr>
					                 <tr class="js_full_click  jq_click click_a">
					                   <th class="type" scope="col">새 비밀번호확인</th>
					                    <td class="" colspan="2">
					                    	<input type="password" name="user_pwd2" id="user_pwd2" class="validate" title="새 비밀번호 재확인 입력" aria-describedby="pwd2Blind" maxlength="12" required/>
										
					                    </td>                    
					                </tr>              
					            </tbody>
					        </table>
					        </div>
					    </div>
					    <div class="modal-footer"  style="width:97%;">
      					  <a href="#!" class="modal-action modal-close btn orange darken-1">수정</a> 
      					  <a href="#!" class="modal-action modal-close btn deep-orange darken-2">취소</a> 
					    </div>
					  </div>
			 <form class="join-form" id="join_form" action="" name="form" method="post" onsubmit="return checkValidate1();">
        	<table class="jt_board_list30">
            <caption>기본정보 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">이용자명<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">${iusers.user_name}</td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">아이디<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">  ${iusers.user_id}</td>                        
                </tr>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">이용자구분<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">
                       	 <select id="limit_code" name="limit_code" class="browser-default" style="height:2rem; padding:2px; width:30%;">
                       	 <!-- 서비스 사용자 구분 -->
                       	 	<option value="서비스이용자" ${iusers.limit_code eq "LG001" ? "selected" : ""} disabled>서비스이용자</option>
                       	 	<option value="1개월이용제한" ${iusers.limit_code eq "LG002" ? "selected" : ""} disabled>1개월이용제한</option>
                       		<option value="1개월이용제한" ${iusers.limit_code eq "LG003" ? "selected" : ""} disabled>6개월이용제한</option>  	  						    
					  	</select> 
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">비밀번호 변경<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;height: 45px;">                    	
                    	 <span>
                    							
							<!-- <a href="javascript:popupOpen();" class="waves-effect waves-light btn orange darken-3" role="button">
							 비밀번호수정 </a> 		 -->
						</span>
				
					</td>                    
                </tr>
              
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">집전화</th>
                    <td class="" colspan="5" style="text-align:left;">
                    	<input type="text" name="user_tel" id="user_tel" class="validate" style="width:30%;"  value="${iusers.user_tel}" >
                    </td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">휴대폰번호<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">
                    	<input type="text" name="user_phone" id="user_phone" class="validate" style="width:30%;" value="${iusers.user_phone}">
                    	<span class="star" style="font-size:12px;">* 비상시 연락가능한 연락처를 입력하세요.</span>
                    </td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">이메일주소</th>
                    <td class="" colspan="5" style="text-align:left;">
                    <input type="email" name="user_email" id="user_email" title="이메일" style="width:30%;" class="validate" 
                    value="${iusers.user_email}"/>						
					</td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">집주소<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">
                    	${fn:substringAfter(iusers.user_address, ",")}                    	                    	
                    	<span class="star" style="font-size:12px;">* 주소를 수정하고자 하는 분은 지역센터를 통해 수정하시기 바랍니다.</span>
					</td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">서비스제공기관<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;"><!-- 서비스센터, 나중에 iusers에서 테이블로 만들기 바람 -->
                    	<select id="family_relationship" name="family_relationship" class="browser-default" style="height:2rem; padding:2px; width:30%;">
                    		<!-- 서비스 센터 사용자 구분 -->
                       	 		<option value="" ${iusers.office_code eq "SC0001" ? "selected" : ""} disabled>강남구건강가정지원센터</option>                       	 
                       	 		<option value="" ${iusers.office_code eq "SC0079" ? "selected" : ""} disabled>성남시건강가정지원센터</option>
                       	 		<option value="" ${iusers.office_code eq "SC0061" ? "selected" : ""} disabled>배재대학교가족지원센터</option>
					  	</select> 	
                    </td>                    
                </tr>
                
            </tbody>
        </table><!-- .jt_board_list30 -->
        	<!--  가족정보 입력 끝 ====================================================================================== -->  
        
      
			<!--  가정현황 조회 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">가정현황</span>
					<span class="star">'애완동물여부' 이외의 항목 수정은 관할 서비스제공기관으로 문의하시기 바랍니다.</span>
				</h5>
				
		<table class="jt_board_list30">
            <caption>가정현황 목록</caption>
            <tbody>
                    <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">CCTV여부</th>
                    <td class="">
                    	<select name="cctv_alter" id="cctv_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.cctv_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.cctv_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">애완동물여부<span class="red-text">*</span></th>
                    <td class="">
                    	<select name="pet_alter" id="pet_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.pet_alter eq "Y" ? "selected" : ""}>예</option>
						    <option value="N" ${iusers.pet_alter eq "N" ? "selected" : ""}>아니오</option>
					  	</select>
                    </td>
                    <th class="type">다문화가정여부</th>
                    <td class="date">
                    	<select name="multicultural_alter" id="multicultural_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.multicultural_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.multicultural_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">맞벌이여부</th>
                    <td class="">
                    	<select name="latchkey_alter" id="latchkey_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.latchkey_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.latchkey_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">다자녀가구여부</th>
                    <td class="">
                    	<select name="multichild_alter" id="multichild_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.multichild_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.multichild_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">부자가정여부</th>
                    <td class="date">
                    	<select name="father_alter" id="father_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.father_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.father_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">모자가정여부</th>
                    <td class="">
                    	<select name="mather_alter" id="mather_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.mather_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.mather_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">조손가정여부</th>
                    <td class="">
                    	<select name="grand_alter" id="grand_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.grand_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.grand_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">기초생활수급 여부</th>
                    <td class="date">
                    	<select name="basiclife_alter" id="basiclife_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.basiclife_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.basiclife_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">의료급여가구 여부</th>
                    <td class="">
                    	<select name="medical_alter" id="medical_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.medical_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.medical_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">취업한부모 여부</th>
                    <td class="">
                    	<select name="working_alter" id="working_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.working_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.working_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">장애부모 여부</th>
                    <td class="date">
                    	<select name="disabled_alter" id="disabled_alter" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.disabled_alter eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.disabled_alter eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">차상위본인부담경감대상자 여부</th>
                    <td class="">
                    	<select name="second_class" id="second_class" class="browser-default" style="height:2rem; padding:2px;">
						    <option value="Y" ${iusers.second_class eq "Y" ? "selected" : ""} disabled>예</option>
						    <option value="N" ${iusers.second_class eq "N" ? "selected" : ""} disabled>아니오</option>
					  	</select>
                    </td>
                    <th class="type">기타양육부담</th>
                    <td class="">
                    	<select name="etc_rearing" id="etc_rearing" class="browser-default" style="height:2rem; padding:2px;">
                    		<option value="" ${ empty iusers.etc_rearing ? "selected" : ""}>선택</option>
						    <option value="Y" ${iusers.etc_rearing eq "Y" ? "selected" : ""}>예</option>
						    <option value="N" ${iusers.etc_rearing eq "N" ? "selected" : ""}>아니오</option>
					  	</select>
                    </td>
                    <th class="type"></th>
                    <td class="date"></td>
                </tr>               
            </tbody>
        </table><!-- .jt_board_list30 -->
        	<!--  가정현황 조회 끝 ====================================================================================== -->
        	
        	<!--  이용사항 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">이용사항</span>
				</h5>
        	
        	<table class="jt_board_list30">
            <caption>이용사항 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">현장실습 사전동의<span class="red-text">*</span></th>
                    <td class="" colspan="5">
                    
                    	<label>
					        <input name="place_agree" value="Y" class="with-gap" type="radio" ${iusers.place_agree eq "Y" ? "checked" : ""}/>
					        <span>동의합니다</span>		
					     </label>
					     
					     <label>			     
					        <input name="place_agree" value="N" class="with-gap" type="radio" ${iusers.place_agree eq "N" ? "checked" : ""}/>
					        <span>동의하지 않습니다</span>					       
					     </label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">이용자 서약서 동의<span class="red-text">*</span></th>
                    <td class="" colspan="5">
                    	<label>
					        <input name="user_comply" value="Y" class="with-gap" type="radio" ${iusers.user_comply eq "Y" ? "checked" : ""} >
					        <span>동의합니다</span>		
					     </label>
					     <label>			     
					        <input name="user_comply" value="N" class="with-gap" type="radio" ${iusers.user_comply eq "N" ? "checked" : ""}>
					        <span>동의하지 않습니다</span>					       
					     </label>
                    </td>                        
                </tr>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">응급처치동의서 제출<span class="red-text">*</span></th>
                    <td class="" colspan="1">
                    	<label>
					        <input name="firstaid_termyesno"  value="Y" class="with-gap" type="radio" ${iusers.firstaid_termyesno eq "Y" ? "checked" : ""}>
					        <span>제출</span>		
					     </label>
					
					     <label>			     
					        <input name="firstaid_termyesno" value="N" class="with-gap" type="radio" ${iusers.firstaid_termyesno eq "N" ? "checked" : ""}>
					        <span>미제출</span>					       
					     </label>
                    </td>  
                    <td><a href="<c:url value='/iusers/moveFirstaidUpPage.do'/>" id="upFirstBtn" class="waves-effect waves-light btn orange darken-3" role="button" style="width:100%;">수정</a></td>
                    <td colspan="3"></td>                      
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">서비스 신청경로</th>
                    <td class="" colspan="5">
                    	<select id="reqst_cours" name="reqst_cours" class="browser-default" style="height:2rem; padding:2px; width:12rem;">                    	
						    <option value="" >선택</option>
						    <option value="주변권유" ${iusers.reqst_cours eq "주변권유" ? "selected" : ""}>주변권유</option>
						    <option value="신문방송" ${iusers.reqst_cours eq "신문방송" ? "selected" : ""}>신문방송</option>
						    <option value="생활지정보"  ${iusers.reqst_cours eq "생활정보지" ? "selected" : ""}>생활정보지</option>
						    <option value="전단,포스터" ${iusers.reqst_cours eq "전단,포스터" ? "selected" : ""}>전단,포스터</option>
						    <option value="홈페이지" ${iusers.reqst_cours eq "홈페이지" ? "selected" : ""}>홈페이지</option>
						    <option value="기타" ${iusers.reqst_cours eq "기타" ? "selected" : ""}>기타</option>
					  	</select>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">카드결제 승인/취소 SMS 수신여부</th>
                    <td class="" colspan="5">
                    	<label>
					        <input name="card_sms" value="Y" class="with-gap" type="radio" ${iuses.card_sms eq "Y" ? "selected" : ""}>
					        <span>동의합니다</span>					       
					     </label>
					     <label>
					        <input name="card_sms" value="N" class="with-gap" type="radio" ${iuses.card_sms eq "N" ? "selected" : ""}>
					        <span>동의하지 않습니다</span>					       
					     </label>
                    </td>                    
                </tr>
            </tbody>
        
        </table><!-- .jt_board_list30 -->
        
        <!-- ========================================================================================== -->
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
						    <option value="" ${empty iusers.license_alter ? "selected" : ""}>선택</option>
						    <option value="보육관련소지자" ${iusers.license_alter eq "보육관련소지자" ? "selected" : ""}>보육관련자격소지자</option>
						    <option value="양육경험자" ${iusers.license_alter eq "양육경험자" ? "selected" : ""}>양육경험자</option>
						    <option value="기타" ${iusers.license_alter eq "기타" ? "selected" : ""}>기타</option>
					  	</select>
                    </td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                   <th class="type" scope="col">서비스제공장소</th>
                    <td class="" colspan="5">
                    	<select name="service_place" id="service_place" class="browser-default" style="height:2rem; padding:2px; width:12rem;">
						    <option value="" disabled="" selected="" ${empty iusers.service_place ? "selected" : ""}>선택</option>
						    <option value="이용자가정" ${iusers.service_place eq "이용자가정" ? "selected" : ""}>이용자가정</option>
						    <option value="돌보미가정" ${iusers.service_place eq "돌보미가정" ? "selected" : ""}>돌보미가정</option>
					  	</select>
                    </td>                    
                </tr>
                               
            </tbody>
        </table>
          </form>
        <!-- ====================================================================================================== -->
        <!-- ========================================================================================== -->
        <h5>
        <span class="join_s">결제카드정보</span>
        <span style="float:right;">
			<a href="#" id="btnCancel4" class="waves-effect waves-right btn orange darken-3" role="button">카드 선택</a>
		</span>
        </h5>
        
        <table class="jt_board_list30">
            <caption>결제카드정보</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                   <th class="type" scope="col">카드구분</th>
                    <td class="" ></td>
                    <th class="type" scope="col">카드사명</th>
                    <td class=""></td>
                    <th class="type" scope="col">카드번호</th>
                    <td class="" ></td>                   
                </tr>                
            </tbody>
        </table>
        <!-- ====================================================================================================== -->
         <!-- ========================================================================================== -->
        <h5>
        <span class="join_s">환불계좌정보</span>
        <span style="float:right;">
			<a href="#" id="btnCancel4" class="waves-effect waves-right btn orange darken-3" role="button">계좌등록</a>
		</span>
        </h5>
        
        <table class="jt_board_list30">
            <caption>환불계좌정보</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                   <th class="type" scope="col">은행</th>
                    <td class="" ></td>
                    <th class="type" scope="col">계좌번호</th>
                    <td class=""></td>
                    <th class="type" scope="col">예금주</th>
                    <td class="" ></td>                   
                </tr>                
            </tbody>
        </table>
        <!-- ====================================================================================================== -->
             
       
      </div><!-- jt_board_list_wrap-->

      </div><!--  join_content-->       
      <!-- ===================================================================================================== -->
      <!-- 다음 버튼 -->
      	  <div class="row">        			
           		<div class="btn_area double" align="center" style="margin-top:10px;">
					<span>
						<a href="#" id="btnCancel4" class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> 
					<span>
						<a href="#" id="nextBtn5" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">저장</a>
					</span>
				</div>
			  </div> <!--  row -->
	 <!-- ========================================================================================================= -->
		<!--================================================================================================================-->

	</div>
			</div><!-- .article_body -->
		</div><!-- .article -->

	</div><!-- #main_container_inner -->
	 </main>	<!-- .main_container -->
  
 
	 
	 
	 
	 
	<!-- footer ============================================================== -->
	<c:import url="../../common/footer.jsp" />


	
</body>
</html>
