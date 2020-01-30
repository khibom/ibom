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
	<c:import url="../mainHeader.jsp"/>
	
	
		<!--  header 끝 ============================================= -->

	<!--  메인 ================================================================== -->
	<main id="main" class="main_container">


    <div class="main_container_illust"><img src="/ibom/resources/images/icon/circle_primary.svg" alt="circle illust" /></div>

    <div id="main_container_inner" class="company">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">우리아이봄은 이렇게 태어났어요</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="company_brand_story_container">
                    <div class="wrap">
                        <div class="company_brand_story">
                            <p>
                                우리i봄은 가정의 아이돌봄을 지원하여 <b>가족구성원의 삶의 질 향상의 브랜드</b>입니다.
                            </p>
                            <p>
                                아이들이 꾸는 <b>꿈</b>이 곧 우리의 <b>미래</b>이기에 <br />
                                우리i봄은 만 12세 이하 아동을 둔 맞멀이 가정 등에 <b>아이돌보미가 직접 방문</b> 하여 <br />
                                <b>아동을 안전하게</b> 돌봐주는 <b>우리 가족 행복돌모미, 아이돌봄 </b>서비스입니다.
                            </p>
                            <p>
                                우리i봄은 가정의 아이돌봄을 지원하여 아이의 복지증진과 보화의 일 가정 양립을 통한 <br />
                                가족구성원의 삶의 질 향상과 <b>양육친화적인 </b>사회 환경을 조성하는데 목적이 있습니다.
                            </p>
                            <p>
                                국가와 지방자치단체는 보호자가 아이돌봄의 책임을 다할 수 있도록 <b> 지원</b> 하여야 한다.<br />
                                더 나은 삶이 되기를 바랍니다.
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
                <div class="company_bi_container">
                    <div class="wrap">
                        <div id="company_bi" class="company_bi">
                            <h2 data-font="secondary" class="company_sub_title">우리i봄은 이런 느낌을 담았어요</h2>
                            <div class="company_bi_content">
                            </div><!-- .company_bi_content -->
                            <div class="company_post">
                                <p>
                                    <b>롤리팝처럼 달콤하게, 동글동글 유연하게!</b><br />
                                    부드럽고 포근한 느낌의 우리i봄 로고에는 <b>아이들의 단꿈을 지지</b>하며,  <br />
                                    자유롭고 끝없는 상상력을 끌어안겠다는 마음이 담겨 있습니다.
                                </p>
                                <p>
                                    밝고 활기찬 태양, 열정적인 불꽃, 기쁨과 축제의 상징인 폭죽을 형상화한 심볼은 <br />
                                    새로움에 도전하는 단꿈아이의 긍정적인 에너지와 자유분방함, 진취성을 가리킵니다.
                                </p>
                            </div><!-- .company_post -->
                            <div class="company_bi_color_rule_container">
                                <h3 data-font="secondary" class="company_color_rule_sub_title">색상규정</h3>
                                <ul class="company_bi_color_rule">
                                    <li class="company_bi_main_color_01">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">MAIN COLOR 1</b>
                                            <p>
                                                #28b8ce<br />
                                                <span>R 40</span><span>G 184</span><span>B 206</span><br />
                                                <span>C 70</span><span>M 0</span><span>Y 20</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- .company_bi_main_color_01 -->
                                    <li class="company_bi_main_color_02">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">MAIN COLOR 2</b>
                                            <p>
                                                #ffd618<br />
                                                <span>R 255</span><span>G 214</span><span>B 24</span><br />
                                                <span>C 0</span><span>M 20</span><span>Y 100</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- . class="company_bi_main_color_02" -->
                                    <li class="company_bi_sub_color_01">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">SUB COLOR 1</b>
                                            <p>
                                                #f07e26<br />
                                                <span>R 240</span><span>G 126</span><span>B 38</span><br />
                                                <span>C 0</span><span>M 60</span><span>Y 90</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- .company_bi_sub_color_01 -->
                                    <li class="company_bi_sub_color_02">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">SUB COLOR 2</b>
                                            <p>
                                                #e63323<br />
                                                <span>R 230</span><span>G 51</span><span>B 35</span><br />
                                                <span>C 0</span><span>M 90</span><span>Y 90</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- .company_bi_sub_color_02 -->
                                    <li class="company_bi_sub_color_03">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">SUB COLOR 3</b>
                                            <p>
                                                #8c1d82<br />
                                                <span>R 140</span><span>G 29</span><span>B 130</span><br />
                                                <span>C 55</span><span>M 100</span><span>Y 0</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- .company_bi_sub_color_03 -->
                                    <li class="company_bi_sub_color_04">
                                        <div class="company_bi_color_rule_sample">Color</div>
                                        <div class="company_bi_color_rule_txt">
                                            <b data-font="secondary">SUB COLOR 4</b>
                                            <p>
                                                #52ae32<br />
                                                <span>R 82</span><span>G 174</span><span>B 50</span><br />
                                                <span>C 70</span><span>M 0</span><span>Y 100</span><span>K 0</span>
                                            </p>
                                        </div><!-- .company_bi_color_rule_txt -->
                                    </li><!-- .company_bi_sub_color_04 -->
                                </ul><!-- .company_bi_color_rule -->
                            </div><!-- .company_bi_color_rule_container -->
                        </div><!-- .company_bi -->
                    </div><!-- .wrap -->
                    <div class="company_illust company_illust_04"><img src="/ibom/resources/images/icon/circle_secondary.svg" alt="circle illust" /></div>
                </div><!-- .company_bi_container -->
                <div class="company_7_color_value_container">
                    <div class="wrap">
                        <div class="company_7_color_value">
                            <div class="company_7_color_value_title">
                                <h2 data-font="secondary" class="company_sub_title">우리i봄은 약속드릴 수 있어요</h2>
                                <p>
                                    변화할 미래 사회에서도 감성으로 소통할 수 있기를 우리i봄은 바랍니다. <br />
                                    그 꿈을 위해 머리에는 지식을, 가슴에는 의식을 담는 이야기를 시작하려 합니다.
                                </p>
                            </div><!-- .company_7_color_value_title -->
                            <ul class="company_7_color_value_content">
                                <li>
                                    <b data-font="secondary">Humanism</b>
                                    <p>
                                        인간의 꿈이 미래를 만듭니다. 그렇기에 따뜻하고 창조적인 감성을 연구하며 사람을 소중히 합니다.
                                    </p>
                                </li>
                                <li>
                                    <b data-font="secondary">Entertaining</b>
                                    <p>
                                        누구나 재미있고 유쾌하게 즐길 수 있는 콘텐츠를 만듭니다.
                                    </p>
                                </li>
                                <li>
                                    <b data-font="secondary">Educational</b>
                                    <p>
                                        재미와 즐거움 속에서도 유익함이 함께합니다.
                                    </p>
                                </li>
                                <li>
                                    <b data-font="secondary">Storytelling</b>
                                    <p>
                                        우리가 역사이고, 이야기입니다. 우리아이봄은 세상 모든 것에 스토리를 부여합니다.
                                    </p>
                                </li>
                                <li>
                                    <b data-font="secondary">Originality</b>
                                    <p>
                                        우리i봄만의 독창성이 새로운 문화가 되길 원합니다.
                                    </p>
                                </li>
                                <li>
                                    <b data-font="secondary">Dreamable</b>
                                    <p>
                                        아이들의 자유로운 상상과 무한한 꿈을 지지합니다.
                                    </p>
                                </li>
                            </ul><!-- .company_7_color_value_content -->
                        </div><!-- .company_7_color_value -->
                    </div><!-- .wrap -->
                </div><!-- .company_7_color_value_container -->
                <div class="business_area_container">
                    <div class="wrap">
                        <div class="business_area">
                            <h2 data-font="secondary" class="company_sub_title">우리i봄은 함께하는 꿈을 계속 넓혀 갈게요</h2>
                            
                        </div><!-- .business_area -->
                    </div><!-- .wrap -->
                    <div class="company_illust company_illust_05"><img src="/ibom/resources/images/icon/circle_primary.svg" alt="circle illust" /></div>
                </div><!-- .business_area_container -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->
	
	
	</main>
	<!-- .main_container -->

	<!--footer  =================================================== -->
	<c:import url="footer.jsp" />
	<!--  footer -->
	

</body>
</html>