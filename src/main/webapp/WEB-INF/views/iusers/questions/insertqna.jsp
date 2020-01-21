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
<style type="text/css">
table.type05 {
    border-collapse: separate;
    border-spacing: 1px;
    text-align: center;
    line-height: 1.5;
    border-top: 1px solid #ccc;
    margin: 20px 10px;
    text-align: center;
}
table.type05 th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    text-align: center;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #efefef;
    text-align: center;
}
table.type05 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    text-align: left;
    border-bottom: 1px solid #ccc;
}
select {
  width: 200px;
  padding: .8em .5em;
  font-family: inherit;
  background: url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg) no-repeat 95% 50%;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: 1px solid #999;
  border-radius: 0px;
}

select::-ms-expand {
  /* for IE 11 */
  display: none;
}
</style>
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
<!-- JS -->
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	
	}
	
   	function qnaubmit() {
    	var termcode = $('input[name=term_code]:checked').val();
        if(termcode == '비동의' || termcode == null){
            alert("개인정보보호정책에 동의하지 않으시면 1:1문의를 등록 할 수가 없습니다. 개인정보취급방침에 대해서 동의를 눌러주세요!");
        }else{
        	return;
        }
        return false;
   	 };
   	 
   	 
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
<c:import url="../iusersHeader.jsp"/> 
	<!--  header 끝 ============================================= -->

<!--  메인 ================================================================== -->
	<main id="main" class="main_container">
	<div id="main_container_inner" class="home">
			<div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">1:1문의</h1>
                    <p class="article_desc">1:1문의를 할 수 있는 페이지 입니다.</p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <form action="qnainsert.do" method="post" onsubmit="return qnaubmit();">
                <table class="type05">
			    <tr>
			        <th scope="row">이용자명</th>
			        <c:choose>
			        <c:when test="${empty dol.dol_id}">
			        <td>${iuser.user_name}</td>
			        </c:when>
			        <c:when test="${empty iuser.user_id}">
			        <td>${dol.dol_name}</td>
			        </c:when>
			        </c:choose>
			        <th scope="row">휴대폰</th>
			        <c:choose>
			        <c:when test="${empty dol.dol_id}">
			        <td>${iuser.user_phone}</td>
			        </c:when>
			        <c:when test="${empty iuser.user_id}">
			        <td>${dol.dol_phone}</td>
			        </c:when>
			        </c:choose>
			    </tr>
			    <tr>
			        <th scope="row">민원구분</th>
			        <td colspan="4"><select name="civil_petition">
			        <option value="서비스 신청">서비스 신청</option>
			        <option value="서비스 변경">서비스 변경</option>
			        <option value="서비스 취소">서비스 취소</option>
			        <option value="기타">기타</option>
			        </select></td>
			    </tr>
			    <tr>
			        <th scope="row">제목</th>
			        <td colspan="4"><input style="width:100%" type="text" name="qna_title"></td>
			    </tr>
			    <tr>
			    	<th scope="row" style="height:300px; line-height: 16;">내용</th>
			    	<td colspan="4"><textarea style="width: 100%;"rows="15" cols="10" name="qna_content"></textarea></td>
			    </tr>
			    <tr>
			    	<th scope="row" style="height:150px; line-height: 7;">내용</th>
			    	<td colspan="4">개인정보의 수집 및 동의 귀하의 성명, 생년월일, 거주지, 휴대전화 번호 등 업무처리를 위한 최소한의 개인정보가<br> 
			    		관할 서비스제공기관 및 광역거점기관에 제공될 수 있습니다. 이에 동의하시겠습니까?<br>
						※귀하는 개인정보 제공에 동의하지 않을 수 있으며, 동의를 거부할 경우 민원해결 등 업무처리가 원활하게 이뤄지지 않을 수 있습니다.<br><br>
						개인정보취급방침에 대해 동의 하십니까?<br>
						<input type="radio" name="term_code" value="T003">동의 <input type="radio" name="term_code" value="비동의">비동의<br>
						<p style="color:#ff0000; ">한번 등록한 글은 수정 할 수 없습니다!</p> 
					</td>
			    </tr>
			</table>
			<input type="button" style="margin-left: 10px;" class="jt_search3_button search" onclick="location.href='movequestions.do'" value="목록으로">
			<input type="submit" style="margin: 5px; float:right" class="jt_search3_button search" value="접수하기">
               </form>
               </div>
    		</div>
    	</div>
    	</div>	<!-- #main_container_inner --> 
	</main>	<!-- .main_container -->
<!--footer  =================================================== -->
	<c:import url="../../common/footer.jsp"/> 
           <!--  =================================================================== -->

	



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