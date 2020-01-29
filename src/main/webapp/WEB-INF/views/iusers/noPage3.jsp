<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibom 로그인</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />

<link rel="icon" href="favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="favicon_300.png" />
<meta name="msapplication-TileImage"
	content="favicon_300.png" />

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/css/login.css" />
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
	<c:import url="iusersHeader.jsp"/>
	
	
		<!--  header 끝 ============================================= -->

	<!--  메인 ================================================================== -->
	<main id="main" class="main_container">


    <div class="main_container_illust"><img src="/ibom/resources/images/icon/circle_primary.svg" alt="circle illust" /></div>

    <div id="main_container_inner" class="company">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">홈페이지 오픈 준비중입니다.</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="company_brand_story_container">
                    <div class="wrap">
                        <div class="company_brand_story">
                        <br/><br/><br/><br/>
                            <p>
                                더 나은 서비스를 제공해드리기 위해서 <b>최선</b>을 다하겠습니다.
                            </p>
                           
                            <p>
                                우리 i봄 팀 일동 
                            </p>
                        </div><!-- .company_brand_story -->
                    </div><!-- .wrap -->
                    <a href="#company_bi" class="scroll_down">
                        <span class="sr_only">scroll down</span>
                    </a><!-- .scroll_down -->
                    <div class="company_illust company_illust_01"><img src="/ibom/resources/images/icon/circle_primary.svg" alt="circle illust" /></div>
                    <div class="company_illust_satellite company_illust_satellite_01"><span></span></div>
                    <div class="company_illust company_illust_02"><img src="/ibom/resources/images/icon/circle_secondary.svg" alt="circle illust" /></div>
                    <div class="company_illust_satellite company_illust_satellite_02"><span></span></div>
                    <div class="company_illust company_illust_03"><img src="/ibom/resources/images/icon/circle_secondary.svg" alt="circle illust" /></div>
                    <div class="company_illust_satellite company_illust_satellite_03"><span></span></div>
                </div><!-- .company_brand_story_container -->
              
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->
	
	
	</main>
	<!-- .main_container -->

	<!--footer  =================================================== -->
<c:import url="../common/footer.jsp" />
	<!--  footer -->
	

</body>
</html>