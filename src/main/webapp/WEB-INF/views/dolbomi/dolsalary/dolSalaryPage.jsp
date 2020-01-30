<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
                    <h1 data-font="secondary" class="article_title">급여조회</h1>
                    <p class="article_desc"></p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
			
            <div class="article_body">
            
                <div class="wrap_narrow" id="result_wrap">
                <h5 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">급여조회</h5>
                   <table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">정산년도</th>
                    <td scope="col" class="type" >
                    <select name="search_type" class="jt_selectric search_data"id="id-lang" onchange="chageLangSelect()" style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option value="2020" selected>2020</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                                <option value="2010">2010</option>
                                <option value="2009">2009</option>
                                <option value="2008">2008</option>
                                <option value="2007">2007</option>
                     </select>
                    </td>
                	</tr>
                
			</thead>
          </table>
          
           <p style=" color:rgb(243, 114, 51);  float:left; width:49%; margin-left:5px; margin-top:5px;">※조회할 년도를 선택해 주세요.</p>
           
          <div style="width:100%; height:150px; position:relative;"></div>
         <div class="jt_board_list_wrap">
          <p style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;"> ＊ 정산월을 클릭하면 급여 상세내역을 볼 수 있습니다.</p>
          <input type="hidden" name="ibom_id"value="${ loginIuser.user_id}">
          	<table class="jt_board_list">
					 <thead>
                <tr>
                    <th scope="col" class="type">정산월</th>
                    <th scope="col" class="type">돌보미명</th>
                    <th scope="col" class="type">급여총액</th>
                    <th scope="col" class="type">공제총액</th>
                    <th scope="col" class="type">실지급액</th>
                    <th scope="col" class="type">지급일자</th>
                    <th scope="col" class="type">지급센터명</th>
                </tr>
               
            </thead>
            <tbody>
            <c:forEach var="i" items="${list}">
            	<tr><%-- dol_id=${loginDolbomi.dol_id}&payoff_month=${i.payoff_month} --%>
            												
            		<th scope="col" class="type"><a href="${pageContext.request.contextPath}/dolbomi/moveDolsalDetail.do?dol_id=${loginDolbomi.dol_id}&payoff_month=${i.payoff_month}">${i.payoff_month}</a></th>
                    <th scope="col" class="type">${loginDolbomi.dol_name}</th>
                    <th scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.tot_salary}" /></th>
                    <th scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.tot_deduction}" /></th>
                    <th scope="col" class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${i.pay}" /></th>
                    <th scope="col" class="type">${i.payoff_month}</th>
                    <th scope="col" class="type">${of.office_name}</th>
            	</tr>
            </c:forEach>
            </tbody>
          </table>
          </div>
          <div style="width:100%; height:100px; position:relative;"></div>
         
            </div><!-- .article_body -->
        </div><!-- .article -->
	</div>
    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>

