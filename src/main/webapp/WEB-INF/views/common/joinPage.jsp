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

<link rel="icon" href="/ibom/resources/images/favicon_83.png"	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"	content="/ibom/resources/images/favicon_300.png" />

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

<script type="text/javascript"	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>

</head>
<body>

    <div id="skip"><a href="#main">메인 콘텐츠 바로가기</a></div>

    
   <!--  header 시작 -->
   <c:import url="../mainHeader.jsp"/> 
   <!-- header 끝 -->

   
<main id="main" class="main_container">


    <div id="main_container_inner" class="join">

        <div class="article">
            <div class="article_header">
                <div class="wrap">
                    <h1 data-font="secondary" class="article_title">회원가입</h1>
                </div><!-- .wrap -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap">
                    <div class="member_character_wrap member_character_kkumi">
                        <figure><img src="/ibom/resources/images/sub/member/login_kkumi.gif" alt="꾸미 일러스트" /></figure>
                    </div><!-- .member_character_kkumi -->
                    <div class="member_character_wrap member_character_dani">
                        <figure><img src="/ibom/resources/images/sub/member/login_dani.gif" alt="다니 일러스트" /></figure>
                    </div><!-- .member_character_dani -->

                    <div class="login_temp">
                        <div class="login_temp_group">
                            <div class="login_temp_title">
                                <h2 data-font="secondary"><span>아이를 돌봐줄 돌보미가 필요해요.</span></h2>
                               <!--  <h3>“아이를 돌봐줄<br>돌보미가 필요해요.”</h3>
                               <p>SNS 계정을 연결하면 가입 후 간편하게 로그인할 수 있습니다.</p> -->
                            </div><!-- .login_temp_title -->
                            <a href="${pageContext.servletContext.contextPath}/iusersJoinStep1.do" data-font="secondary" class="jt_btn_icon jt_type_01 jt_large jt_icon_arrow"><span>이용자 회원가입하기</span></a>
                           
                        </div><!-- .login_temp_group -->

                        <div class="login_separator"><span>또는</span></div>

                        <div class="login_temp_group">
                            <div class="login_temp_title">
                                <h2 data-font="secondary"><span>든든한 돌보미로 활동하고 싶어요.</span></h2>
                            </div><!-- .login_temp_title -->

                            <a href="${pageContext.servletContext.contextPath}/moveEnroll.do" data-font="secondary" class="jt_btn_icon jt_type_01 jt_large jt_icon_arrow"><span>돌보미 회원가입하기</span></a>
                        </div><!-- .login_temp_group -->
                    </div><!-- .login_temp -->
                </div><!-- .wrap -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->




    <!-- footer id="footer" 시작 ==-->

<c:import url="footer.jsp"/>
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


