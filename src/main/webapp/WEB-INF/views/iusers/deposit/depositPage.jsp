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
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/css/accountSumary.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize2.css" />
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js" ></script>

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
	 var searchTarget = "${Y}";
	   
		if(searchTarget != ""){
			var scrollPosition = $("#listTarget").offset().top;
	 		$("html,body").animate({
	 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
		}, 0);
		}
});
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
function checkRefund(){
	
	 var refund = $("#refund").val();
	var refundName= $("#refund_name").val();
	
	if(refund == ""){
		alert("계좌를 입력하세요!")
		return false;
	}
	// var checkRefund = /[1-9]{1,20}$/;
	/* if(!checkRefund.test(refund)){
		alert("계좌번호 형식을 확인하세요!")
		return false;
	}  */
	
	 if(refundName == ""){
		alert("이름을 입력해 주세요!")
		return false;
	}
	
}
function searchDepo(){
	var shDepo = document.getElementById('searchDepo');
	shDepo.submit();
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
<c:import url="../iusersHeader.jsp"/>
<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
        <!-- 안에서 작업시작 -->
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">예치금 관리</h1>
                    <p class="article_desc"></p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
			
            <div class="article_body">
            
                <div class="wrap_narrow" id="result_wrap">
                <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">예치금관리</h5>
                   <table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">환불요청계좌</th>
                    <td scope="col" class="type" >
                    <c:if test="${not empty re}">
                    <p style="display:inline-block;margin-top:10px;">(${re.bank_name})<c:out value="${fn:substring(re.refund_account, 0, fn:length(re.refund_account) - 4)}" /> **** 예금주: ${re.refund_name}</p>
                    <button onclick="refundDel();" class="btn waves-effect orange darken-3"style="float:right;" name="action">계좌삭제
               		<i class="material-icons right">delete_forever</i>
               		</button>
                   </c:if>
                   <c:if test="${empty re}">
                    <button onclick="refundDel();" id="myBtn" class="btn waves-effect orange darken-3"style="float:right;" name="action">계좌등록
               		<i class="material-icons right">attach_money</i>
               		</button>
                   </c:if>
                    </td>
                </tr>
           		 <tr>
                    <th scope="col" class="title" style="width:3%; ">잔여 예치금</th>
                    
                    <td scope="col" class="type">
                    <c:if test="${not empty loginIuser.depo_pay}">
                   	<fmt:formatNumber type="number" maxFractionDigits="3" value="${ loginIuser.depo_pay}" />&nbsp;원
                   	<c:if test="${loginIuser.depo_pay ne '0'}">
                   	<c:if test="${ms ne 'Y'}">
                   	<button onclick="refundRequest();" class="btn waves-effect orange darken-3"style="float:right;" name="action">환불요청
               		<i class="material-icons right">attach_money</i>
               		</button>  		
                   	</c:if>
                   	</c:if>
                   	</c:if>
                   	<c:if test="${empty loginIuser.depo_pay}">
                   		0원	
                    </c:if>	
                    </td>
                </tr>
                
			</thead>
          </table>
    <div id="myModal" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span><br/><br/><br/>
        <h4 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">계좌 등록</h4>
        <form action="${pageContext.request.contextPath}/iusers/inRestrict.do" onsubmit="return checkRefund();" method="post">
        <input type="hidden" name="user_id" value="${loginIuser.user_id }">
        <input type="hidden" name="refund_name" value="${loginIuser.user_name}">
         <table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:8%; ">은행명</th>
                    <td scope="col" class="type" >
                    <select name="bank_name" class="jt_selectric search_data" style="width:50%;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    	<option value="우리은행">우리은행</option>
                    	<option value="신한은행">신한은행</option>
                    	<option value="우리은행">국민은행</option>
                    	<option value="농협">농협</option>
                    	<option value="기업은행">기업은행</option>
                    	<option value="신협">신협</option>
                    </select>
                    </td>
                </tr>
           		 <tr>
                    <th scope="col" class="title" >계좌번호</th>
                    <td scope="col" class="type">
                   	<input type="text" id="refund"name="refund_account" style="float:left;margin-left:10px;  width:97%;" required>		
                    </td>
                </tr>
                <tr>
                    <th scope="col" class="title">예금주</th>
                    <td scope="col" class="type">
                   	<p style="float:left; color:black;">${loginIuser.user_name}</p>		
                    </td>
                </tr>
			</thead>
          </table>
          <p style="float:left; color:rgb(243, 114, 51);">※예금주는 본인 이름으로만 가능합니다.</p><br><br><br>
          <input type="submit" class="btn waves-effect orange darken-3"style="float:right; margin-top:10px;" value="계좌등록" name="action">        		
         </form>
        <br><br><br>
      </div>
 	</div>
           <p style=" color:rgb(243, 114, 51); font-size:11pt; float:left; width:58%; margin-left:5px;">※'환불요청'한 예치금은 서비스제공기관에서 확인 후 이체시 등록된 계좌로 환불됩니다.</p>
           <div id="listTarget"></div>
          <div style="width:100%; height:150px; position:relative;"></div>
         <div class="jt_board_list_wrap">
          <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">예치금 내역</h5>
          <form action="${pageContext.request.contextPath}/iusers/searchdepo.do" id="searchDepo">
          <input type="hidden" name="ibom_id"value="${ loginIuser.user_id}">
          	<table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">서비스이용기간</th>
                    <td scope="col" class="type" >
     
                 <div class="input-field col s2" >
                      <i class="material-icons prefix">date_range</i>
                  <input type="date" name="stDate" id="resident_no1" class="validate" style="width:20%;" />
                 &nbsp;                 
                 <strong>~</strong>
                 &nbsp;
                    <i class="material-icons prefix">date_range</i>
                      <input id="resident_no2"name="endDate" type="date" class="validate" style="width:20%;">
                      <button onclick="searchDepo();" class="btn waves-effect orange darken-3"style="float:right; margin-top:10px;" name="action">검색
               <i class="material-icons right">call_missed_outgoing</i>
               </button>
                 </div>
                 
                  </td>
                </tr>
			</thead>
          </table>
          </form>
          </div>   
          <div style="width:100%; height:100px; position:relative;"></div>
          <!--  list 처리 -->
          
          <div class="jt_board_list_wrap">
		<table class="jt_board_list">
            <thead>
                <tr>
                    <th scope="col" class="type">일자</th>
                    <th scope="col" class="type">예치구분</th>
                    <th scope="col" class="type">예치금액</th>
                    <th scope="col" class="type">사용금액</th>
                    <th scope="col" class="type">특이사항</th>
                </tr>
               
            </thead>
            
            <tbody>
            	<c:forEach var="de" items="${depo}" varStatus="status">
				<tr class="js_full_click  jq_click click_a">
                   <td class="type">${de.use_day}</td>
                   <td class="type">${de.depo_category}</td>
                   <td class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${ loginIuser.depo_pay}" /></td>
                    <td class="type">${de.use_pay}</td>
                   <c:if test="${not empty de.depo_etc}">
                   <td class="type">${de.depo_etc}</td>
                   </c:if>
                   <c:if test="${empty de.depo_etc}">
                   <td class="type">없음</td>
                   </c:if>
                </tr>
                </c:forEach>
            </tbody>
        </table>
          		</div>
            </div><!-- .article_body -->
        </div><!-- .article -->
	</div>
    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>

