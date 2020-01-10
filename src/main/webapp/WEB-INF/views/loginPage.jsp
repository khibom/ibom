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
<!-- 로그인 기능 -->
<script type="text/javascript">
	$("document").ready(function() {

		var userInputId = getCookie("userInputId");
		$("input[name='user_id']").val(userInputId);
		if ($("input[name='user_id']").val() != "") {
			$("#idSave").attr("checked", true);
		}

		$("#idSave").click(function() {

			if ($("#idSave").is(":checked")) {
				var userInputId = $("input[name='user_id']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			} else {
				alert("쿠키삭제할거얌")
				deleteCookie("userInputId");
			}
		});

		$("input[name='user_id']").focusout(function() {
			if ($("#idSave").is(":checked")) {
				var userInputId = $("input[name='user_id']").val();
				setCookie("userInputId", userInputId, 7);
			}
		});
	});

	//아이디저장
	function setCookie(cookieName, value, exdays) {

		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;

		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
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
	<c:import url="mainHeader.jsp"/>

	<!--  header 끝 ============================================= -->

	<!--  메인 ================================================================== -->
	<main id="main" class="main_container" style="padding-bottom:0">

	<div class="right-w3">


		<!--  로그인 시작 ==================================================== -->


		<form action="login.do" method="post" class="login_form">
			<input name="${_csrf.parameterName}" type="hidden"
				value="${_csrf.token}">
			<svg id="ryan" viewBox="0 0 120 120"
				xmlns="http://www.w3.org/2000/svg">
                                    <path
					d="M0,150 C0,65 120,65 120,150" fill="#e0a243" stroke="#000"
					stroke-width="2.5" />
                                    <g class="ears">
                                        <path
					d="M46,32 L46,30 C46,16 26,16 26,30 L26,32" fill="#e0a243"
					stroke="#000" stroke-width="2.5" stroke-linecap="round"
					transform="rotate(-10,38,24)" />
                                        <path
					d="M74,32 L74,30 C74,16 94,16 94,30 L94,32" fill="#e0a243"
					stroke="#000" stroke-width="2.5" stroke-linecap="round"
					transform="rotate(10,82,24)" />
                                    </g>
                                    <circle cx="60" cy="60" r="40"
					fill="#e0a243" stroke="#000" stroke-width="2.5" />
                                    <g class="eyes">
                                        <!-- left eye and eyebrow-->
                                        <line x1="37" x2="50" y1="46"
					y2="46" stroke="#000" stroke-width="3" stroke-linecap="round" />
                                        <circle cx="44" cy="55" r="3"
					fill="#000" />
                                        <!-- right eye and eyebrow -->
                                        <line x1="70" x2="83" y1="46"
					y2="46" stroke="#000" stroke-width="3" stroke-linecap="round" />
                                        <circle cx="76" cy="55" r="3"
					fill="#000" />
                                    </g>
                                    <g class="muzzle">
                                        <path
					d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71"
					fill="#fff" />
                                        <path
					d="M60,66 C58.5,61 49,63 49,69 C49,75 58,77 60,71 M60,66 C61.5,61 71,63 71,69 C71,75 62,77 60,71"
					fill="#fff" stroke="#000" stroke-width="2.5"
					stroke-linejoin="round" stroke-linecap="round" />
                                        <polygon
					points="59,63.5,60,63.4,61,63.5,60,65" fill="#000" stroke="#000"
					stroke-width="5" stroke-linejoin="round" />
                                    </g>
                                    <path
					d="M40,105 C10,140 110,140 80,105 L80,105 L70,111 L60,105 L50,111 L40,105"
					fill="#fff" />
                                </svg>
			<input placeholder="아이디를 입력하세요" name="user_id" type="text"
				required=""> <input placeholder="비밀번호를 입력하세요"
				name="user_pwd" type="password" required="">
			<c:if test="${ERRORMSG != null}">
				<font style="color:darkblue; margin-bottom: 9px; font-size: 13px;"><p>
						다음으로 인해 로그인 시도가 실패했습니다 <br />${ERRORMSG }</p></font>
			</c:if>
			<span class="checkbox1"> <label class="checkbox"> <input
					type="checkbox" name="" checked="" id="idSave"><i> </i> 아이디
					저장하기
			</label>
			</span> 
			<input type="submit" value="로그인" />
			<ul class="login_extend">
				<li><a href="/Member/Find/id"><span>아이디/비밀번호 찾기</span></a></li>
				<li><a href="${pageContext.servletContext.contextPath}/joinPage.do"><span>회원가입</span></a></li>
			</ul>
		</form>


	</div>

	<script src="/ibom/resources/js/login.js" type="text/javascript"></script>



	</main>
	<!-- .main_container -->

	<!--footer  =================================================== -->
	<c:import url="common/footer.jsp" />
	<!--  footer -->

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

