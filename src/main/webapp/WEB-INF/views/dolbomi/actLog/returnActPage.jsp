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
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
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
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize2.css" />
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
<script type="text/javascript">
$(function(){
});
function moveDetailReturnAct(value){
	
	location.href="${pageContext.request.contextPath}/dolbomi/moveDetailReturnAct.do?value=" + value;
}
</script>
</head>
<body>
<c:import url="../dolHeader.jsp"/>



<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">급여반려페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    <h3 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">급여조회</h3>
                    <form action="${pageContext.request.contextPath}/dolbomi/searchReturnAct.do" method="post">
                    <input type="hidden" value="${loginDolbomi.dol_id}" name="dol_id">
                   <table class="jt_board_list">	
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%;">조회년월</th>
                    <td scope="col" class="type" style="">
                    <select name="shYear" class="jt_selectric search_data"style="width:80px;height:49px; line-height:49px;">
                    			<option selected disabled>--년도선택--</option>
                    			<option value="20">2020년</option>
                                <option value="19">2019년</option>
                                <option value="18">2018년</option>
                                <option value="17">2017년</option>
                                <option value="16">2016년</option>
                                <option value="15">2015년</option>
                                <option value="14">2014년</option>
                                <option value="13">2013년</option>
                                <option value="12">2012년</option>
                                <option value="11">2011년</option>
                                <option value="10">2010년</option>
                                <option value="09">2009년</option>
                                <option value="08">2008년</option>
                                <option value="07">2007년</option>
                     </select>
                    </td>
                    <td scope="col" class="type">
                    	<select name="shMonth" class="jt_selectric search_data"style="width:80px;height:49px; line-height:49px;">
                     			<option selected disabled>--월선택--</option>
                    			<option value="01">01월</option>
                                <option value="02">02월</option>
                                <option value="03">03월</option>
                                <option value="04">04월</option>
                                <option value="05">05월</option>
                                <option value="06">06월</option>
                                <option value="07">07월</option>
                                <option value="08">08월</option>
                                <option value="09">09월</option>
                                <option value="10">10월</option>
                                <option value="11">11월</option>
                                <option value="12">12월</option>
                     </select>
                    </td>
                    
                	</tr>
                
			</thead>
          </table>
          <input type="submit"value="검색"style="float:right; margin-top:10px;" class="btn waves-effect orange darken-3" >
          </form>
          <p style=" color:rgb(243, 114, 51);  float:left; width:49%; margin-left:5px;">※조회할 년월을 선택해 주세요.</p>
          <div style="width:100%; height:150px; position:relative;"></div>
					<div class="jt_board_list_wrap">
        <table class="jt_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">서비스번호</th>
                    <th scope="col" class="title">일시</th>
                    <th scope="col" class="hit">보호자명</th>
                    <th scope="col" class="type">아동명</th>
                    <th scope="col" class="type">서비스유형</th>
                    <th scope="col" class="type">제출구분</th>
                    <th scope="col" class="type">진행상태</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="i" items="${list}">
                <tr  id="${i.service2_no},${i.family_code},${i.dolbom}" onclick="moveDetailReturnAct(this.id);">
                    <td scope="col" class="type">${i.service2_no}</td>
                    <td scope="col" class="type">${i.start_time} ~ ${i.end_time}</td>
                    <td scope="col" class="type">${i.transferor }</td>
                    <td scope="col" class="type">${i.family_name }</td>
                    <td scope="col" class="type">${i.dolbom }</td>
                    <td scope="col" class="type">제출</td>
                    <td scope="col" class="type">${i.process_ctgry }</td>
   
                </tr>
                </c:forEach>                            
            </tbody>
        </table><!-- .jt_board_list -->
    </div>
	 </div><!-- .wrap_narrow -->
          </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>
