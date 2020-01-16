<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomFooter</title>
</head>
<body>

  <!--footer  =================================================== -->
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
                                        <li><a href="${pageContext.request.contextPath}/Introduction.do"><span>우리아이봄 소개</span></a></li>
                                        <li><a href="${pageContext.request.contextPath}/termPage.do"><span>이용약관</span></a></li>
                                        <li class="privacy"><a href="${pageContext.request.contextPath}/privacyPage.do"><span>개인정보처리방침</span></a></li>
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
                                 </div><!-- .footer_wrap -->
    </div><!-- .footer_inner -->
</footer>
  
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
	<script type="text/javascript" src="/ibom/resources/js/vendors/jquery.mask.min.js"></script>

	<!-- 추가 -->
	<script src="/ibom/resources/LIB/js/js.cookie.js"></script>


</body>
</html>