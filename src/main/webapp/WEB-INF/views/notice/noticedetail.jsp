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
<style type="text/css">
pre{
	margin-left: 100px;    
	margin-bottom: 28px;
    font-size: 16px;
    font-weight: 400;
    line-height: 1.75;
    letter-spacing: -0.025em;
    color: #666;
    white-space: pre-wrap;
    }
</style>
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
	<div id="skip">
		<a href="#main">메인 콘텐츠 바로가기</a>
	</div>
		<!--  header 시작 ============================================= -->
	 <c:choose>
	<c:when test="${empty user.user_id && empty dol.dol_id}">
	  <c:import url="../mainHeader.jsp"/>
	</c:when>
	<c:when test="${!empty user.user_id && empty dol.dol_id}">
	<c:import url="../iusers/iusersHeader.jsp"/>
	</c:when>
	<c:when test="${empty user.user_id && !empty dol.dol_id}">
	<c:import url="../dolbomi/dolHeader.jsp"/>
	</c:when>  
	</c:choose>
	<!--  header 끝 ============================================= -->

<!--  메인 ================================================================== -->
	<main id="main" class="main_container">
    <div id="main_container_inner" class="notice_view">
        <div class="article">
            <div class="article_body">
                <div class="wrap_narrow">
                    <div class="jt_single_header">
                        <div class="jt_single_wrap">
                            <h1 class="jt_single_title">${dto.notice_title }</h1>
                            <div class="jt_single_meta">
                                <span class="time">${dto.notice_date }</span>
                                <span class="view">${dto.notice_check }</span>
                            </div><!-- .jt_single_meta -->
                        </div><!-- .jt_single_wrap -->
                    </div><!-- .jt_single_header -->

                    <div class="jt_single_body">
                    <c:if test="${!empty dto.original_filepath}">
                   <ul style="margin-top: 10px; list-style: none; margin-bottom: 28px;">
                   		<li style="padding: 20px 100px 20px;">
                       첨부파일 : <a href="fdown.do?fname=${dto.rename_filepath}">${dto.original_filepath}</a>
                       </li>
                 	</ul>
                 	</c:if>
                        <div class="jt_single_content">
                          <pre>${dto.notice_content}</pre><br>
                        </div><!-- .single_view_share -->
                    </div><!-- .jt_single_body -->

                    <div class="single_control_wrap">
                        <a href="movenotice.do" class="jt_btn_icon jt_type_01 jt_icon_list jt_medium" data-font="secondary"><span>목록으로 가기</span></a>
                    </div><!-- .single_control_wrap -->

                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->
    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->

<!--footer  =================================================== -->
	<div class="section main_bottom fp-auto-height">
                <div class="main_bottom_overlay"></div>
                <footer id="footer">
                    <a href="#" id="go_top" class="go_top js_go_top_hide" data-font="secondary">
                        <span><i>top</i></span>
                        <div class="go_top_ginie"></div>
                    </a><!-- #go_top -->

                    <div class="footer_inner">
                        <div class="footer_wrap">
                            <div class="footer_top">
                                <nav class="footer_menu_wrap">
                                    <ul class="footer_menu" data-font="secondary">
                                        <li><a href="/Introduction"><span>우리아이봄 소개</span></a></li>
                                        <li><a href="/Terms"><span>이용약관</span></a></li>
                                        <li class="privacy"><a href="/Privacy"><span>개인정보처리방침</span></a></li>
                                        <li><a href="/EmailSecurity"><span>이메일 무단수집거부</span></a></li>


                                    </ul><!-- .footer_menu -->
                                </nav><!-- .footer_menu_wrap -->

                                <div class="footer_info" data-font="secondary">
                                    <p>
                                        <span>여성가족부</span>
                                        <span>홈페이지 문의: ☏ 1577-8136</span>
                                        <span>(평일 09:00 ~ 18:00. 점심시간 12:00~13:00)</span>
                                    </p>
                                    <p class="footer_info_location">
                                        <span>
                                            주소
                                            <a href="#" target="_blank" rel="noopener noreferrer">
                                                <b>(우:03171) 서울시 종로구 세종대로 209 (정부서울청사 17,18층)</b>
                                                <i></i>
                                            </a>
                                        </span>
                                    </p>

                                </div><!-- .footer_info -->

                            </div><!-- .footer_top -->

                            <div class="footer_bottom">
                                <p class="copyright" data-font="secondary">COPYRIGHT &copy; IBOM.KH.COM., LTD. <br />ALL RIGHTS RESERVED.</p>
                            </div><!-- .footer_bottom -->
                        </div><!-- .footer_wrap -->
                    </div><!-- .footer_inner -->
                </footer>
            </div><!-- .main_bottom -->
           <!--  =================================================================== -->

	</div>	<!-- #main_container_inner --> 
	</main>	<!-- .main_container -->



	<!--  js -->

	<script src="/ibom/resources/js/vendors/jquery/jquery.easing.1.3.js"></script>
	<script
		src="/ibom/resources/js/vendors/jquery/jquery.requestAnimationFrame.min.js"></script>
	<script src="/ibom/resources/js/vendors/greensock/TweenMax.min.js"></script>
	<script
		src="/ibom/resources/js/vendors/greensock/ScrollToPlugin.min.js"></script>
	<script src="/ibom/resources/js/vendors/greensock/findShapeIndex.js"></script>
	<script src="/ibom/resources/js/vendors/greensock/MorphSVGPlugin.js"></script>
	<script
		src="/ibom/resources/js/vendors/fullpage/jquery.fullPage.min.js"></script>
	<script
		src="/ibom/resources/js/vendors/popup/jquery.magnific_popup.min.js"></script>
	<script
		src="/ibom/resources/js/vendors/scroll/jquery.nicescroll.min.js"></script>
	<script src="/ibom/resources/js/vendors/icheck/icheck.min.js"></script>
	<script src="/ibom/resources/js/vendors/select/jquery.selectric.js"></script>
	<script
		src="/ibom/resources/js/vendors/file/jquery.customFile_custom_jt.js"></script>
	<script
		src="/ibom/resources/js/vendors/slider/cycle2/jquery.cycle2.min.js"></script>
	<script
		src="/ibom/resources/js/vendors/slider/cycle2/jquery.cycle2.swipe.min.js"></script>
	<script src="/ibom/resources/js/vendors/slider/slick/slick.min.js"></script>
	<script
		src="/ibom/resources/js/vendors/isotope/imagesloaded.pkgd.min.js"></script>
	<script src="/ibom/resources/js/vendors/isotope/isotope.pkgd.min.js"></script>
	<script src="/ibom/resources/js/vendors/clipboard/clipboard.min.js"></script>
	<script src="/ibom/resources/js/player.js"></script>
	<script src="/ibom/resources/js/main.js"></script>

	<!-- 추가 -->
	<script src="/ibom/resources/LIB/js/js.cookie.js"></script>

</body>
</html>

<script type="text/javascript">
	var _content = jQuery('#main_container_inner').on('click', '.jq_click',
			function(event) {
				event.preventDefault();
				var _this = jQuery(this);

				if (_this.hasClass('click_a')) {
					var href = _this.find('a').attr('href');

					if (href) {
						self.location.href = href;
					}

				} else if (_this.hasClass('click_n')) {
					var href = _this.attr('href');

					if (href) {
						event.stopPropagation();
						window.open(href, '_blank');
					}
				}
			})
</script>