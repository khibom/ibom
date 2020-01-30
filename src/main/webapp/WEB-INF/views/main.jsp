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
<!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var d = window.document;
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "28c3d596-e951-470d-9831-877c2b28ba28"
  });
</script>

<!-- End Channel Plugin -->
</head>
<body>
	<div id="skip">
		<a href="#main">메인 콘텐츠 바로가기</a>
	</div>
	<!--  header 시작 ============================================= -->
<%-- 	<c:if test="${not empty sessionScope}">
      <c:if test="${not empty loginIuser}">
         <c:import url="../iusers/iusersHeader.jsp"/>
      </c:if>
   </c:if>
   <c:if test="${empty sessionScope}">
      <c:import url="../mainHeader.jsp"/>
   </c:if>
   <c:if test="${not empty sessionScope}">
      <c:if test="${not empty loginDolbomi}">
         <c:import url="../dolbomi/dolHeader.jsp"/>
      </c:if>
   </c:if> --%>
   
<c:import url="mainHeader.jsp"/> 
	<!--  header 끝 ============================================= -->

<!--  메인 ================================================================== -->
	<main id="main" class="main_container">
	<div id="main_container_inner" class="home">

		<div class="home_container">
			<div class="home_illust_item home_illust_primary">
				<div class="home_illust_item_inner"></div>
			</div>
			<div class="home_illust_item home_illust_secondary">
				<div class="home_illust_item_inner"></div>
			</div>

			<div id="main_fullpage" class="fullpage">
			
			<div class="section main_section main_visual">
                        <div class="wrap">
                        <div class="home_illust_point home_illust_primary_point"></div>
                        <div class="home_illust_point home_illust_secondary_point"></div>

                        <div class="main_section_circle">
                            <svg xmlns="http://www.w3.org/2000/svg" width="875px" height="875px" viewBox="0 0 875 875">
                                <clipPath id="main_visual_clip_path">
                                    <circle class="clip" r="40%"></circle>
                                </clipPath>

                                <svg x="50%" y="50%" width="100%" height="100%" overflow="visible">
                                    <image class="main_visual_circle_back_img" clip-path="url(#main_visual_clip_path)" x="-438" y="-438" width="875" height="875" xlink:href=""></image>
                                    <image class="main_visual_circle_front_img" clip-path="url(#main_visual_clip_path)" x="-438" y="-438" width="875" height="875" xlink:href=""></image>
                                </svg>
                            </svg>
                        </div><!-- .main_section_circle -->

                        <div class="main_section_content">
                            <div class="main_visual_slider_wrap cycle_slider_wrap">
                                <div class="cycle_control">
                                    <div class="cycle_btn cycle_prev"><span class="sr_only">이전</span></div>
                                    <div class="cycle_btn cycle_next"><span class="sr_only">다음</span></div>
                                </div><!-- .cycle_control -->

                                <div class="main_visual_slider cycle_slider">

                                    <div class="main_visual_item jq_click click_a" data-image="/ibom/resources/images/main/mainimg2.png">
                                        <div class="main_visual_item_inner">
                                            <figure class="main_visual_image"><img src="/ibom/resources/images/main/mainimg2.png" alt="" /></figure>

                                            <div class="main_visual_content">
                                                <div class="main_visual_content_inner">
                                                    <div class="main_txt_wrap">

                                                     <!--  <span data-font="secondary">이벤트</span> -->

                                                     <h2 data-font="secondary">아동의 안전한 보호~ <br />
                                                     영아 및 방과 후 아동!</h2>
                                                     <p>&lsquo;개별 가정 특성 &rsquo;및 아동발달을 고려하여 <br />
                                                     아동의 집에서 돌봄 서비스 제공!</p>

                                                     <!-- <a data-font="secondary" class="jt_btn_icon jt_type_01 jt_icon_arrow" href="/Communicate/Event/446"><span>자세히 보기</span></a> -->

                                                 </div><!-- .main_txt_wrap -->
                                             </div><!-- .main_visual_content_inner -->
                                         </div><!-- .main_visual_content -->
                                     </div><!-- .main_visual_item_inner -->
                                    </div><!-- .main_visual_item -->


                                    <div class="main_visual_item jq_click click_a" data-image="/ibom/resources/images/main/mainimg3.png">
                                        <div class="main_visual_item_inner">
                                        <figure class="main_visual_image"><img src="/ibom/resources/images/main/mainimg3.png" alt="" /></figure>

                                        <div class="main_visual_content">
                                            <div class="main_visual_content_inner">
                                                <div class="main_txt_wrap">


                                                    <h2 data-font="secondary">부모의 일! 가정양립 <br />
                                                    &lsquo;취업&rsquo; 부모 </h2>
                                                    <p>야간 · 주말 등 틈새 시간 <br />
                                                    &lsquo;일시 돌봄 &rsquo; 및 &lsquo;영아 종일 돌봄 &rsquo; 등 수용자가 원하는 서비스 확충</p>

                                                    <!-- <a data-font="secondary" class="jt_btn_icon jt_type_01 jt_icon_arrow" href="/Communicate/Notice/443"><span>자세히 보기</span></a> -->

                                                </div><!-- .main_txt_wrap -->
                                            </div><!-- .main_visual_content_inner -->
                                        </div><!-- .main_visual_content -->
                                        </div><!-- .main_visual_item_inner -->
                                    </div><!-- .main_visual_item -->
                                    <div class="main_visual_item jq_click click_a" data-image="/ibom/resources/images/main/mainimg4.png">
                                    <div class="main_visual_item_inner">
                                        <figure class="main_visual_image"><img src="/ibom/resources/images/main/mainimg4.png" alt="" /></figure>

                                        <div class="main_visual_content">
                                            <div class="main_visual_content_inner">
                                                <div class="main_txt_wrap">


                                                    <h2 data-font="secondary"> 돌봄 자원 창출<br />
                                                    &lsquo;아이돌보미&rsquo;</h2>
                                                    <p>육아 · 돌봄 의사가 있는 여성에게 교육지원과 능력개발을 제공하여, <br />
                                                    사회서비스 수요와 연계 활성화</p>

                                                    <!-- <a data-font="secondary" class="jt_btn_icon jt_type_01 jt_icon_arrow" href="/Contents/Series"><span>자세히 보기</span></a> -->

                                                </div><!-- .main_txt_wrap -->
                                            </div><!-- .main_visual_content_inner -->
                                        </div><!-- .main_visual_content -->
                                    </div><!-- .main_visual_item_inner -->
                                    </div>  <!-- .main_visual_item -->
                                    <div class="main_visual_item jq_click click_a" data-image="/ibom/resources/images/main/mainimg1.png">
                                    <div class="main_visual_item_inner">
                                        <figure class="main_visual_image"><img src="/ibom/resources/images/main/mainimg1.png" alt="" /></figure>

                                        <div class="main_visual_content">
                                            <div class="main_visual_content_inner">
                                                <div class="main_txt_wrap">

                                                    <span data-font="secondary">이벤트</span>
                                                    <h2 data-font="secondary">&lsquo;아이를 위한 나라는 있다.&rsquo; <br /></h2>
                                                    <p>서장훈, 아이돌보미 도전 &lsquo;시합보다 긴장 &rsquo;<br />
                                                    KBS 2TV 신규 돌봄 예능 프로그램 &lsquo;아이를 위한 나라는 있다&lsquo; 유튜브에서 해결해 드립니다~</p>

                                                    <a data-font="secondary" class="jt_btn_icon jt_type_01 jt_icon_arrow jq_click click_n" href="=https://www.youtube.com/watch?v=p5NivsVUu8Y"><span>자세히 보기</span></a>

                                                </div><!-- .main_txt_wrap -->
                                            </div><!-- .main_visual_content_inner -->
                                        </div><!-- .main_visual_content -->
                                    </div><!-- .main_visual_item_inner -->
                                    </div><!-- .main_visual_item -->

                                </div><!-- .main_visual_slider -->
                            
                                <div class="main_visual_state">
                                <div data-font="secondary" class="cycle_caption"></div>

                                <div class="cycle_progress_wrap">
                                    <span class="cycle_progress"></span>
                                </div><!-- .cycle_progress_wrap -->

                                <div class="cycle_state play">
                                    <button class="cycle_state_btn icon_play"><span class="sr_only">재생</span></button>
                                    <button class="cycle_state_btn icon_pause"><span class="sr_only">일시정지</span></button>
                                </div><!-- .cycle_state -->

                                <ul class="cycle_pager"></ul>
                                </div><!-- .main_visual_state -->

                            </div><!-- .main_visual_slider_wrap -->
                        </div><!-- .main_section_content -->
                    </div><!-- .wrap -->
                    </div><!-- .main_visual -->

<!--======================================================================================== -->
                    <!-- 이용자서비스 이용안내 -->
            <div class="section main_section main_media">
                <div class="wrap">
                    <div class="home_illust_point home_illust_primary_point"></div>
                    <div class="home_illust_point home_illust_secondary_point"></div>

                    <div class="main_section_content">
                        <div class="main_content_cover">
                            <div class="main_content_cover_inner">
                                <div class="main_txt_wrap secondary">
                                    <span data-font="secondary">아이돌봄서비스이용</span>
                                    <h2 data-font="secondary">돌봄서비스 이렇게 이용하세요!</h2>
                                </div><!-- .main_txt_wrap -->

                                <div class="main_media_list">

                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-1-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[회원가입]</span></h3>
                                                <p>빠르고 간편한 회원가입을 진행해주세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-2-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[서비스신청]</span></h3>
                                                <p>돌봄이 필요한 요일, 장소, 원하는 돌봄 방식 등을 작성하게 됩니다.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-3-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[돌보미면접신청]</span></h3>
                                                <p>맘에 드는 돌보미를 면접으로 먼저 만나보세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-4-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[서비스신청]</span></h3>
                                                <p>내 면접 요청을 수락한 돌보미들과 인터뷰를 진행한 뒤 맘에 드는 돌보미를 이용합니다.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Video">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-5-v2.svg" alt="" />

                                                <!--  <div class="main_media_type video"><span class="sr_only">영상</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[1:1문의]</span></h3>
                                                <p>돌보미 서비스에 대한 불편사항이 있다면, 작성하세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->

                                </div><!-- .main_media_list -->
                            </div><!-- .main_content_cover_inner -->
                        </div><!-- .main_content_cover -->
                    </div><!-- .main_section_content -->
                </div><!-- .wrap -->
            </div><!-- .main_media -->
<!--==================================================================================================-->
                    
<!-- 돌보미 서비스 이용 안내 -->
            <div class="section main_section main_media">
                <div class="wrap">
                    <div class="home_illust_point home_illust_primary_point"></div>
                    <div class="home_illust_point home_illust_secondary_point"></div>

                    <div class="main_section_content">
                        <div class="main_content_cover">
                            <div class="main_content_cover_inner">
                                <div class="main_txt_wrap secondary">
                                    <span data-font="secondary">아이돌보미활동</span>
                                    <h2 data-font="secondary">아이돌보미활동, 이렇게 신청하세요!</h2>
                                </div><!-- .main_txt_wrap -->

                                <div class="main_media_list">

                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/mom-guide-1-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[회원가입]</span></h3>
                                                <p>빠르고 간편한 회원가입을 진행해주세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/sitter-guide-2-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[프로필 변경]</span></h3>
                                                <p>내 활동 지역, 시급,활동 기간 등을 확인해주세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/sitter-guide-3-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[부모 지원하기]</span></h3>
                                                <p>지역과 우리동네에서, 나와 맞는 부모님을 찾아 지원해보세요.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Music">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/sitter-guide-4-v2.svg" alt="" />

                                                <!-- <div class="main_media_type sound"><span class="sr_only">음원</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[면접 후 활동하기]</span></h3>
                                                <p>면접 시, 내가 안전하게 아이를 돌볼 수 있는 환경인지 확인한 뒤 돌보미로 활동합니다.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->
                                    <div class="main_media_item">
                                        <a href="/Contents/Video">
                                            <figure class="main_media_thumb">
                                                <img src="/ibom/resources/images/sitter-guide-5-v2.svg" alt="" />

                                                <!--  <div class="main_media_type video"><span class="sr_only">영상</span></div> -->

                                            </figure><!-- .main_media_thumb -->

                                            <div class="main_media_txt">
                                                <h3 data-font="secondary"><span>[1:1문의]</span></h3>
                                                <p>돌보미도 부모님에 대한 후기를 작성하세요. 활동시 불편 사항 및 기타 문의를 작성할 수 있습니다.</p>
                                            </div><!-- .main_media_txt -->
                                        </a>
                                    </div><!-- .main_media_item -->

                                </div><!-- .main_media_list -->
                            </div><!-- .main_content_cover_inner -->
                        </div><!-- .main_content_cover -->
                    </div><!-- .main_section_content -->
                </div><!-- .wrap -->
            </div><!-- .main_media -->

<!--==================================================================================================-->
                    <div class="section main_section main_character">
                <a class="wrap" href="/Introduction" style="display:block;">
                    <div class="home_illust_point home_illust_primary_point"></div>
                    <div class="home_illust_point home_illust_secondary_point"></div>

                    <div class="main_section_circle">
                        <svg xmlns="http://www.w3.org/2000/svg" width="875px" height="875px" viewBox="0 0 875 875">
                            <clipPath id="main_character_clip_path" class="main_section_circle_mask">
                                <circle class="clip" r="40%"></circle>
                            </clipPath>

                            <svg x="50%" y="50%" width="100%" height="100%" overflow="visible">
                                <image clip-path="url(#main_character_clip_path)" x="-438" y="-438" width="875" height="875" xlink:href="/ibom/resources/images/main/main_character_circle.gif"></image>
                            </svg>
                        </svg>
                    </div><!-- .main_section_circle -->

                    <div class="main_section_content secondary">
                        <div class="main_content_cover">
                            <div class="main_content_cover_inner">
                                <div class="main_txt_wrap ">
                                    <span data-font="secondary">우리i봄 서비스</span>
                                    <h2 data-font="secondary">우리i봄의 이야기는 <br />어린이의 꿈에서 시작됩니다</h2>


                                    <p style="text-align:left;">
                                        국가와 지방자치단체의 지원아래, <br />
                                        가족구성원의 삶의 질 향상에 지원하겠습니다. <br />
                                        우리i봄의 약속을 지켜봐 주세요!
                                    </p>                                        
                                </div><!-- .main_txt_wrap -->
                            </div><!-- .main_content_cover_inner -->
                        </div><!-- .main_content_cover -->
                    </div><!-- .main_section_content -->
                </a><!-- .wrap -->
            </div><!-- .main_character -->
							
				
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
                                        <li><a href="${pageContext.request.contextPath}/Introduction.do"><span>우리아이봄 소개</span></a></li>
                                        <li><a href="${pageContext.request.contextPath}/termPage.do"><span>이용약관</span></a></li>
                                        <li class="privacy"><a href="${pageContext.request.contextPath}/privacyPage.do"><span>개인정보처리방침</span></a></li>
                                        <li><a href="noPage.do"><span>이메일 무단수집거부</span></a></li>


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


			</div>			<!-- #main_fullpage -->
		</div>		<!-- .home_container -->
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