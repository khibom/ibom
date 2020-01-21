<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
<link rel="stylesheet" href="/ibom/resources/css/accountSumary.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize.css" />
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
<script type="text/javascript">
$(function(){
	// Get the modal
    var modal = document.getElementById('myModal');

    // Get the button that opens the modal
    var btn = document.getElementById("myBtn");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];                                          

    // When the user clicks on the button, open the modal 
    btn.onclick = function() {
        modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
        }
    }
});
function refundDel(){
	
	if(confirm("계좌를 삭제하시겠습니까?")){
		var delId = '${loginIuser.user_id}';
		
		location.href="${pageContext.request.contextPath}/iusers/delRestrict.do?user_id=" + delId;
		return false;
	}else{
		return false;
	}
	var delId = '${loginIuser.user_id}';
	
	location.href="${pageContext.request.contextPath}/iusers/delRestrict.do?user_id=" + delId;
}

function refundRequest(){
	
	var checkRefund = '${re.refund_account}';
	
	if(checkRefund == ""){
		alert("계좌를 먼저 등록해주세요.")
		return false;
	}
	
	if(confirm("환불 요청하시겠습니까?")){
		var userId = '${loginIuser.user_id}';
		alert("환불요청이 완료되었습니다.")
		location.href="${pageContext.request.contextPath}/iusers/depoUse.do?user_id=" + userId;
		return false;
	
	}else{
		return false;
	}
}
function chageLangSelect(){
    var langSelect = document.getElementById("id-lang");
    var dol_id = "${loginDolbomi.dol_id}";
    // select element에서 선택된 option의 value가 저장된다.
    selectValue = langSelect.options[langSelect.selectedIndex].value;
 	
    location.href="${pageContext.request.contextPath}/dolbomi/dolsalList.do?dolSalYear=" + selectValue + "&dol_id=" + dol_id;
}
function back(event){
	javascript:history.back();
	event.stopPropagation();
	event.preventDefault();
}
//------------------------------팝업---------------------------

function specifications(obj) {

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
		/* win.document.write('<html><head><title></title>');
		win.document.write("<link rel='stylesheet' href='/ibom/resources/css/styles.css' />");
		win.document.write("<link rel='stylesheet' href='/ibom/resources/css/accountSumary.css' />");
		win.document.write("<link rel='stylesheet' href='/ibom/resources/materialize/css/materialize.css' />");
		win.document.write('</haed><body>');
		win.document.write(obj);
 		win.document.write('</body></html>'); */
		
		win.document.write("<html><head><title></title><style>");
		win.document.write("table th{30%; }");
		win.document.write("table td{30%;}");
		win.document.write("</style></haed><body>");
		win.document.write("<h1 align='center'>우리 아이봄 급여 명세서</h1><br><h4 style='float:right;margin:0;'>지급일:${dols.payoff_month}</h4>");
		win.document.write("<table  cellpadding='5'style='margin-top:10px;' align='center'width='100%'border='1'>");
		win.document.write("<tr>");
		win.document.write("<th>직급</th>");
		win.document.write("<td>돌보미</td>");
		win.document.write("<th>성명</th>");
		win.document.write("<td>${loginDolbomi.dol_name}</td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>소속</th>");
		win.document.write("<td>${of.office_name}</td>");
		win.document.write("<th>가입일자</th>");
		win.document.write("<td>${loginDolbomi.dol_enrolldate}</td>");
		win.document.write("</tr>");
		win.document.write("</table>");
		win.document.write("<div style='height:50px;'></div>");
		win.document.write("<h3 align='left'style='margin:0;'>급여계좌</h3>");
		win.document.write("<table cellpadding='5'style='margin-top:7px;'align='center'width='100%' border='1'>");
		win.document.write("<tr>");
		win.document.write("<th>은행</th>");
		win.document.write("<td>${loginDolbomi.bank}</td>");
		win.document.write("<th>계좌번호</th>");
		win.document.write("<td><c:out value='${fn:substring(loginDolbomi.dol_account, 0, fn:length(loginDolbomi.dol_account) - 4)}' />****</td>");
		win.document.write("</tr>");
		win.document.write("</table>");
		win.document.write("<div style='height:50px;'></div>");
		win.document.write("<h3 align='left'style='margin:0;'>급여내역</h3>");
		win.document.write("<table cellpadding='5'style='margin-top:7px;'align='center'width='100%' border='1'>");
		win.document.write("<tr>");
		win.document.write("<th colspan='2'>지급내역</th>");
		win.document.write("<th colspan='2'>공제내역</th>");	
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>지급액</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.tot_salary}' /></td>");
		win.document.write("<th>국민연금</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.n_pension}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>심야수당</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.midnight_sal}' /></td>");
		win.document.write("<th>건강보험</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.nhis}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>종합형수당</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.all_sal}' /></td>");
		win.document.write("<th>고용보험</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.emp_insurance}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>휴일수당</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.holi_pay}' /></td>");
		win.document.write("<th>주민세</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.residence_tax}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>교통비</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.traffic_mny}' /></td>");
		win.document.write("<th>기타공제액</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.de_etc}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>취소위약금</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.can_penalty}' /></td>");
		win.document.write("<th></th>");
		win.document.write("<td></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>연장 근로수당</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.over_time}' /></td>");
		win.document.write("<th></th>");
		win.document.write("<td></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th>총 지급액</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.tot_salary}' /></td>");
		win.document.write("<th>총 공제액</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.tot_deduction}' /></td>");
		win.document.write("</tr>");
		win.document.write("<tr>");
		win.document.write("<th></th>");
		win.document.write("<td></td>");
		win.document.write("<th>실 수령액</th>");
		win.document.write("<td><fmt:formatNumber type='number' maxFractionDigits='3' value='${dols.pay}' /></td>");
		win.document.write("</tr>");
		win.document.write("</table>");
		win.document.write("<div style='height:50px;'></div>");
		win.document.write("<h2 align='center'>${loginDolbomi.dol_name}님의 노고에 감사드립니다.</h2>");
		win.document.write("<div style='height:50px;'></div>");
		win.document.write("<h4 align='right'>${of.office_name}</h4>");
 		win.document.write("</body></html>"); 
		win.document.close();
		win.print();
		win.close();

}

</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>
<style>
.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 35%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }

</style>
</head>
<body>
<c:import url="../dolHeader.jsp"/>



<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
        <!-- 안에서 작업시작 -->
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">급여상세조회</h1>
                    <p class="article_desc"></p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
			
            <div class="article_body">
            <div class="wrap_narrow" id="result_wrap">
         <div class="jt_board_list_wrap">
         <div id="specifications">
         <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">급여상세조회</h5>  
          	<table class="jt_board_list">
                <tr>
                    <th scope="col" class="type">정산월</th>
                    <td scope="col" class="type">${dols.payoff_month}</td>
                    <th scope="col" class="type">급여총액</th>
                    <td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.tot_salary}" /></td>
                    <th scope="col" class="type">실지급액</th>
                   	<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.pay}" /></td>
                </tr>
               	<tr>
               	</tr>
          </table>
     	
          <div style="width:100%; height:100px; position:relative;"></div>
         <div class="jt_board_list_wrap">
         <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">활동비 상세내역</h5>  
          	<table class="jt_board_list">
                <tr>
                    <th scope="col" class="type">구분</th>
                    <th scope="col" class="type">합계</th>
                    <th scope="col" class="type">기본활동수당</th>
                    <th scope="col" class="type">심야수당</th>
                    <th scope="col" class="type">휴일수당</th>
                    <th scope="col" class="type">종합형수당</th>
                    <th scope="col" class="type">교통비</th>
                    <th scope="col" class="type">취소위약금</th>
                </tr>
               	<tr>
               		<td scope="col" class="type">${dols.activit_cgory}</td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.tot_salary}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.tot_salary}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.midnight_sal}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.holi_pay}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.all_sal}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.traffic_mny}" /></td>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.can_penalty}" /></td>
               	</tr>
          </table>
          </div>
          <div style="width:100%; height:100px; position:relative;"></div>
         <div class="jt_board_list_wrap">
         <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">수당 상세내역</h5>  
          	<table class="jt_board_list">
               	<tr>
               		<th scope="col" class="type">수당합계</th>
               		<td colspan="3" scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.tot_salary}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">연장근로수당</th>
               		<td colspan="3" scope="col" class="type">${dols.over_time}</td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">기타수당(공제)</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.de_etc}" /></td>
               		<th scope="col" class="type">기타수당내용(공제)</th>
               		
               		<td scope="col" class="type">${dols.de_content}</td>
               	</tr>
          </table>
          </div>
          <div style="width:100%; height:100px; position:relative;"></div>
         <div class="jt_board_list_wrap">
         <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">공제 상세내역</h5>  
          	<table class="jt_board_list">
               	<tr>
               		<th scope="col" class="type">공제총액</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.tot_deduction}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">국민연금</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.n_pension}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">건강보험</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.nhis}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">고용보험</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.emp_insurance}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">주민세</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.residence_tax}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">기타공제액</th>
               		<td scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${dols.de_etc}" /></td>
               	</tr>
               	<tr>
               		<th scope="col" class="type">기타공제내용</th>
               		<td scope="col" class="type">${dols.de_content}</td>
               	</tr>
          </table>
          </div>
          </div>
          <button onclick="back();" class="btn waves-effect orange darken-3"style="float:right; margin-top:10px;" name="action">
               		<i class="material-icons right">list</i>목록
          </button>
          <button onclick="specifications(document.getElementById('specifications').innerHTML);" class="btn waves-effect orange darken-3"style="float:left; margin-top:10px;" name="action">
               		<i class="material-icons right">local_printshop</i>인쇄
          </button>
            </div><!-- .article_body -->
        </div><!-- .article -->
	</div>
    </div><!-- #main_container_inner -->
</div>
    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>

