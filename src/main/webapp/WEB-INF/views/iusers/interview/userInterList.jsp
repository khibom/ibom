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
                    <h1 data-font="secondary" class="article_title">돌보미 면접 조회</h1>
                   
                           <p class="article_desc">서비스 신청 시 면접 요청 건이 있다면 조회하 실 수 있습니다.</p>
                    
                   
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    
					
					<div class="jt_board_list2_wrap">
	
				       <table class="jt_board_list2">
				            <caption>게시판 목록</caption>
				            <thead>
				                <tr>
				                    <th scope="col" class="type">번호</th>
				                    <th scope="col" class="type">면접상태</th>
				                    <th scope="col" class="date">요청일시</th>
				                    <th scope="col" class="hit">돌보미명</th>
				                    <th scope="col" class="date">센터명</th>
				                     <th scope="col" class="hit">신청일자</th>
				                </tr>
				            </thead>
				
				            <tbody>
				            <c:if test="${empty requestScope.list }">
				            <tr><td colspan="7">조회 할 면접 건이 없습니다.</td></tr>
				            </c:if>
					<c:forEach items="${requestScope.list }" var="userInterList" varStatus="status">
                                <tr class="js_full_click  jq_click click_a">
			                    	<td class="type">${userInterList.num }</td>
			                     	<td class="date">${userInterList.inter_status }</td>
			                     	<td class="hit">${userInterList.inter_date}&nbsp;&nbsp;${userInterList.inter_time}</td>
			                     	<td class="hit">${userInterList.inter_bomi_name }</td>
			                     	<td class="date">${userInterList.inter_center }</td>
			                     	<td class="date">${userInterList.inter_req_date }</td>
                				</tr>
                	</c:forEach>
            			</tbody>
        			</table><!-- .jt_board_list -->
        
        			<!-- 페이징 시작 -->
         			<div class="jt_pagination" data-font="secondary" id="jt_pagination">
        				<a href="" class="page_numbers first">첫 페이지</a>
						<a href="" class="page_numbers prev ">이전 페이지</a>
                  		<a href="" class="page_numbers">1</a>
                     	<a href="" class="page_numbers next">다음 페이지</a>
                     	<a href="" class="page_numbers last">마지막 페이지</a>
                   </div>
                   <!-- 페이징 종료 -->
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
