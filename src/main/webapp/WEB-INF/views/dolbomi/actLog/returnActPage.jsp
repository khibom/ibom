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
<script type="text/javascript">
$(function(){
});
function moveDetailReturnAct(value){
	
	location.href="${pageContext.request.contextPath}/dolbomi/moveDetailReturnAct.do?value=" + value;
}
</script>
</head>
<body>
<c:import url="../dolHeader.jsp"/>



<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">급여반려페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    <div class="jt_search preserve">
                        <div class="jt_search_category jt_selectric_wrap" >
                            <select name="search_type" class="jt_selectric search_data" style="height:49px;margin:0 49px 0 18px; line-height:49px;">
                                <option value="all">전체</option>
                                <option value="bo_title">제목</option>
                                <option value="bo_content">내용</option>
                            </select>
                        </div><!-- .jt_search_category -->
                        <div class="jt_search_field">
                            <label class="jt_search_label"><input type="text" name="search_str" value="" class="jt_search_input jt_form_field search_data jq_keydown enter-search" placeholder="검색어를 입력하세요"/></label>
                            <button class="jt_search_button jq_click search">검색하기</button>
                        </div><!-- .jt_search_field -->
                    </div><!-- .jt_search -->
					
					
					<div class="jt_board_list_wrap">
        <table class="jt_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">서비스번호</th>
                    <th scope="col" class="title">일시</th>
                    <th scope="col" class="hit">보호자명</th>
                    <th scope="col" class="type">아동명</th>
                    <th scope="col" class="type">서비스유형</th>
                    <th scope="col" class="type">제출구분</th>
                    <th scope="col" class="type">진행상태</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="i" items="${list}">
                <tr  id="${i.service2_no},${i.family_code},${i.dolbom_type}" onclick="moveDetailReturnAct(this.id);">
                    <td scope="col" class="type">${i.service2_no}</td>
                    <td scope="col" class="type">${i.start_time} ~ ${i.end_time}</td>
                    <td scope="col" class="type">${i.transferor }</td>
                    <td scope="col" class="type">${i.family_name }</td>
                    <td scope="col" class="type">${i.dolbom_type }</td>
                    <c:if test="${i.log_category eq 'Y'}">
                    <td scope="col" class="type">제출</td>
                    </c:if>
                    <c:if test="${i.log_category eq 'N'}">
                    <td scope="col" class="type">미제출</td>
                    </c:if>
                    <td scope="col" class="type">${i.process_ctgry }</td>
                   
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
