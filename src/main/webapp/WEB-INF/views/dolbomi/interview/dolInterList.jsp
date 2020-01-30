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
<c:import url="../dolHeader.jsp"/>

<!--  main =================================================================== -->
<main id="main" class="main_container">

    <div id="main_container_inner" class="notice_list">
<!-- 위에태그 두개 돈터치 -->
        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">돌보미 면접 내역 </h1>
                    <p class="article_desc">신청자와 면접봤던 일정을 조회할 수 있습니다.</p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <!-- 여기서부터  -->
                    
					
					<div class="jt_board_list_wrap">
        <table class="jt_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">번호</th>
                    <th scope="col" class="type">신청자명</th>
                    <th scope="col" class="type">면접 일시</th>                   
                    <th scope="col" class="hit">면접진행상황</th>
                </tr>
            </thead>
			
            <tbody>
             		<c:if test="${empty requestScope.list }">
				            <tr><td colspan="4">조회 할 면접 건이 없습니다.</td></tr>
				    </c:if>
			<c:forEach items="${requestScope.list }" var="dolinter" varStatus="status">
			
                 <tr class="js_full_click  jq_click click_a">
                 	<td class="type">${dolinter.num} </td>
                    <td class="type">${dolinter.inter_user_name }</td>
                    <td class="type">${dolinter.inter_date }&nbsp;&nbsp;${dolinter.inter_time }</td>
                    <td class="hit">${dolinter.inter_status }</td>
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
<!-- 돈터치 -->
    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>