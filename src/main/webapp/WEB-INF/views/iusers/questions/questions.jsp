<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
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
<link rel="stylesheet" href="/ibom/resources/css/questions.css" />
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	/* function button1_click() {
		if(confirm("정말로 취소하시겠습니까?")){
			location.href='qnadelete.do?anum=' + ${row.qna_no}
		}else{
			alert("취소되었습니다.");
		}
		return false;
	} */
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
	<div id="skip">
		<a href="#main">메인 콘텐츠 바로가기</a>
	</div>
	<!--  header 시작 ============================================= -->
	<c:choose>
	<c:when test="${!empty iuser.user_id && empty dol.dol_id}">
	<c:import url="../iusersHeader.jsp"/>
	</c:when>
	<c:when test="${empty iuser.user_id && !empty dol.dol_id}">
	<c:import url="../../dolbomi/dolHeader.jsp"/>
	</c:when>  
	</c:choose>
	<!--  header 끝 ============================================= -->

<!--  메인 ================================================================== -->
	<main id="main" class="main_container">
	<div id="main_container_inner" class="notice_list">
			<div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">1:1문의</h1>
                    <p class="article_desc">궁금한점을 언제든지 질문할 수 있는 1:1문의 페이지 입니다.</p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <form action="movequestions.do" method="get">
                    <div class="jt_search2 preserve">
                        <div class="jt_search2_category jt_selectric_wrap" >
                            <select name="selectoption" class="jt_selectric search_data" style="height:49px;margin:0 49px 0 18px; line-height:49px;">
                                <option value="title">제목</option>
                                <option value="uname">작성자</option>
                            </select>
                        </div><!-- .jt_search2_category -->
                        <div class="jt_search2_field">
                            <label class="jt_search2_label"><input type="text" name="searchtext" class="jt_search2_input jt_form_field search_data jq_keydown enter-search" placeholder="검색어를 입력하세요"/></label>
                            <input type="submit" value="검색하기" class="jt_search2_button search">
                        </div><!-- .jt_search2_field -->
                    </div><!-- .jt_search2 -->
					</form>
					<div class="jt_grid_btn_control preserve">
                            <a data-font="secondary" style="margin-bottom:10px;" href="moveqnainsert.do" class="comment_write_submit"><span>문의하기</span></a>
                            
                        </div>
					<div class="jt_board_list_wrap">
        <table class="jt_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                	<th scope="col" class="type">번호</th>
                    <th scope="col" class="hit">민원구분</th>
                    <th scope="col" class="title">제목</th>
                    <th scope="col" class="hit">등록일</th>
                    <th scope="col" class="date">상태</th>
                    <th scope="col" class="hit">취소하기</th>
                </tr>
            </thead>
			<c:forEach var="row" items="${questionList}">
            <tbody>
                                <tr>
                                <td class="type">${row.qna_no}</td>
 
                                <td class="hit">${row.civil_petition}</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">
                                                        <a href="qnadetail.do?anum=${row.qna_no}&page=${commonPage.currentPage}">${row.qna_title}</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="date">${row.qna_date}</td>
                    <td class="hit">${row.qna_state}</td>
                    <c:choose>
                    <c:when test="${row.qna_state == '미처리' && row.user_name == iuser.user_name && row.dol_name == dol.dol_name}">
                    <td class="hit"><button type="button" id="button1" onclick="location.href='qnadelete.do?anum=${row.qna_no}'" class="jt_search3_button search">취소하기</button></td>
                    </c:when>
                    <c:when test="${row.qna_state == '처리완료' || row.user_name != iuser.user_name || row.dol_name != dol.dol_name }">
                    <td class="hit"></td>
                    </c:when>
                    </c:choose>
                </tr>
            </tbody>
             </c:forEach>
        </table><!-- .jt_board_list -->
        <div class="jt_pagination" data-font="secondary" id="jt_pagination">
        <a href="movequestions.do?page=1&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers first">첫 페이지</a>
                  <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
                     <a href="movequestions.do?page=1&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers prev ">이전 페이지</a>
                  </c:if>
                  <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
                     <a href="movequestions.do?page=${commonPage.beginPage-commonPage.pageSize}&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers prev ">이전 페이지</a>
                  </c:if>
                  <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
                     <c:if test="${p == commonPage.currentPage }">
                        <a href="movequestions.do?page=${p}&selectoption=${selectoption}&searchtext=${searchtext}" class="current page_numbers">${p}</a>
                     </c:if >
                     <c:if test="${p != commonPage.currentPage }">
                        <a href="movequestions.do?page=${p}&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers">${p}</a>
                     </c:if>
                  </c:forEach>
                     <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
                        <a href="movequestions.do?page=${commonPage.maxPage }&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers next">다음 페이지</a>
                     </c:if>
                     <c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
                        <a href="movequestions.do?page=${commonPage.beginPage + commonPage.pageSize}&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers next">다음 페이지</a>
                     </c:if>
                        <a href="movequestions.do?page=${commonPage.maxPage }&selectoption=${selectoption}&searchtext=${searchtext}" class="page_numbers last">마지막 페이지</a>
    					</div>
    				</div>
    			</div>
    		</div>
    	</div>
<!--footer  =================================================== -->
	<c:import url="../../common/footer.jsp"/> 
           <!--  =================================================================== -->

	</div>	<!-- #main_container_inner --> 
	</main>	<!-- .main_container -->


</body>
</html>