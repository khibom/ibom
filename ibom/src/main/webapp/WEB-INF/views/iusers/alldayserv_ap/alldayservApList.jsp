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

<%-- <h2>돌보미 메인페이지</h2>
<h3>안녕하세요!${loginDolbomi.dol_name}님</h3> --%>

<%-- <nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav> --%>
<%-- <c:if test="${loginDolbomi != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
<!-- <form action="sendEmail.do" method="post">
	<input type="email" name="email" >
	<input type="submit" value="전송">
</form> -->

<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">종일제서비스 대기신청</h1>
                    <ul class="dankkum_sub_info contact_info">
                           <li><p>만 36개월 이하 아동 가정 뿐만 아니라 임신, 출산휴가, 육아휴직 기간에도 향후 이용을 위한 대기 신청이 가능합니다.</p></li>
                           <li><p>대기번호는 자격요건 확인이나 매칭 상황에 따라 변경될 수 있습니다.</p></li>
                           <li><p>대기신청서는 신청인당 한 건만 작성 가능합니다.</p></li>
                           <li><p>대기 신청 취소 및 신청 사항 변경을 원하시면 서비스제공기관에 문의하시기 바랍니다.</p></li>
                    </ul>
                    <!-- <p class="article_desc">· 만 36개월 이하 아동 가정 뿐만 아니라 임신, 출산휴가, 육아휴직 기간에도 향후 이용을 위한 대기 신청이 가능합니다.</p>
                    <p class="article_desc">· 대기번호는 자격요건 확인이나 매칭 상황에 따라 변경될 수 있습니다.</p>
                    <p class="article_desc">· 대기신청서는 신청인당 한 건만 작성 가능합니다.</p>
                    <p class="article_desc">· 대기 신청 취소 및 신청 사항 변경을 원하시면 서비스제공기관에 문의하시기 바랍니다.</p> -->
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
					
					
					<div class="jt_board_list2_wrap">
	
       <table class="jt_board_list2">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">번호</th>
                    <th scope="col" class="type">센터명</th>
                    <th scope="col" class="date">신청일자</th>
                    <th scope="col" class="hit">아동명<br>(태명)</th>
                    <th scope="col" class="date">아동생년월일<br>(출산예정일)</th>
                    <th scope="col" class="hit">돌봄시작<br>희망월</th>
                    <th scope="col" class="hit">대기번호</th>
                    <th scope="col" class="date">대기신청<br>접수일</th>
                </tr>
            </thead>

            <tbody>
           			 <c:if test="${empty requestScope.list }">
				            <tr><td colspan="8">조회 할 신청 건이 업습니다.</td></tr>
				    </c:if>
	<c:forEach items="${requestScope.list }" var="adsaList" varStatus="status">
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">${status.count }</td>
                    <td class="type">${adsaList.office_name }</td>
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
<%-- <h2>이용자 메인페이지</h2>
<h3>안녕하세요!${loginIuser.user_name}님</h3>

<nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav>
<c:if test="${loginIuser != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
