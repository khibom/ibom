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

<script type="text/javascript">
$(document).ready(function() {
	 function print(printArea)
	 {
	 		win = window.open(); 
	 		self.focus(); 
	 		win.document.open();
	 		
	 		/*
	 			1. div 안의 모든 태그들을 innerHTML을 사용하여 매개변수로 받는다.
	 			2. window.open() 을 사용하여 새 팝업창을 띄운다.
	 			3. 열린 새 팝업창에 기본 <html><head><body>를 추가한다.
	 			4. <body> 안에 매개변수로 받은 printArea를 추가한다.
	 			5. window.print() 로 인쇄
	 			6. 인쇄 확인이 되면 팝업창은 자동으로 window.close()를 호출하여 닫힘
	 		*/
	 		win.document.write('<html><head><title></title><link href="/ibom/resources/css/styles.css" rel="stylesheet"><link href="/ibom/resources/materialize/css/materialize.css" rel="stylesheet"><style>');
	 		win.document.write('body, td {font-falmily: Verdana; font-size: 10pt;}');
	 		win.document.write('</style></head><body>');
	 		win.document.write(printArea);
	  		win.document.write('</body></html>');
	 		win.document.close();
	 		win.print();
	 		win.close();
	 } 
	
	
$("#btnCancel").click(function(event) {
	var result = confirm("회원가입을 취소하시겠습니까?")
	if(result){
		alert("이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.");
		clickcr(this, 'tos.disagree', '', '', event);
	    sessionStorage.clear();
	    console.log(sessionStorage.length);
	    submitDisagree();
	    return false;
	} else {
		alert("우리i봄 서비스 신청 및 연계시 필요한 정보이므로, 약관 및 기본정보, 가정현황, 이용사항, 요구사항 등의 정보를 정확하게 입력해 주시기 바랍니다.");				 
	}
    
});

 $("#nextBtn6").click(function(event) {        
            submitAgree();
            return false;
 });
 
}); // end document.ready


function submitAgree() {
	
		// 체크여부 확인
		if($("input:checkbox[name=user_comply]").is(":checked") != true) {
		  //작업
			alert("이용자 준수사항은 필수 선택값 입니다.");
			return false;
		}
    	 sessionStorage.setItem("user_comply", "Y");
    
  $("#join_form").submit();
   return true;
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
                    <p class="article_desc">동의하지 않을 경우 이용자 등록이 완료되지 않아 우리i봄 서비스를 이용하실 수 없습니다.</p>
                </div><!-- .wrap_narrow -->
    		</div><!-- article_header -->
    	<!-- 타이틀 끝 =========================================================================== -->
		<div class="article_body">
			<div class="wrap_narrow" id="result_wrap">
				<div class="join_content">			
			
					<div class="jt_board_list_wrap">	
			
			<!--  가족정보 조회 시작 ====================================================================================== -->
				<h5>
					<span class="join_s">아이돌봄서비스 이용자 서약서(시간제, 영아종일제, 질병감염아동지원 공통)</span>
					<span class="star">본인은 아이돌봄서비스를 이용하면서 아이돌봄서비스 이용규정을 준수하고 아이돌보미의 인격을 최대한 존중하며 아이돌봄서비스가 원활히 이루어질 수 있도록 아래의 준수사항을 지킬 것을 서약합니다.</span>
				<br/>	<br/>	<br/>	
				</h5>	
				
			<div id="printArea"><!--  프린트 영역 -->
				<div class="privacy_box_container nicescroll_area_outer" style="height:400px; margin-bottom:0;">
                        <div class="nicescroll_area" tabindex="1" style="overflow: hidden; outline: none;">
                        <h2 class="privacy_box_title">준수사항</h2>
                            <p>○아이돌봄서비스 이용규정 준수</p>
                           
                            <ul>
                                <li style="line-height: 1.5;"> 서비스 이용과 관련된 서식 및 증빙서류는 사실에 기초하여 작성･제출하고, 관할 시･군･구, 서비스제공기관, 광역거점기관의 추가 자료요구 및 불시 현장방문･점검에 대해 동의하며 성실히 협조한다.
                                	<br><br>
                                		* 정부지원 결정에 따른 정부지원 시점은 정부지원 결정 처리 완료 시점으로 함<br/>
                                		* 서류 제출이 늦어져 정부지원액이 감소하더라도 그 차액은 환급되지 않음                               	
                               </li >
                                <li style="line-height: 1.5;"> 정부지원 결정가구(‘가’, ‘나’, ‘다’ 유형으로 소득판정을 받은 가구)의 경우 [행복e음 등록한 신청자 정보 = 국민행복카드 명의자 정보 = 홈페이지 가입자 정보]가 상호 일치, ‘라’ 유형 가구(중위소득 150% 초과 가구)는 [국민행복카드 명의자 정보 = 홈페이지 가입자 정보]가 상호 일치해야 아이돌봄서비스를 정상적으로 이용 가능함을 확인하다.</li>
                                <li style="line-height: 1.5;"> 정부지원 결정 가구가 정부지원 시간(영아종일제 월 60시간~200시간, 시간제 연 720시간)을 초과한 경우와 ‘라’ 유형 가구의 경우는  전액 본인부담(이용시간 제한 없음)으로 아이돌봄서비스를 이용함을 확인한다. 
    							<br/><br/>
    							 ☞ ’19년부터 신청 후 시간 추가 시 30분 단위 서비스 이용시간 추가 가능 </li>
                                <li style="line-height: 1.5;"> 서비스 유형(시간제↔종일제)을 변경할 경우, 정부지원시간 및 이용기간의 변동이 생길 수 있으므로 사용가능한 정부지원시간 및 이용기간은 서비스제공기관으로 문의한다.
                                <br/><br/>
                                *(예시) 시간제 연 720시간 정부지원일 경우, 이용가정이 정부지원으로 80시간 시간제 돌봄을 이용한 후 종일제로 유형을 변경한다면, 해당 연도 중 10개월 종일제 및 40시간 시간제 정부지원 가능함
                                </li>
                                <li style="line-height: 1.5;"> 정부지원은 예산 및 신규 수요 등의 변화에 따라 불가피하게 지원대상, 지원시간, 지원금액 등이 확대 또는 축소될 수 있음을 확인한다.
                                <br/><br/>
                                *아이돌봄서비스 이용비용은 여성가족부 고시 제 2018-57호에 따름
                                </li>
                                <li style="line-height: 1.5;"> 서비스 이용 시 서비스 종류‧이용시간‧아동 수‧정부지원에 따른 이용비용, 납부절차, 이용자 에티켓, 기관 공지사항 등을 아이돌봄 홈페이지에서 확인하고 이용한다.
                                <br/><br/>
                                * 서비스 이용 관련 문의 사항 : 평일 업무시간(09:00~18:00) 내 해당 서비스제공기관으로 문의
                                </li>
                                <li style="line-height: 1.5;"> 서비스 이용절차는 아이돌봄 홈페이지 신청 및 서비스제공기관의 아이돌보미 연계를 원칙으로 하며 서비스제공기관에 의하지 않은 이용자와 아이돌보미 간 임의적 연계의 경우 정부지원금이 환수될 수 있음을 인지하고 동의한다. </li>
                                <li style="line-height: 1.5;"> 영아종일제서비스의 경우 월 단위로 이용자와 서비스제공기관(아이돌보미)이 계약하며 아이돌보미 면접(서비스 연계 시까지 월 최대 2회) 시 비용(1만2천원)은 이용가정이 부담한다. 해당 월 서비스 연계 후 이용자 사정으로 인해 아이돌보미가 휴무하게 되는 경우 월 계약 규정에 따른다.(영아종일제는 서약서 12, 13, 14번 규정 미해당)
                                <br/><br/>
                                * 아이돌보미가 보수교육 이수를 이유로 서비스를 제공할 수 없는 경우가 발생할 수 있음을 양해하며 이 경우 서비스 이용비용은 지불하지 않음
                                </li>
                                <li style="line-height: 1.5;"> 서비스 제공 장소는 아이돌봄서비스 이용가정이 원칙임을 확인하다.</li>
                                <li style="line-height: 1.5;"> 서비스 이용 및 종료 시간을 엄격히 지켜야 하고 부득이한 사정으로 늦을 경우 아이돌보미에게 연락하여 양해를 구하여야 하며 서비스 반드시 보호자가 아동을 인계 받아야 한다.</li>
                                <li style="line-height: 1.5;"> 서비스 연계 후 국민행복카드 이용 시 아이돌봄서비스 본인부담금은 카드사로 납부하며 미납금이 발생할 경우, 서비스제공기관 담당자가 고지 후 방문하여 미납금을 지급 받을 수 있음을 인지하고 동의한다.
                                <br/><br/>
                                *가상계좌 이용자는 서비스 이용 1일 전(공휴일 제외)까지 부여된 가상계좌)에 선 지급하는 것을 원칙으로 하며, 서비스 이용료를 지급하지 않을 경우 서비스 이용이 제한됨
                                </li>
                                <li style="line-height: 1.5;"> 서비스 이용 신청 및 취소는 반드시 홈페이지를 통해 취소하여야 하며 불가피한 경우 서비스제공기관(업무시간 내)을 통하고, 서비스 시작 시간 기준 24시간 이내 취소 시 신청건당 취소수수료 9,650원이 발생함을 인지하고 동의한다.</li>
                            </ul>
                        </div><!-- .nicescroll_area -->
                    </div>	
                    </div> <!-- 프린트 영역 끝 -->
                    <form role="form" name="join_form" id="join_form" action="iusersJoinStep6.do" method="post">
                   
                   	<p style="margin-top:20px;">
			      <label>
			        <input id="user_comply" name="user_comply" type="checkbox" class="filled-in" />
			        <span>이용자 준수사항을 확인하였으며, 이에 동의합니다.</span>&nbsp;&nbsp;
			        <input type = "button" class="btn btn-primary" onClick="print(document.getElementById('printArea').innerHTML)" value="인쇄하기"/>
			        <!-- <button onClick="print(document.getElementById('printArea').innerHTML)" value="인쇄하기" id="print" type="button" class="waves-effect waves-light btn-small"><i class="material-icons right">print</i>인쇄</button> -->
			      </label>
			    </p>
			    </form>
        	<!--  가족정보 조회 끝 ====================================================================================== -->
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
						<a href="#" id="nextBtn6" class="waves-effect waves-light btn orange darken-3" role="button" style="width:15%;">다음 단계</a>
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

