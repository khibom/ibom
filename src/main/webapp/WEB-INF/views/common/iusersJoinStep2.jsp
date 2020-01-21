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
.input-field div.error, .input-field div.error1, .input-field div.error2, .input-field div.error3, .input-field div.error4, .input-field div.error5
{    position: relative;    top: -1rem;    left: 3rem;
    font-size: 0.8rem;    color:#FF4081;    -webkit-transform: translateY(0%);    -ms-transform: translateY(0%);    -o-transform: translateY(0%);    transform: translateY(0%);}
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
 <!-- 주소 추가 부분 시작 -->
 <script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("${pageContext.servletContext.contextPath}/common/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}


function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		document.form.roadFullAddr.value = roadFullAddr;
		document.form.roadAddrPart1.value = roadAddrPart1;
		document.form.roadAddrPart2.value = roadAddrPart2;
		document.form.addrDetail.value = addrDetail;
		document.form.engAddr.value = engAddr;
		document.form.jibunAddr.value = jibunAddr;
		document.form.zipNo.value = zipNo;
		document.form.admCd.value = admCd;
		document.form.rnMgtSn.value = rnMgtSn;
		document.form.bdMgtSn.value = bdMgtSn;
		document.form.detBdNmList.value = detBdNmList;
		/** 2017년 2월 추가제공 **/
		document.form.bdNm.value = bdNm;
		document.form.bdKdcd.value = bdKdcd;
		document.form.siNm.value = siNm;
		document.form.sggNm.value = sggNm;
		document.form.emdNm.value = emdNm;
		document.form.liNm.value = liNm;
		document.form.rn.value = rn;
		document.form.udrtYn.value = udrtYn;
		document.form.buldMnnm.value = buldMnnm;
		document.form.buldSlno.value = buldSlno;
		document.form.mtYn.value = mtYn;
		document.form.lnbrMnnm.value = lnbrMnnm;
		document.form.lnbrSlno.value = lnbrSlno;
		/** 2017년 3월 추가제공 **/
		document.form.emdNo.value = emdNo;
		
}

</script>
 <!--  주소 추가 부분 끝 -->
<!--  네이버 추가 js -->
<script type="text/javascript" src="/ibom/resources/js/clickcr.js"></script>
<script type="text/javascript">
//region define, setter
var idFlag = false;
var pwFlag = false;
var authFlag = false; // 인증번호
var jusoFlag = false; // 주소
var submitFlag = false;

$(document).ready(function(){
	defaultScript();
	
	// 주민번호(생년월일)
	if($("#resident_no1").val() != ""){
		checkResident();
	}
	
	// region unreal id
	$("#user_id").blur(function(){
		idFlag = false;
		checkId("first");
	}); // end user_id
	
	// 비밀번호
	$("#user_pwd").blur(function(){
		pwFlag = fasle;
		checkPswd1();
	}).keyup(function(event){
		checkShiftUp(event);
	}). keypress(function(event){
		checkCapslock(event);
	}).keydown(function(event){
		checkShiftDown(event);
	}); // end user_pwd
	
	// 비밀번호 재확인
	$("#user_pwd2").blur(function(){
		checkPswd2();
	}).keyup(function(event){
		checkShiftUp(event);
	}).keypress(function(event){
		checkCapslock2(event);
	}).keydown(function(event){
		checkShiftDown(event);
	}); // end user_pwd2
	
	//이름
	$("#user_name").blur(function(){
		checkName();
	});
	
	// 주민번호(생년월일)
	$("#resident_no1").blur(function(){
		checkResidentNo();  
	});
	
	// 주민번호(뒷자리)
	$("#resident_no2").blur(function(){
		checkResidentNo();
	});
	
	// 주민번호 동의 체크(미처리)
	
	// 이메일
	$("#user_email").blur(function(){
		checkEmail();
	}); // end user_email
	
	// 주소
	
	// 핸드폰번호
	$("#user_phone").blur(function(){
		checkPhone();
	});
	
	// 인증번호 보내기
	$("#sendSms").click(function(){
		sendSmsButton();
		return false;
	});
	
	// 인증번호
	$("#key").blur(function(){
		authFlag = false;
		checkAuth();
	});
	// endregion
	
	// 주민등록번호 동의서
	$("#agree4").click(function(){
		viewAgree4();
	}); // end agree4
	// 다시 살표보기 바람
	
	$("#nextBtn2").click(function(event){
		clickcr(this, 'sup.signup', '', '', event);
        submitClose();
        if( idFlag && pwFlag && authFlag) {
            mainSubmit();
        } else {
            setTimeout(function() {
                mainSubmit();
            }, 700);
        }
    });

}); //endregion

 //region mainSubmit
    function mainSubmit() { 

        if(idFlag && pwFlag && authFlag) {
            try {
                desk.f(function(a) {
                    $("#nid_kb2").val(a);
                    $("#join_form").submit();
                });
            } catch (e) {
                $("#nid_kb2").val("join v2 error: " + e.name + ", " + e.message);
                $("#join_form").submit();
            }
        } else {
            submitOpen();
            return false;
        }
    }// end mainsubmit 
	
    // input 값 검사    
    function checkUnrealInput() {
        if (checkId('join')
        		& checkPswd1()
        		& checkPswd2()
                & checkName()
                & checkResidentNo()
                & checkEmail()
                & checkAddress()
                & checkPhone()
                & checkKey()
                & checkAgree4()
        ) { 
            return true;
        } else {
            return false;
        }
    }
    
    // endregion
    
    //region unreal 가입
    function checkId(event){
    	if(idFlag) return true;
    	
    	var id = $("#user_id").val();
    	var oMsg = $("#idMsg");
    	var oInput = $("#user_id");
    	
    	 if ( id == "") {
             showErrorMsg(oMsg,"필수 정보입니다.");
             setFocusToInputObject(oInput);
             return false;
         }
    	 
    	 var isID = /^[a-z0-9_\-]{4-19}$/;
    	 if(!isID.test(id)){
    		 showErrorMsg(oMsg,"5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.");
             setFocusToInputObject(oInput);
             return false;
    	 }
    	 
    	 idFlag = false;
    	 $.ajax({
    		 type: "post",
    		 url : "iusersIdCheck.do",
    		 data : { user_id : $("#user_id").val() },
    		 success : function(data){
    			 var result = data;
    			 
    			 if(result == "ok"){
    				 if(event == "first"){
    					 showSuccessMsg(oMsg, "멋진 아이디네요!");
    				 } else {
    					 hideMsg(oMsg);
    				 }
    				 idFlag = true;
    			 } else {
    				 showErrorMsg(oMsg, "이미 사용중이거나 탈퇴한 아이디입니다.");
                     setFocusToInputObject(oInput);
    			 }
    		 }
    	 });// end ajax
		return true;
    }// end checkId
    
    // 비밀번호
    function checkPswd1(){
    	if(pwFlag) return true;
    	
    	var id = $("#user_id").val();
    	var pw = $("#user_pwd").val();
        var oImg = $("#pswImg");
        var oSpan = $("#pswSpan");
    	var oMsg = $("#pwdMsg");
    	var oInput = $("#user_pwd");
    	
    	if(pw == ""){
    		showErrorMsg(oMsg,"필수 정보입니다.");
            setFocusToInputObject(oInput);
            return false;
    	}
    	
    	if(isValidPasswd(pw) != true){
    		showPasswd1ImgByStep(oImg, oSpan, 1);
            showErrorMsg(oMsg,"8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.");
            setFocusToInputObject(oInput);
            return false;
    	} // end isValid
    	
    	/* pwFlag = false;
    	$.ajax({
    		
    	}); // end ajax */
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
    
    
    function checkName(){
    	var oMsg = $("#nameMsg");
    	var nonchar = /[^가-힣]/gi;
    	
    	var name = $("#user_name").val();
    	var oInput = $("#user_name");
    	if(name == ""){
    		showErrorMsg(oMsg, "필수 정보입니다.");
    		 setFocusToInputObject(oInput);
    		 return false;
    	}
    	if(name != "" && nonchar.test(name)){
    		showErrorMsg(oMsg, " 한글을 사용하세요. (영문, 특수기호, 공백 사용 불가)");
    		setFocusToInputObject(oInput);
    		return false;
    	}
    	
    	hideMsg(oMsg);
    	return true;
    }
    
    // 주민번호확인
    function checkResidentNo(){
    	var resident_no;
    	var no1 = $("#resident_no1").val();
    	var no2 = $("#resident_no2").val();
    	var oMsg = $("#resdient_noMsg");
    	
    	var ono1 = $("#resident_no1");
    	var ono2 = $("#resident_no2");
    	
    	if( no1 == "" && no2 == ""){
    		showErrorMsg(oMsg, "주민등록번호를 정확하게 입력하세요.");
    		setFocusToInputObject(ono1)
    		return false;
    	}
    	
    	if( no1 == ""){
    		showErrorMsg(oMsg, "주민등록번호(생년월일)를 정확하게 입력하세요.");
    		setFocusToInputObject(ono1);
    		return false;
    	}
    	if( no2 == ""){
    		showErrorMsg(oMsg, "주민등록번호 뒷 자리를 정확하게 입력하세요.");
    		setFocusToInputObject(ono2);
    		return false;
    	}
    	
    	var totalResident = "" + no1 + no2;
    	
    	var residentArr = new Array();
    	var sum = 0;
    	var plus = 2;
    	
    	// 배열에 주민등록번호 입력 후 유효값 확인하기 위해  sum에 저장
    	for(var i = 0; i < 12; i++){
    		residentArr[i] = totalResident.charAt(i);
    		if(i >= 0 && i <= 7){
    			sum += totalResident[i] * plus;
    			plus++;
    			if(i == 7)
    				plus = 2;
    		} else {
    			sum += totalResident[i] * plus;
    			plus++;
    		} 
    	}
    	// 주민등록번호 길이 확인하기
    	if(residentArr.length < 12){
    		/* var tag = "주민등록번호는 13자리입니다.";
    		$("#error2").html("<span style='color:#f37233'> " + tag + "</span>"); */
    		showErrorMsg(oMsg, "주민등록번호는 13자리입니다. 자리를 정확하게 입력하세요.");
    		setFocusToInputObject(ono1);
    		/*form.resident_no1.value= "";
    		form.resident_no2.value = "";
    		form.resident_no1.focus(); */
    		return false;
    	}
    	
    	// 주민등록번호가 유효한지 확인
    	var result = 11 - (sum % 11) % 10;
    	if (result != totalResident.charAt(12)){
    		// 주민등록번호가 유효하지 않은 경우
    		/* var tag = "유효하지 않은 주민등록번호 입니다.";
    		$("#error2").html("<span style='color:#f37233'> " + tag + "</span>"); */
    		showErrorMsg(oMsg, "주민등록번호를 정확하게 입력하세요.");
    		setFocusToInputObject(ono1);
    		form.resident_no1.value= "";
    		form.resident_no2.value = "";
    		return false;
    	}
    	hideMsg(oMsg);
    	return true;
    	
    }
    
    // 이메일
    function checkEmail(){
    	var email = $("#user_email").val();
    	var oMsg = $("#emailMsg");
    	
    	//필수가 아닐 경우
    	/* if(email = ""){
    		hideMsg(oMsg);
            return true;
    	} */
    	
    	 var isEmail = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        var isHan = /[ㄱ-ㅎ가-힣]/g;
        if (!isEmail.test(email) || isHan.test(email)) {
            showErrorMsg(oMsg,"이메일 주소를 다시 확인해주세요.");
            return false;
        }
        hideMsg(oMsg);
        return true;
    }// end 이메일
    
    // 핸드폰 번호
    function checkPhone(){
    	var phoneNo = $("#user_phone").val();
    	var oMsg = $("#phoneNoMsg");
    	var oInput = $("#user_phone");
    	
    	if(phoneNo == ""){
    		showErrorMsg(oMsg, "필수 정보입니다.");
    		setFocusToInputObject(oInput);
    		return false;
    	}
    	
    	hideMsg(oMsg);
    	return true;
    }
    
    function sendSmsButton(){
    	var phoneNo = $("#user_phone").val();
    	var oMsg = $("#phoneNoMsg");
    	
    	phoneNo = phoneNo.replace(/ /gi, "").replace(/-/gi, "");
    	$("#user_phone").val(phoneNo);
    	authFlag = false;
    	
    	//$("#authNoMsg").hide();
        if(!isCellPhone(phoneNo)) {
            showErrorMsg(oMsg,"형식에 맞지 않는 번호입니다.");
            return false;
        }
        
    	$.ajax({
    		url : "sendSms.do",
    		data : {
    			user_phone : phoneNo
    		},
    		type : "post",
    		success : function(result){
    			if(result == "ok"){
    				console.log("result : " + result );
    				/* var tag = "인증번호를 발송하였습니다.";
    				$("#error3").html("<span style='color:#f37233'> " + tag + "</span>"); */
    				showSuccessMsg(oMsg,"인증번호를 발송했습니다.<br>인증번호가 오지 않으면 입력하신 정보가 정확한지 확인하여 주세요.<br>이미 가입된 번호이거나, 가상전화번호는 인증번호를 받을 수 없습니다.");
    			} else {
    				/* var tag = "인증번호 전송 실패";
    				$("#error3").html("<span style='color:#f37233'> " + tag + "</span>"); */
    				showErrorMsg(oMsg,"전화번호를 다시 확인해주세요.");
    			}
    		}
    	});
    	
    	return false;
    }// end sendSms()
    
    function checkAuth(){
    	var authNo = $("#key").val();
    	var oMsg = $("#authNoMsg");
    	var oInput = $("#key");
    	
    	if(authNo = ""){
    		showErrorMsg(oMsg, "인증이 필요합니다.");
    		setFocusToInputObject(oInput);
    		return false;
    	}
    	
    	if(authFlag){
    		showSuccessMsg(oMsg,"인증이 성공했습니다.");
    		$("#phoneNoMsg").hide();
    		return true;
    	} else {
    		checkAuthnoByAjax();
    	}
    	return true;
    } // 인증번호 체크
    
    // 인증번호 확인하는 ajax
    function checkAuthnoByAjax(){
    	var authNo = $("#key").val();
    	var oMsg = $("#authNoMsg");
    	var oInput = $("#key");
    	
    	$.ajax({
    		url :  "smsCheck.do",
    		type : "post",
    		data : {
    			key : authoNo
    		},
    		success : function(result){
    			if(result == "ok") {
    				//alert("번호 인증 성공");
    				console.log("result : " + result );
    				/* var tag = " 번호 인증 성공";
    				$("#error4").html("<span style='color:#f37233'> " + tag + "</span>"); */
    				showSuccessMsg(oMsg,"인증이 성공했습니다.");
    				$("#phoneNoMsg").hide();
                    keyFlag = true;
    			} else {
    				//alert("번호 인증 실패");
    				/* var tag = "번호 인증 실패!";
    				$("#error4").html("<span style='color:#f37233'> " + tag + "</span>"); */
    				showErrorMsg(oMsg,"인증번호를 다시 확인해주세요.");
                    setFocusToInputObject(oInput);
    			}
    		}
    	 });
    	  return true;
    } // 인증번호 확인 ajax
   
    // 주민번호 동의 약관 4
    function checkAgree4(){
    	var oMsg = $("#agree4Msg");
    	if( !$("#agree4").is(":checked")){
    		showErrorMsg(oMsg, "약관에 동의해주세요.");
            return false;
    	}
    	hideMsg(oMsg);
    	return true;
    }// end 주민번호 약관 동의
       
    //region  공통함수
    // input 글자 길이
    function getLenChar(texts){
    	texts = texts + '';
    	return String.fromCharCode(texts.length);
    }// end 글자 길이
    
    function checkSpace(str) {
        if (str.search(/\s/) != -1) {
            return true;
        } else {
            return false;
        }
    }

    // 비밀번호
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
    }// end 비밀번호 유효성
    
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

        var oMsg = $("#pwdMsg");
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

        var oMsg = $("#pwd2Msg");
        if ((myKeyCode >= 65 && myKeyCode <= 90) && !myShiftKey) {
            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
        } else if ((myKeyCode >= 97 && myKeyCode <= 122) && myShiftKey) {
            showErrorMsg(oMsg,"Caps Lock이 켜져 있습니다.");
        } else {
            hideMsg(oMsg);
        }
    }//
    
     function defaultScript() {
           $('.ps_box').click(function() {
               $(this).children('input').focus();
               $(this).addClass('focus');
           }).focusout(function() {
               var welInputText = $('.ps_box');
               welInputText.removeClass('focus');
           });
       }

    // submit 버튼
       function submitClose() {
           submitFlag = true;
           $("#nextBtn2").attr("disabled",true);
       }

       function submitOpen() {
           $("#nextBtn2").attr("disabled",false);
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
       
     // 인증관련 메세지 시작
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
    // 인증관련 메세지 부분 끝
    
       function hideMsg(obj) {
           obj.hide();
       }
       
    // 비밀번호 설정(미설정 아직 사용 불가)
    /* function showPasswd1ImgByStep(oImg, oSpan, step) {
        if("IE8" == "") {
            return false;
        }
        if(step == 1) {
            oImg.attr("class", "ps_box int_pass_step1");
            oSpan.attr("class", "step_txt txt_red");
            oSpan.html("사용불가");
        } else if(step == 2) {
            oImg.attr("class", "ps_box int_pass_step2");
            oSpan.attr("class", "step_txt txt_orange");
            oSpan.html("위험");
        } else if(step == 3) {
            oImg.attr("class", "ps_box int_pass_step3");
            oSpan.attr("class", "step_txt txt_yellow");
            oSpan.html("보통");
        } else if(step == 4) {
            oImg.attr("class", "ps_box int_pass_step4");
            oSpan.attr("class", "step_txt txt_green");
            oSpan.html("안전");
        } else {
            oImg.attr("class", "ps_box int_pass");
            oSpan.attr("class", "step_txt");
            oSpan.html("");
        }
    }

    function showPasswd2ImgByDiff(oImg, diff) {
        if("IE8" == "") {
            return false;
        }
        if(diff == false) {
            oImg.attr("class", "ps_box int_pass_check");
        } else {
            oImg.attr("class", "ps_box int_pass_check2");
        }
    } */
//
// 핸드폰 번호 유효성 검사
       function isCellPhone(p) {
           var regPhone = /^((01[1|6|7|8|9])[1-9][0-9]{6,7})$|(010[1-9][0-9]{7})$/;
           return regPhone.test(p);
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
                </div><!-- .wrap_narrow -->
    		</div><!-- article_header -->
    	<!-- 타이틀 끝 =========================================================================== -->
<div class="article_body">
	<div class="wrap_narrow">
		<div class="join_content" align="center">		

		<!-- 1.사용자 인증 -->
		<!--================================================================================================================-->
		
			<h4>사용자 인증</h4>	
			
			<form class="join-form" id="join_form" action="iusersJoinStep2.do" name="form" method="post" onsubmit="return checkAll();"
			style="width:50%;">
			
			 	<input type="hidden" id="token_sjoin" name="token_sjoin" value="6wrsbLOeemoSJB91">
    			<input type="hidden" id="encPswd" name="encPswd" value="">
    			<input type="hidden" id="encKey" name="encKey" value="">
    			<input type="hidden" id="birthday" name="birthday" value="">
    			<input type="hidden" id="joinMode" name="joinMode" value="unreal">
    			<input type="hidden" id="pbirthday" name="pbirthday" value="">
    			<input type="hidden" id="ipinFlag" name="ipinFlag" value="">
    			<input type="hidden" id="nid_kb2" name="nid_kb2" value="">
    			
    			<!-- 아이디 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						<i class="material-icons prefix">face</i>
						<input type="text" name="user_id" id="user_id" class="validate" required/>
						<label for="user_id">아이디</label>
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="idMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
    			
    			<!-- 비밀번호 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						
							<span id="pwdSpan" class="step_txt"></span>
							<i class="material-icons prefix">lock</i>
							<input type="password" name="user_pwd" id="user_pwd" class="validate" title="비밀번호 입력" aria-describedby="pwdMsg" required/>
							<label for="user_pwd">비밀번호</label>
						
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="pwdMsg" style="display:none" aria-live="assertive">9~15자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>
				<!-- =================================================== -->
				
				<!-- 비밀번호 재확인 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						
						<i class="material-icons prefix">lock_outline</i>
						<input type="password" name="user_pwd2" id="user_pwd2" class="validate" title="비밀번호 재확인 입력" aria-describedby="pwd2Blind" required/>
						<label for="user_pwd2">비밀번호 재확인</label>
						<!-- <span id="pwd2Blind" class="wa_blind">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span> -->
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="pwd2Msg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				<!-- 이름 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						<i class="material-icons prefix">keyboard</i>
						<input type="text" name="user_name" id="user_name" class="validate" required/>
						<label for="user_name">이름</label>
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				<!-- 주민번호 ===============================================-->
				<div class="row margin">
				<div class="row">
        			<div class="input-field col s6">
          				<i class="material-icons prefix">date_range</i>
						<input type="text" name="resident_no1" id="resident_no1" class="validate" required/>
						<label for="resident_no1">주민등록번호(생년월일)</label>
        			</div>        			
        			<div class="input-field col s6">
          				<input id="resident_no2" type="text" class="validate" name="resident_no2" required>
          				<label for="resident_no2">주민등록번호(나머지)</label>
        			</div><!-- input-field -->
      				</div><!-- row -->
				</div><!--row, margin-->
				<div id="error2"></div>
				<span class="error_next_box" id="resident_noMsg" style="display:none" aria-live="assertive"></span>
				<!-- ===================================================== -->
				<!-- 주민번호 처리 동의 -->
				 <div class="row margin">				 	
      				<label>
        				<input type="checkbox" name="agree4" id="agree4" value="true" class="filled-in" checked="checked" />
        				<span>주민등록번호 처리에 동의합니다.</span>
      				</label>
      				 <span class="error_next_box" id="agree4Msg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
      				
    			</div><!--  row -->
				
				<!-- 이메일 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						<i class="material-icons prefix">mail</i>
						<input type="email" name="user_email" id="user_email" class="validate"/>
						<label for="user_email">이메일(선택)</label>
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				<!-- 주소 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						<i class="material-icons prefix">map </i>
						<input type="text" name="user_address" id="user_address" class="validate"/ style="width:57%">
						<a href="#" class="btn waves-effect orange darken-3" id="sendSms" role="button">
                            <span class="">주소 검색</span><i class="material-icons right">search</i>
                    	</a>
						<label for="user_address">주소</label>
						
						<input value="기본주소" id="address2" type="text" class="validate">
      					
      					<input value="나머지주소" id="address3" type="text" class="validate">
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="addressMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				<!-- 서비스 제공기관 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
					<!-- <i class="material-icons prefix">map </i> -->
						<input type="text" name="office_code" id="office_code" class="validate"/ style="">
     					
  							<select class="browser-default">
    							<option value="" disabled selected>---집주소를 입력 후 선택하세요---</option>
    							<option value="1">Option 1</option>
    							<option value="2">Option 2</option>
    							<option value="3">Option 3</option>
  							</select>                 
  							<label for="office_code">서비스제공기관</label>
              		</div><!-- input-field -->
				</div><!--row, margin-->
				 <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				
				<!-- 집전화번호 ============================================== -->				
				<div class="row margin">
					<div class="input-field col s12">
						<!-- <i class="mid-social-person-outline prefix"></i> -->
						<i class="material-icons prefix">local_phone</i>
						<input type="text" name="user_tel" id="user_tel" class="validate"/>
						<label for="user_tel">집전화번호(선택)</label>
					</div><!-- input-field-->
				</div><!--row, margin-->
				 <span class="error_next_box" id="addressMsg" style="display:none" aria-live="assertive"></span>
				<!-- =================================================== -->
				
				<!-- 전화번호 입력=========================================== -->
				<div class="row margin">
        			<div class="input-field col s12">
          			<!-- <i class="mdi-action-lock-outline prefix"></i> -->
          			<i class="material-icons prefix">phonelink_lock</i>
          			<input type="text" name="user_phone" id="user_phone" class="validate"  style="width:57%;" required/>
					<label for="user_phone">핸드폰번호</label>
					<a href="#" class="btn waves-effect orange darken-3" id="sendSms" role="button">
                            <span class="">인증번호 받기</span><i class="material-icons right">looks_6</i>
                    </a>
					<!-- <button onclick="sendSms();" class="btn waves-effect orange darken-3" name="action" id="sendSms">인증번호받기
					<i class="material-icons right">looks_6</i>
					</button> -->
          			<!-- <div id="error3"></div> -->
          			<span class="error_next_box" id="phoneNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="authNoMsg" style="display:none" aria-live="assertive"></span>
                    <span class="error_next_box" id="joinMsg" style="display:none" aria-live="assertive"></span>
        		</div>
      			</div>

<!-- 인증번호 입력 ================================================================== -->
      <div class="row margin">
        <div class="input-field col s12">
          <!-- <i class="mdi-action-lock-outline prefix"></i> -->
          <i class="material-icons prefix">device_unknown</i>
          <input type="text" name="key" id="key" class="validate" required/>
          <label for="key">인증번호(숫자6자리)</label>         
			<!-- <button onclick="phoneCheck();" class="btn waves-effect waves-light orange darken-3">인증번호입력
		<i class="material-icons right">edit</i>
		</button> -->
        </div><!-- input-field -->
        </div><!-- row -->
       <!--  <div id="error4"></div> -->
       <span class="error_next_box" id="phoneNoMsg" style="display:none" aria-live="assertive"></span>
       <span class="error_next_box" id="authNoMsg" style="display:none" aria-live="assertive"></span>
       <span class="error_next_box" id="joinMsg" style="display:none" aria-live="assertive"></span>
      

				
    		
				<!-- 다음 버튼 -->
				<div class="row">
        			<!-- <div class="input-field col s12">
          			<button type="submit" id="nextBtn1" class="btn waves-effect waves-light col s12 orange darken-4" >확인</button>
           		</div>input_field -->
           		<div class="btn_area double" align="center" style="margin-top:10px;">
									<span>
										<!-- tg-text=terms_button_cancel -->
										<a href="#" id="btnCancel"	class="waves-effect waves-light btn grey" role="button" style="width:49%;">취소</a>
									</span> 
									<span>
										<!-- tg-text=terms_button_agree -->
										<a href="#" id="btnAgree" class="waves-effect waves-light btn orange darken-3" role="button" style="width:49%;">다음 단계</a>
									</span>
								</div>
			 </div><!--  row -->
			</form><!-- login-form--> 
		
	</div>
		<!-- 사용자 인증 끝 -->
		<!--================================================================================================================-->

		
</div><!-- join_content -->
</div><!--  wrap_narrow -->
</div><!-- article_body -->
</div><!-- article -->
</div><!--  main_container_inner -->
</main>
<!-- footer id="footer" 시작 ==-->

<c:import url="footer.jsp"/>


</body>
</html>

