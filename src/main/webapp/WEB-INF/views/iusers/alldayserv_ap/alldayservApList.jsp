<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet" href="/ibom/resources/css/alldayservice.css" />
<!-- 가져온거 -->
<link rel="stylesheet" href="/ibom/resources/css/accountSumary.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize2.css" />
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<!-- 가져온거 -->
<script src="/ibom/resources/materialize/js/materialize.js" ></script>
<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
	
	
	
function adsaIn(){
	location.href='${pageContext.request.contextPath}/iusers/moveAllDayAp.do'
	
}
$(function(){
	 $('table tbody tr').on('click', function() {
	        location.href = $(this).children('td').children('a').attr('href');
	        return false;
	    });
})
</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>

</head>
<body>
<c:import url="../iusersHeader.jsp"/>
<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">종일제서비스 대기신청</h1>
				</div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <div class="jt_single">
						
								<div class="noticeBox2">
		                        	<p>· 만 36개월 이하 아동 가정 뿐만 아니라 임신, 출산휴가, 육아휴직 기간에도 향후 이용을 위한 대기 신청이 가능합니다.</p>
                           			<p>· 대기번호는 자격요건 확인이나 매칭 상황에 따라 변경될 수 있습니다.</p>
                          			<p>· 대기신청서는 신청인당 한 건만 작성 가능합니다.</p>
                           			<p>· 대기 신청 취소 및 신청 사항 변경을 원하시면 서비스제공기관에 문의하시기 바랍니다.</p>
		                        </div><!-- noticeBox2 -->
		                        <br> 
						
						<!-- .jt_single_content -->
						
						
<button onclick="adsaIn();" id="myBtn" class="btn waves-effect orange darken-3"style="float:left;" name="action">신청서작성</button>
<br>
						<br>
 				<p class="article_desc"></p>
					</div>
                
                
                
					<div class="jt_board_list2_wrap">
	
				       <table class="jt_board_list2">
				            <caption>게시판 목록</caption>
				            <thead>
				                <tr>
				                    <th scope="col" class="type">번호</th>
				                   
				                    <th scope="col" class="date">신청일자</th>
				                    <th scope="col" class="hit">아동명<br>(태명)</th>
				                    <th scope="col" class="date">생년월일<br>(출산예정일)</th>
				                    <th scope="col" class="hit">돌봄시작<br>희망월</th>
				                    <th scope="col" class="hit">대기번호</th>
				                    <th scope="col" class="date">대기신청<br>접수일</th>
				                </tr>
				            </thead>
				
				            <tbody>
				           			 <c:if test="${empty requestScope.list }">
								            <tr><td colspan="8">조회 할 신청 건이 없습니다.</td></tr>
								    </c:if>
					<c:forEach items="${requestScope.list }" var="adsaList" varStatus="status">
                               	<tr class="js_full_click  jq_click click_a">
                               	<c:url var="detail" value="/iusers/allDayApDetail.do"><c:param name="stitle" value="${adsaList.adsa_no }"/></c:url>
				                    <td class="type"><a href="${detail }">${adsaList.adsa_no }</a></td>
				                   
				                     <td class="date">${adsaList.req_date }</td>
				                     <td class="hit">${adsaList.baby_name }</td>
				                     <td class="date">${adsaList.baby_birth }</td>
				                     <td class="hit">${adsaList.start_hope_month }</td>
				                     <td class="hit">${adsaList.waiting_no }</td>
				                     <td class="date">${adsaList.receipt_date }</td>
				                </tr>
				                </c:forEach>
				            </tbody>
				        </table><!-- .jt_board_list -->
        		
    </div>
    
    
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>
