<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1문의 상세사항</title>
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

pre{  
    font-size: 16px;
    font-weight: 400;
    line-height: 1.75;
    letter-spacing: -0.025em;
    white-space: pre-wrap;
    }
</style>
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
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
	<c:when test="${!empty iuser.user_id && empty dol.dol_id}">
	<c:import url="../iusersHeader.jsp"/>
	</c:when>
	<c:when test="${empty iuser.user_id && !empty dol.dol_id}">
	<c:import url="../../dolbomi/dolHeader.jsp"/>
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
                            <h1 class="jt_single_title">${dto.qna_title}</h1>
                            <div class="jt_single_meta">
                                <span class="time">${dto.qna_date}</span>
                            </div><!-- .jt_single_meta -->
                        </div><!-- .jt_single_wrap -->
                    </div><!-- .jt_single_header -->

                    <div class="jt_single_body">
                        <div class="jt_single_content">
                            <table class="type05" style="margin: auto;'">
			    <tr>
			        <th scope="row">민원구분</th>
			        <td>${dto.civil_petition}</td>
			        <th scope="row">등록일시</th>
			        <td>${dto.qna_date}</td>
			        <th scope="row">상태</th>
			        <td>${dto.qna_state}</td>
			    </tr>
			    <tr>
			        <th scope="row">제목</th>
			        <td colspan="5">${dto.qna_title}</td>
			    </tr>
			    <tr>
			    	<th scope="row" style="height:300px; line-height: 16;">내용</th>
			    	<td colspan="5"><pre>${dto.qna_content}</pre></td>
			    </tr>
			    <c:choose>
			    <c:when test="${dto.qna_state != '미처리' }">
			    <tr>
			    	<th scope="row" style="height:150px; line-height: 7;">답변</th>
			    	<td colspan="5"><pre>${dto.qna_answer}</pre></td>
			    </tr>
			    </c:when>
			    </c:choose>
			</table>
			<c:choose>
			    <c:when test="${dto.qna_state == '미처리' }">
			    	<h1 data-font="secondary" class="article_title" style="text-align:center; margin-bottom:0; margin-top: 40px; color: #f07e23;">답변을 준비하고 있습니다.</h1>
			    	<p class="article_desc" style="text-align:center;">최대한 빠르고 정확한 답변을 드리도록 최선을 다하겠습니다.</p><br>
			    </c:when>
			    </c:choose>
                        </div><!-- .single_view_share -->
                    </div><!-- .jt_single_body -->

                    <div class="single_control_wrap">
                        <a href="movequestions.do" class="jt_btn_icon jt_type_01 jt_icon_list jt_medium" data-font="secondary"><span>목록으로 가기</span></a>
                    </div><!-- .single_control_wrap -->

                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->


<!--footer  =================================================== -->
	<c:import url="../../common/footer.jsp"/> 
           <!--  =================================================================== -->

	</div>	<!-- #main_container_inner --> 
	</main>	<!-- .main_container -->

</body>
</html>
