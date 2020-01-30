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
 <!--  네이버 추가 js -->
<!-- select js -->
<script type="text/javascript">
 <!-- 가족정보 저장 -->
 $(document).ready(function(){
		// 취소 버튼
			$("#btnCancel4").click(function(event) {
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
			
			$("#saveFamilyBtn").click(function(event){			
		         submitSaveFamily();	         
		         return false;			
				});  // end 
				
			 $("#nextBtn5").click(function(event) {
		            clickcr(this, 'tos.agree', '', '', event);                      
		            submitAgree();
		            ShowStorage();
		            return false;
		 });

	});// end document.ready
	
	function submitAgree() {		
	  	$("#join_form2").submit();
	   	return true;
	}
	
	function submitSaveFamily() {
		 var user_id =  sessionStorage.getItem("user_id");// 2.사용자 아이디
		 var family_relationship = $("#family_relationship").val(); // 3. 가족관계
		 var family_name = $("#family_name").val(); // 4. 가족명
		 var kor_yesno = $('input[name="kor_yesno"]:checked').val(); // 5.내국인, 외국인 여부
		 var family_gender =  $('input[name="family_gender"]:checked').val(); // 7. 성별
		 var num1 = $("#resident_no1").val();
		 var num2 = $("#resident_no2").val();
		// 뒤에서 6개글자를 * 처리한다.
		 var pattern = /.{6}$/;
		 var num3 = num2.replace(pattern, "******");
		 var family_no = num1 + "-" + num3; // 6. 주민번호
		 var arrNum1 = new Array(); // 주민번호 앞자리숫자 6개를 담을 배열
	     var arrNum2 = new Array(); // 주민번호 뒷자리숫자 7개를 담을 배열
	     
		 var family_blood = $("#family_blood").val(); // 8. 혈액형
		 var dolbom_type = $("#dolbom_type").val(); // 9. 돌봄구분
		 var ad_level = $("#ad_level").val(); // 10. 판정등급
		 var select_type = $("#select_type").val(); // 11. 유형선택
		 var family_etc = $("#family_etc").val(); // 12. 특이사항
	     
		 if( family_relationship == null || family_relationship == "" ){
			 alert("가족관계는 필수 입력항목입니다.");
			 form.family_relationship.focus();
			 return false;
		 }
		 
		 var nonchar = /[^가-힣]/gi;
		 
		 if(family_name == null || family_name == ""){
				alert("이름은 필수 입력항목입니다.");
			 	form.family_name.focus();
	    		return false;
	    	}
	    	if(family_name != null && nonchar.test(family_name)){
	    		alert(" 한글을 사용하세요. (영문, 특수기호, 공백 사용 불가)");
	    		form.family_name.focus();
	    		return false;
	    	}	 	 
		
		 console.log(family_relationship);		 
		 
		 if( family_gender == null || family_gender == ""){
			 alert("성별은 필수 입력항목입니다.");
			 //form.family_gender.focus();
			 return false;
		 }
	     
		 // -------------- 주민번호 -------------

	     for (var i=0; i<num1.length; i++) {
	         arrNum1[i] = num1.charAt(i);
	     } // 주민번호 앞자리를 배열에 순서대로 담는다.

	     for (var i=0; i<num2.length; i++) {
	         arrNum2[i] = num2.charAt(i);
	     } // 주민번호 뒷자리를 배열에 순서대로 담는다.

	     var tempSum=0;

	     for (var i=0; i<num1.length; i++) {
	         tempSum += arrNum1[i] * (2+i);
	     } // 주민번호 검사방법을 적용하여 앞 번호를 모두 계산하여 더함

	     for (var i=0; i<num2.length-1; i++) {
	         if(i>=2) {
	             tempSum += arrNum2[i] * i;
	         }
	         else {
	             tempSum += arrNum2[i] * (8+i);
	         }
	     } // 같은방식으로 앞 번호 계산한것의 합에 뒷번호 계산한것을 모두 더함

	     if((11-(tempSum%11))%10!=arrNum2[6]) {
	         alert("올바른 주민번호가 아닙니다.");
	         num1 = null;
	         num2 = null;
	         form.num1.focus();
	         return false;
	     }
	     
	     	// sessionStorage ===================================================
	     	 sessionStorage.setItem("family_relationship",  family_relationship); 
			 sessionStorage.setItem("family_name", family_name);
			 sessionStorage.setItem("kor_yesno", kor_yesno);
			 sessionStorage.setItem("family_gender", family_gender);
			 sessionStorage.setItem("family_no", family_no);
			 sessionStorage.setItem("family_blood", family_blood);
			 sessionStorage.setItem("dolbom_type", dolbom_type);
			 sessionStorage.setItem("ad_level", ad_level);
			 sessionStorage.setItem("select_type", select_type);
			 sessionStorage.setItem("family_etc", family_etc);	     		
	     		
	     	var data = {};
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
			 
			console.log(sessionStorage);
		    console.log(JSON.stringify(data));
										
	        $.ajax({
				 url : "iusersJoinStep4familySave.do",
				 type : "post",
				 data : JSON.stringify(data),
				 contentType : "application/json; charset=utf-8",
				 success : function(result){
					 console.log("전송성공" + result);
					 
					 console.log("전송성공" + data.family_relationship);	
					 	//출력용 문자열 준비
						var outValues = "";
						
					 	var no = data.family_no;
						var gender = data.family_gender;
						console.log("gender" + gender)
						var g = gender.trim();
						if( g == "M"){
							g ="남자";
						}
						g == "여자";
					 	
							outValues += '<tr>'
							+ '<td><label><input type="checkbox" class="filled-in"/> <span></span></label></td>'
							+ '<td class="type">'+ data.family_relationship +'</td>'
							+ '<td class="type">'+ data.family_name +'</td>'
							+ '<td class="type">'+ no.substring(0,6) +'</td>'
							+ '<td class="type">'+ g +'</td>'
							+ '<td class="type">'+ data.dolbom_type +'</td>'
							+ '<td class="type">'+ data.ad_level +'</td>'
							+ '<td class="type">'+ data.select_type +'</td>'
							+ '<td class="title">'+ data.family_etc +'</td>'
							+ '<td class="hit">0</td>'						
							+ '<td class="hit">해당없음</td>'
							+ '<td class="hit">해당없음</td>'
							+ '<td class="hit">해당없음</td>'
							+ '<td class="hit">해당없음</td>'
							+ '</tr>';
						
						$("#familyList tbody").append(outValues);					
				 }, 
				 error: function(request, status, errorData){
					console.log("실패");
					console.log("error code : " + request.status
								+ "\nMessage : " + request.responseText
								+ "\nError : " + errorData);
					}
			 });  
	     		
	     		
		//$("#join_form").submit();
		// location.href = "main.do";
		return true;
		 
		//return false;
  }
	
	
	function submitDisagree() {
		/* $.ajax({
			url: "userDel.do",
			data: {user_id : user_id},
			type: "get",
			success: function(result){
				if(result == "ok"){
					alert("값 보내기 성공!");
					console.log("result : " + result);					
				}else{ //"ok" 가 아닌 다른 문자열 값이면
					alert("전송 처리 실패!");
				}
			},
			error: function(request, status, errorData){
				console.log("error code : " + request.status
						+ "\nMessage : " + request.responseText
						+ "\nError : " + errorData);
			}
		});	 */
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
					
					<!--  가족정보입력 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">가족정보 입력</span>	
					<span class="star">돌봄 서비스를 받고자 하는 아동은 가족정보 입력시 가족관계를 '자'로 서정하고, 부작용 약물 등이 있는 특이사항에 반드시 입력해야 합니다.</span>
				</h5>
			<form class="join-form" id="join_form" action="iusersJoinStep4familySave.do" name="form" method="post" >
        	<table class="jt_board_list30">
            <caption>가족정보 목록</caption>
            <tbody>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">가족관계<span class="red-text">*</span></th>
                    <td class=""  colspan="5">
                    	<select id="family_relationship" name="family_relationship" class="browser-default" style="height:2rem; padding:2px; width:10rem;">
						    <option value="" disabled selected>선택하세요</option>
						    <option value="자">자</option>
						    <option value="부">부</option>
						    <option value="모">모</option>
						    <option value="형제">형제</option>
						    <option value="자매">자매</option>
						    <option value="조부">조부</option>
						    <option value="조모">조모</option>
					  	</select>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">이름<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">         
                    	<label>       	 
					         <input id="family_name" name="family_name" type="text" class="validate" style="width:30%; height:2rem;" required/>			
					    </label>    		    
                    	<label>
					        <input name="kor_yesno" value="Y" class="with-gap" type="radio" />
					        <span>내국인</span>		
					     </label>
					     <label>			     
					        <input name="kor_yesno" value="N" class="with-gap" type="radio" />
					        <span>외국인</span>					       
					     </label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                     <th class="type" scope="col">주민등록 번호<span class="red-text">*</span></th>
                    <td class=""  colspan="5" style="text-align:left;">
                    	<input type="text" name="resident_no1" id="resident_no1" title="주민등록번호(생년월일)"  maxlength="6" required style="width:23%; height:2rem;"/>
						&nbsp; - &nbsp;
		 			 	<input id="resident_no2" type="password"  name="resident_no2" title="주민등록번호(뒷자리)" maxlength="7" required style="width:23%; height:2rem;"/>
                    </td>                    
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">성별<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">                     	  		    
                    	<label>
					        <input name="family_gender" value="M" class="with-gap" type="radio" required/>
					        <span>남자</span>		
					     </label>
					     <label>			     
					        <input name="family_gender" value="F" class="with-gap" type="radio" />
					        <span>여자</span>					       
					     </label>
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">혈액형</th>
                    <td class=""  colspan="5">
                    	<select id="family_blood" name="family_blood" class="browser-default" style="height:2rem; padding:2px; width:10rem;">
						    <option value="" disabled selected>선택하세요</option>
						    <option value="A">A</option>
						    <option value="AB">AB</option>
						    <option value="B">B</option>
						    <option value="O">O</option>
					  	</select>
                    </td>                        
                </tr>
                 <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">유형선택<span class="red-text">*</span></th>
                    <td class="" colspan="5" style="text-align:left;">                             		    
                    	<label>
                    		<input id="dolbom_type" name="dolbom_type" value="시간제" class="with-gap" type="hidden" placeholder="돌봄구분"/>
                    		<input id="select_type" name="select_type" value="일반형" class="with-gap" type="hidden" placeholder="유형선택"/>
					        <input id="ad_level" name="ad_level" value="시간제-라형" class="with-gap" type="radio" checked/>
					        <span>시간제-라형(일반회원은 고정입니다.)</span>		
					     </label>					     
                    </td>                        
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <th class="type" scope="col">특이사항<br/>(기존병력, 부작용 약물 등)</th>
                    <td class="" colspan="5" style="text-align:left;">                             		    
                    		<textarea id="family_etc" name="family_etc" class="comment_write_field jt_form_field jt_form_full_field" style="height:100px;"></textarea>	                    			     
                    </td>                        
                </tr> 
            </tbody>
        </table><!-- .jt_board_list30 -->
        	<!--  가족정보 입력 끝 ====================================================================================== -->
        	</form>	
       
        
      <!-- 등록 버튼 -->
			<div class="row">        			
           		<div class="btn_area double" align="center" style="margin-top:10px;">
					<!-- <span>
						tg-text=terms_button_cancel
						<a href="#" id="btnCancel4"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> --> 
					 <span>
						<!-- tg-text=terms_button_agree -->
						<a href="#" id="saveFamilyBtn" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">등록</a>
					</span> 
					<!--  <input type="submit" value="회원가입" class="waves-effect waves-light btn orange darken-3" /> -->
				</div>
			  </div><!--  row -->
			  
			<!--  가족정보 조회 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">가족정보 조회</span>
				</h5>
				
		<div id="scroll">
		<form class="join-form2" id="join_form2" action="iusersJoinStep5.do" name="form" method="post" >
        	<table class="jt_board_list30" id="familyList" style="width:1800px;">
            <caption>가족정보 조회 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="">선택</th>
                    <th scope="col" class="">가족관계</th>
                    <th scope="col" class="">가족명</th>
                    <th scope="col" class="">생년월일</th>
                    <th scope="col" class="">성별</th>
                    <th scope="col" class="">돌봄구분</th>
                    <th scope="col" class="">판정등급</th>
                    <th scope="col" class="">유형선택</th>
                    <th scope="col" class="title" style="width:15%;">특이사항</th><!-- 
                    <th scope="col" class="">판정일자</th> -->
                    <th scope="col" class="">정부지원잔여시간(연간)</th>
                    <th scope="col" class="">장애유형</th>
                    <th scope="col" class="">양육수당</th>
                    <th scope="col" class="">유아학비수령</th>
                    <th scope="col" class="">보육료수령</th>
                </tr>
            </thead>

            <tbody>
            	
             </tbody>
        </table>
        </form>
       </div><!-- scroll -->
        	<!--  가족정보 조회 끝 ====================================================================================== -->
      </div><!-- jt_board_list_wrap-->
      </div><!--  join_content-->       
      <!-- ===================================================================================================== -->
      <!-- 다음 버튼 -->
      	 <div class="row">        			
           		<div class="btn_area double" align="center" style="margin-top:10px;">
					<span>
						<a href="#" id="btnCancel4"	class="waves-effect waves-light btn grey" role="button" style="width:15%;">취소</a>
					</span> 
					<span>
						<a href="#" id="nextBtn5" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a>
					</span>
				</div>
			  </div> <!--  row -->
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

