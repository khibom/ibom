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
<c:import url="iusersHeader.jsp"/>

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
                    <h1 data-font="secondary" class="article_title">공지사항</h1>
                    <p class="article_desc">단꿈아이에서 전해드리는 중요한 소식들이 올라옵니다.</p>
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
                    <th scope="col" class="type">분류</th>
                    <th scope="col" class="title">제목</th>
                    <th scope="col" class="hit">조회수</th>
                    <th scope="col" class="date">등록일</th>
                </tr>
            </thead>

            <tbody>

                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">안내</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <i class="jt_board_new"><span class="sr_only">최신글</span></i>
                                                        <a href="/Communicate/Notice/547">설민석의 세계사 대모험 겨울방학 패키지 판매</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">148</td>
                    <td class="date"><time datetime="2019-12-20">2019-12-20</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <i class="jt_board_new"><span class="sr_only">최신글</span></i>
                                                        <a href="/Communicate/Notice/546">&lt;순간 포착! 쥬니버 역사송~ 캐치캐치!&gt; 이벤트 당첨자 발표 </a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">41</td>
                    <td class="date"><time datetime="2019-12-20">2019-12-20</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <i class="jt_board_new"><span class="sr_only">최신글</span></i>
                                                        <a href="/Communicate/Notice/545">&lt;이벤트는 우리가 준비할게! 선물은 누가 받는다니?&gt; 이벤트 19일 당첨자 발표</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">36</td>
                    <td class="date"><time datetime="2019-12-20">2019-12-20</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <i class="jt_board_new"><span class="sr_only">최신글</span></i>
                                                        <a href="/Communicate/Notice/544">&lt;이벤트는 우리가 준비할게! 선물은 누가 받는다니?&gt; 이벤트 18일 당첨자 발표</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">50</td>
                    <td class="date"><time datetime="2019-12-19">2019-12-19</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <i class="jt_board_new"><span class="sr_only">최신글</span></i>
                                                        <a href="/Communicate/Notice/543">&lt;이벤트는 우리가 준비할게! 선물은 누가 받는다니?&gt; 이벤트 17일 당첨자 발표</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">68</td>
                    <td class="date"><time datetime="2019-12-18">2019-12-18</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <a href="/Communicate/Notice/534">&lt;이벤트는 우리가 준비할게! 선물은 누가 받는다니?&gt; 이벤트 16일 당첨자 발표</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">63</td>
                    <td class="date"><time datetime="2019-12-17">2019-12-17</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <a href="/Communicate/Notice/457">&lt;2020년 달력, 지니는 계획이 다 있어요!&gt; 이벤트 당첨자 발표 </a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">121</td>
                    <td class="date"><time datetime="2019-11-26">2019-11-26</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">안내</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <a href="/Communicate/Notice/445">주식회사 단꿈아이로의 개인정보 이전 안내 </a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">847</td>
                    <td class="date"><time datetime="2019-11-12">2019-11-12</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">이벤트</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <a href="/Communicate/Notice/444">&lt;사랑의 무법자 등장~★&gt; 이벤트 당첨자 발표</a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">109</td>
                    <td class="date"><time datetime="2019-11-08">2019-11-08</time></td>
                </tr>
                                <tr class="js_full_click  jq_click click_a">
                    <td class="type">안내</td>
                    <td class="title">
                        <div class="jt_board_title_wrap">

                                                        <a href="/Communicate/Notice/443">2019년 ‘올해의 책’ 투표가 진행 중입니다. </a>
                        </div><!-- .jt_board_title_wrap -->
                    </td>
                    <td class="hit">340</td>
                    <td class="date"><time datetime="2019-11-08">2019-11-08</time></td>
                </tr>
                
            </tbody>
        </table><!-- .jt_board_list -->
    </div>
    <!--  페이징 처리 -->
    <div class="jt_pagination" data-font="secondary" id="jt_pagination">
        <a href="#" class="page_numbers first" page="1">첫 페이지</a>
        <a href="#" class="page_numbers prev " page="1">이전 페이지</a>

                        <span class="current page_numbers">1</span>
                                <a href="#" class="page_numbers" page="2">2</a>
                                <a href="#" class="page_numbers" page="3">3</a>
                
        <a href="#" class="page_numbers next" page="3">다음 페이지</a>
        <a href="#" class="page_numbers last" page="3">마지막 페이지</a>
    </div>
    
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../common/footer.jsp"/>
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
