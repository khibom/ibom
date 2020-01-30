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
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize22.css" />
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
/*  var idFlag = true;
var pwFlag = true;
var authFlag = true; // 인증번호
var jusoFlag = true; // 주소
var submitFlag = true; */

$(document).ready(function(){
	defaultScript();
	
	// 주민번호(생년월일)
	if($("#resident_no1").val() != ""){
		checkResidentNo();
	}
	
	// region unreal id
	$("#user_id").blur(function(){
		idFlag = false;
		checkId("first");
	}); // end user_id
	
	// 비밀번호
	$("#user_pwd").blur(function(){
		pwFlag = false;
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
	
	// 주소검색
	$("#zipNo").blur(function(){
		checkJuso();
	}); 
	
	// 우편번호 검색
	$("#goJusoPopup").click(function(){
		goJusoPopupButton();
		return false;
	});
	
	// 집전화번호
	$("#user_tel").blur(function(){
		checkTel();
	});
	
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
		checkAgree4();
	}); // end agree4
	// 다시 살표보기 바람
	
	// 취소 버튼
	$("#btnCancel2").click(function(event) {
		var result = confirm("회원가입을 취소하시겠습니까?")
		if(result){
			alert("이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.");
			clickcr(this, 'tos.disagree', '', '', event);
			   sessionStorage.clear();
			   console.log(sessionStorage.length);
			   submitDisagree();
			   return false;
		} else {
			alert("우리i봄 서비스 신청 및 연계시 필요한 정보이므로, 기본정보, 가정현황, 이용사항, 요구사항 등의 정보를 정확하게 입력해 주시기 바랍니다.");				 
		}   
		
	});
	
	$("#nextBtn2").click(function(event){
		clickcr(this, 'sup.signup', '', '', event);
        submitClose();
        if( idFlag && pwFlag && authFlag) {
            mainSubmit();
        } else {
            mainSubmit();          
        }
    });

}); //endregion

 //region mainSubmit
    function mainSubmit() { 

	// sessionStorage 값 설정하기 ==========================================
	var user_id = $("#user_id").val();//아이디
	var user_pwd = $("#user_pwd").val();// 비밀번호
	var user_name = $("#user_name").val();
	var no1 = $("#resident_no1").val();
	var no2 = $("#resident_no2").val();
	// 뒤에서 6개글자를 * 처리한다.
	var pattern = /.{6}$/;
	var no3 = no2.replace(pattern, "******");
	var resident_no = no1 + "-" + no3; // 주민등록번호
	var user_email = $("#user_email").val(); // 이메일
	
	var zipNo = $("#zipNo").val(); // 우편번호
	var roadAddrPart1 = $("#roadAddrPart1").val();
	var addrDetail = $("#addrDetail").val();
	var roadAddrPart2 = $("#roadAddrPart2").val();
	var user_address = zipNo + ", " + roadAddrPart1 + addrDetail + roadAddrPart2; // 주소	
	var sinm = $("#siNm").val(); // 시도명
	var sggnm = $("#sggNm").val(); // 시군구명
	var user_tel = $("#user_tel").val(); // 집전화
	var phone1 = $("#user_phone").val(); // 핸드폰 번호
	var phone2 = JSON.stringify(phone1); // object HTMLInputElement 객체라서 string으로 변환
	var user_phone = phone2.replace(/\"/gi, "");
	//var phone = document.getElementById('user_phone').getAttribute('value');
	var office_code = $("#sel option:selected").val(); // 서비스센터 코드	
	var agree4 = document.getElementById('agree4');   // 주민번호 동의
	//console.log(document.getElementById('agree4').getAttribute('agree4'));
	//var agree4Value = $('input[name="agree4"]:checked').value;
	var agree4Value = document.getElementById('agree4').getAttribute('value');
	//console.log("값 확인 : " + agree4Value);
	
	sessionStorage.setItem("user_id", user_id);
	sessionStorage.setItem("user_pwd", user_pwd);
	sessionStorage.setItem("user_name", user_name);
	sessionStorage.setItem("resident_no", resident_no);
	sessionStorage.setItem("user_email", user_email);
	sessionStorage.setItem("user_address", user_address);
	sessionStorage.setItem("sinm", sinm);
	sessionStorage.setItem("sggnm", sggnm);
	sessionStorage.setItem("user_tel", user_tel);
	sessionStorage.setItem("user_phone", user_phone);
	sessionStorage.setItem("office_code", office_code);
	sessionStorage.setItem("agree4", agree4Value);
	
	var agree1 = sessionStorage.getItem("agree1");

	console.log(sessionStorage);
     
	idFlag = true;
  	pwFlag = true; 
    authFlag = true;
    
	if(idFlag && pwFlag && authFlag) {
            try {
                desk.f(function(a) {
                	$("#join_form").submit();
                });
            } catch (e) {
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
                 & checkJuso()
                 & checkTel()
                 & checkPhone()
                 & checkAuth()
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
    	 
    	 var isID = /^[a-zA-Z0-9]{4,12}$/;
    	 if(!isID.test(id)){
    		 showErrorMsg(oMsg,"5~13자의 영문 대소문자, 숫자만 사용 가능합니다.");
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
    	var pw = $("#user_pwd").val();/* 
        var oImg = $("#pswImg");
        var oSpan = $("#pswSpan"); */
    	var oMsg = $("#pwdMsg");
    	var oInput = $("#user_pwd");
    	
    	if(pw == ""){
    		showErrorMsg(oMsg,"필수 정보입니다.");
            setFocusToInputObject(oInput);
            return false;
    	}
    	
    	if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{6,12}$/.test(pw)){          
    		showErrorMsg(oMsg,"숫자+영문자+특수문자 조합으로 6자리 이상 사용해야 합니다.");
            setFocusToInputObject(oInput);
            /* alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
            $('#password').val('').focus(); */
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
           /*  alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
            $('#password').val('').focus(); */
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
    	var oMsg = $("#resident_noMsg");
    	
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
    	if(no1.length != 6 || no1.indexOf('e') != -1 || no1.indexOf('E') != -1){
    		showErrorMsg(oMsg,"생년월일 6자리를 정확하게 입력하세요.");
            setFocusToInputObject(no1);
            return false;
    	}
    	if( no2 == ""){
    		showErrorMsg(oMsg, "주민등록번호 뒷 자리를 정확하게 입력하세요.");
    		setFocusToInputObject(ono2);
    		return false;
    	}
    	if(no2.length != 7 || no1.indexOf('e') != -1 || no1.indexOf('E') != -1){
    		showErrorMsg(oMsg,"주민번호 뒷자리 7자리를 정확하게 입력하세요.");
            setFocusToInputObject(no2);
            return false;
    	}
    	
    	var num1 = document.getElementById("resident_no1");
        var num2 = document.getElementById("resident_no2");

        var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
        var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열

        // -------------- 주민번호 -------------

        for (var i=0; i<num1.value.length; i++) {
            arrNum1[i] = num1.value.charAt(i);
        } // 주민번호 앞자리를 배열에 순서대로 담는다.

        for (var i=0; i<num2.value.length; i++) {
            arrNum2[i] = num2.value.charAt(i);
        } // 주민번호 뒷자리를 배열에 순서대로 담는다.

        var tempSum=0;

        for (var i=0; i<num1.value.length; i++) {
            tempSum += arrNum1[i] * (2+i);
        } // 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함

        for (var i=0; i<num2.value.length-1; i++) {
            if(i>=2) {
                tempSum += arrNum2[i] * i;
            }
            else {
                tempSum += arrNum2[i] * (8+i);
            }
        } // 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함

        if((11-(tempSum%11))%10!=arrNum2[6]) {
        	showErrorMsg(oMsg,"올바른 주민번호가 아닙니다.");
            setFocusToInputObject(no2);
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
    
    // 주소
    function checkJuso(){
    	var zipNo = $("#zipNo").val();
    	var oMsg = $("#jusoMsg");
    	var oInput = $("#zipNo");
    	
    	if( zipNo == ""){
    		showErrorMsg(oMsg, "필수 정보입니다.");
    		setFocusToInputObject(oInput);
    		return false;
    	}
    	
    	hideMsg(oMsg);
    	return true;
    	
    }// end 주소
    
  // 집전화번호
  function checkTel(){
    	var tel = $("#user_tel").val();
    	var oMsg = $("#telMsg");
    	var oInput = $("#user_tel");
    	
	//필수가 아닐 경우
  	 if(userTel = ""){
  		hideMsg(oMsg);
        return true;
  	} 
    
  //	tel = tel.split('-').join('');
  	var isTel = /^\d{2,3}-\d{3,4}-\d{4}$/;
  	
    if (!isTel.test(tel)) {
        showErrorMsg(oMsg,"전화번호를 다시 확인해주세요.");
        return false;
    }
    
    hideMsg(oMsg);
    return true;
    
    }// end 집전화번호
    
     
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
    	
    	//phoneNo = phoneNo.replace(/ /gi, "").replace(/-/gi, "");
    	$("#user_phone").val(phoneNo);
    	console.log("폰 : " + phoneNo)
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
    				showSuccessMsg(oMsg,"인증번호를 발송했습니다.<br>인증번호가 오지 않으면 입력하신 정보가 정확한지 확인하여 주세요.<br>이미 가입된 번호이거나, 가상전화번호는 인증번호를 받을 수 없습니다.");
    				$("#key").attr("disabled", false);
                    var oBox = $("#authNoBox");
                    var oCode = $("#authNoCode");
                    showAuthDefaultBox(oBox, oCode);
    			} else {
    				showErrorMsg(oMsg,"전화번호를 다시 확인해주세요.");
    			}
    		}
    	});
    	
    	return false;
    }// end sendSms()
    
    // 인증번호 확인
    function checkAuth(){
    	var authNo = $("#key").val();
    	 var oMsg = $("#authNoMsg");
         var oBox = $("#authNoBox");
         var oCode = $("#authNoCode");
         var oInput = $("#key");
    	
    	if(authNo = ""){
    		showErrorMsg(oMsg, "인증이 필요합니다.");
    		setFocusToInputObject(oInput);
    		return false;
    	}
    	
    	if(authFlag){
    		showSuccessMsg(oMsg,"인증이 성공했습니다.");
    		showAuthSuccessBox(oBox, oCode, "일치");
            $("#phoneNoMsg").hide();
            return true;
    	} else {
    		//checkAuthnoByAjax();
    		var authNo = $("#key").val();
    		var oMsg = $("#authNoMsg");
    	    var oBox = $("#authNoBox");
    	    var oCode = $("#authNoCode");
    	    var oInput = $("#key");
        	
        	$.ajax({
        		url :  "smsCheck.do",
        		type : "post",
        		data : {	key : authNo 	},
        		success : function(result){
        			if(result == "ok") {
        				//alert("번호 인증 성공");
        				console.log("result : " + result );
        				showSuccessMsg(oMsg,"인증이 성공했습니다.");
                        showAuthSuccessBox(oBox, oCode, "일치");
                        $("#phoneNoMsg").hide();
                        authFlag = true;
        			} else {
        				showErrorMsg(oMsg,"인증번호를 다시 확인해주세요.");
                        showAuthErrorBox(oBox, oCode, "불일치");
                        setFocusToInputObject(oInput);
        			}
        		}
        	 });
        	  return true;
    	}
    	return true;
    } // 인증번호 체크
    
   
   
    // 주민번호 동의 약관 4
    function checkAgree4(){
    	var oMsg = $("#agree4Msg");
    	if( !$("#agree4").is(":checked")){
    		showErrorMsg(oMsg, "주민등록번호 처리에 동의해주세요.");
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
           obj.attr("class", "error_next_box");
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
       

// 핸드폰 번호 유효성 검사
    function isCellPhone(p) {
         var regPhone = /^((01[1|6|7|8|9])[1-9][0-9]{6,7})$|(010[1-9][0-9]{7})$/;
         return regPhone.test(p);
    }// end 핸드폰 유효성 검사
    
    
    function goPopup(){
    	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
        var pop = window.open("${pageContext.servletContext.contextPath }/jusoPopupPage.do","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
        
    	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
        //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
    }
    /** API 서비스 제공항목 확대 (2017.02) **/
    function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
    						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
    	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
    	document.form.roadAddrPart1.value = roadAddrPart1;
    	document.form.roadAddrPart2.value = roadAddrPart2;
    	document.form.addrDetail.value = addrDetail;
    	document.form.zipNo.value = zipNo;
    	document.form.siNm.value = siNm;
    	document.form.sggNm.value = sggNm;
    	
    	// 서비스 기관 등록
    	var findString = "성남";
    	var job = new Object();
    	job.city_name = siNm.substring(0,2);
    	if(sggNm.indexOf(findString) != -1){
    		job.city_name2 = sggNm.substring(0,3);
    	} else {
    		job.city_name2 = sggNm;
    	}
    	console.log(job);  
    	
    	$.ajax({
    		url : "officeSearch.do",
     		type : "post",
     		data : JSON.stringify(job),
     		dataType : 'json',
			contentType : "application/json; charset=utf-8",
       		success: function(obj){
    			console.log("전송 성공 : " + obj);   			
    			
    			//리턴된 객체를 문자열로 변환 처리
				var objStr = JSON.stringify(obj);
				//객체문자열을 json 으로 바꿈
				var jsonObj = JSON.parse(objStr);
				
				//출력용 문자열 준비
				//var outValues = $("#office_name").html();
				$("#sel option").remove();
				var ele = document.getElementById('sel');
				//출력할 문자열 만들기
				for(var i in jsonObj.list){
					
					/* outValues += jsonObj.list[i].office_code
							+ ", " + decodeURIComponent(jsonObj.list[i].office_name.replace(/\+/gi, " "))
							+ "<br>"; */							
							ele.innerHTML = ele.innerHTML 
							+ '<option value="' +   jsonObj.list[i].office_code
							+ '">' + decodeURIComponent(jsonObj.list[i].office_name.replace(/\+/gi, " ")) + '</option>';  					
				}
				
				//$("#office_name").html(outValues);
			
    		},
    		error : function(request, status, errorData){
    			console.log("error code : " + request.status 
    					+ "\nMessage : " + request.responseText
    					+ "\nError : " + errorData);
    		}
    		
    	});  // end 서비스 기관 등록하기
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
    <div id="main_container_inner" class="notice_list">
    	<div class="article">
		    	<!-- 타이틀 =================================================================== -->
		    	<div class="article_header">
		                <div class="wrap">
		                    <h1 data-font="secondary" class="article_title">회원가입</h1>
		                     <p class="article_desc">우리i봄 서비스 신청 및 연계시 필요한 정보이므로, 기본정보, 가정현황, 이용사항, 요구사항 등의 정보를 정확하게 입력해 주시기 바랍니다.</p>
		                </div><!-- .wrap_narrow -->
		    		</div><!-- article_header -->
		    	<!-- 타이틀 끝 =========================================================================== -->
			<div class="article_body">
					<div class="wrap">
						<h5>
							<span class="join_s">개인정보 입력 및 사용자 인증</span>	
							<span class="star">"맞벌이여부, 다자녀가구여부" 수정은 이용자등록 완료 후 각 지역별 서비스 제공기관으로 문의하시기 바랍니다.</span>
						</h5>
						<div class="join_content" align="center">		
				
						<!-- 1.사용자 인증 -->
						<!--================================================================================================================-->
							
							<form class="join-form" id="join_form" action="iusersJoinStep3.do" name="form" method="post" style="width:50%;">
				    			<!-- 아이디 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<i class="material-icons prefix">face</i>
										<input type="text" name="user_id" id="user_id" class="validate" title="ID" maxlength="20" required/>
										<label for="user_id">아이디</label>
									</div><!--input-field -->
									         
								</div><!--row, margin-->
								<span class="error_next_box" id="idMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
				    			
				    			<!-- 비밀번호 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										
											<span id="pwdSpan" class="step_txt"></span>
											<i class="material-icons prefix">lock</i>
											<input type="password" name="user_pwd" id="user_pwd" class="validate" title="비밀번호 입력" aria-describedby="pwdMsg" maxlength="12" required/>
											<label for="user_pwd">비밀번호</label>
										
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="pwdMsg" style="display:none" aria-live="assertive">6~12자의 영문 소문자, 숫자와 특수기호(_)만 사용 가능합니다.</span>
								<!-- =================================================== -->
								
								<!-- 비밀번호 재확인 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										
										<i class="material-icons prefix">lock_outline</i>
										<input type="password" name="user_pwd2" id="user_pwd2" class="validate" title="비밀번호 재확인 입력" aria-describedby="pwd2Blind" maxlength="12" required/>
										<label for="user_pwd2">비밀번호 재확인</label>
										<!-- <span id="pwd2Blind" class="wa_blind">설정하려는 비밀번호가 맞는지 확인하기 위해 다시 입력 해주세요.</span> -->
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="pwd2Msg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								<!-- 이름 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										<i class="material-icons prefix">keyboard</i>
										<input type="text" name="user_name" id="user_name" class="validate" title="이름" maxlength="40" required/>
										<label for="user_name">이름</label>
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="nameMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								<!-- 주민번호 ===============================================-->
								<div class="row margin">
				        			<div class="join_row input-field col s12" style="display:flex;">
				          				<i class="material-icons prefix">date_range</i>
										<input type="text" name="resident_no1" id="resident_no1" title="주민등록번호(생년월일)" class="validate" maxlength="6" required/>
										<label for="resident_no1">주민등록번호</label>
						 			 	<input id="resident_no2" type="password" class="validate" name="resident_no2" title="주민등록번호(뒷자리)" maxlength="7" required>
				          				<!-- <label for="resident_no2">주민등록번호</label> -->
				        			</div><!-- input-field -->
				      			</div><!--row, margin-->
				      			<span class="error_next_box" id="resident_noMsg" style="display:none" aria-live="assertive"></span>
								<!-- ===================================================== -->
								
								
								<!-- 이메일 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										<i class="material-icons prefix">mail</i>
										<input type="email" name="user_email" id="user_email" title="이메일" class="validate"/>
										<label for="user_email">이메일(선택)</label>
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								<!-- 주소 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										 <i class="material-icons prefix">room </i>
										<input type="hidden" id="confmKey" name="confmKey" value="">
										<input type="text" name="zipNo" id="zipNo" class="validate" style="width:68%" readonly>
										<input type="button" class="btn waves-effect orange darken-3" value="주소검색" onclick="goPopup();">  
									     <!-- <a href="#" class="btn waves-effect orange darken-3" id="goJusoPopup" role="button">
				                            <span class="">우편번호</span><i class="material-icons right">search</i>
				                    	</a>  -->
										<!-- <label for="user_address">우편번호</label> -->
										
										<input value="도로명주소" id="roadAddrPart1" type="text" class="validate" readonly>      					
				      					<input type="text" id="addrDetail" style="width:90%" value="상세주소" readonly>
										<input type="text" id="roadAddrPart2"  style="width:90%" value="" readonly> 
										<input title="시도명" type="hidden" id="siNm" name="siNm" value="시도명" class="w150" readonly>
										<input title="시군구명" type="hidden" id="sggNm" name="sggNm" value="시군구명" class="w150" readonly>
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="jusoMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								<!-- 서비스 제공기관 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
								 	<i class="material-icons left">location_city </i> 
									<label for="office_code" style="left: 2.4rem;">서비스제공기관</label><br/>
										<!-- <input type="text" name="office_code" id="office_code" class="validate"/ style=""> -->
				     					<div id="office_name"></div>
				  						<select class="browser-default" id="sel">
				    							<option value="" >--- 집주소를 입력 후 선택하세요 ---</option> 
				  							</select>    
				  							         
				  							
				              		</div><!-- input-field -->
								</div><!--row, margin-->
								 <span class="error_next_box" id="emailMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								
								<!-- 집전화번호 ============================================== -->				
								<div class="row margin">
									<div class="join_row input-field col s12">
										<!-- <i class="mid-social-person-outline prefix"></i> -->
										<i class="material-icons prefix">local_phone</i>
										<input type="text" name="user_tel" id="user_tel" class="validate"/>
										<label for="user_tel">집전화번호(선택) 예시: 02-1234-1234</label>
									</div><!-- input-field-->
								</div><!--row, margin-->
								 <span class="error_next_box" id="telMsg" style="display:none" aria-live="assertive"></span>
								<!-- =================================================== -->
								
								<!-- 전화번호 입력=========================================== -->
								<div class="row margin">
						        			<div class="join_row input-field col s12">
								          			<!-- <i class="mdi-action-lock-outline prefix"></i> -->
								          			<i class="material-icons prefix">phonelink_lock</i>
								          			<input type="text" name="user_phone" id="user_phone" class="validate"  style="width:56%;" value="" required/>
													<label for="user_phone" style="left : 3rem;">핸드폰번호</label>
													<a href="#" class="btn waves-effect orange darken-3" id="sendSms" role="button">
								                            <span class="">인증번호 받기</span><i class="material-icons right">looks_6</i>
								                    </a>
													<!-- <button onclick="sendSms();" class="btn waves-effect orange darken-3" name="action" id="sendSms">인증번호받기
													<i class="material-icons right">looks_6</i>
													</button> -->
						          			
						        				</div>
				      				</div>
				
				<!-- 인증번호 입력 ================================================================== -->
				      <div class="ps_box_disable box_right_space" id="authNoBox">
				          <input type="text" id="key" name="key" placeholder="인증번호 입력하세요" aria-label="인증번호 입력하세요" aria-describedby="wa_verify" class="int" disabled maxlength="6">
				          <label id="wa_verify" for="key" class="lbl">
				                 <span class="wa_blind">인증받은 후 인증번호를 입력해야 합니다.</span>
				                 <span class="input_code" id="authNoCode" style="display:none;"></span>
				           </label>
				        </div> 
				      	<span class="error_next_box" id="phoneNoMsg" style="display:none" aria-live="assertive"></span>
				       <span class="error_next_box" id="authNoMsg" style="display:none" aria-live="assertive"></span>
				       <span class="error_next_box" id="joinMsg" style="display:none" aria-live="assertive"></span>
				      
				      <!-- 주민번호 처리 동의 -->
								 <div class="join_row row margin">				 	
				      				<label>
				        				<input type="checkbox" name="agree4" id="agree4" value="Y" class="filled-in" />
				        				<span>주민등록번호 처리에 동의합니다.</span>
				      				</label>
				      				 <span class="error_next_box" id="agree4Msg" style="display:none" aria-live="assertive">필수 정보입니다.</span>
				      				
				    			</div><!-- join-row -->
				
								
				    		
								
							</form><!-- login-form--> 
						
					
						<!-- 사용자 인증 끝 -->
						<!--================================================================================================================-->
				
					</div><!-- join_content -->

						<!-- 다음 버튼 -->
						<div class="row">        			
			           		<div class="btn_area double" align="center" style="margin-top:10px;">
								<span>
									<!-- tg-text=terms_button_cancel -->
									<a href="#" id="btnCancel2"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
								</span> 
								<span>
									<!-- tg-text=terms_button_agree -->
									<a href="#" id="nextBtn2" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a>
								</span>
							</div>
						  </div><!--  row -->

				</div><!--  wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
<!-- footer id="footer" 시작 ==-->

<c:import url="footer.jsp"/>


</body>
</html>

