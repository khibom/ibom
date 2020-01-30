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
<link rel="stylesheet" href="/ibom/resources/css/ActLog.css" />
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

function fromDataCheck(event){
	if(confirm("제출 하시면 수정 하실수 없습니다. 제출 하시겠습니까?")){
		return true;
	
	}else{
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
}
function back(event){
	javascript:history.back();
	event.stopPropagation();
	event.preventDefault();
}
</script>
</head>
<body>
<c:import url="../iusersHeader.jsp" />
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">일반형 활동일지 페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    
					
					
	<div class="jt_board_list_wrap">
	<form action="${pageContext.request.contextPath}/dolbomi/upReturnNomalAct.do" onsubmit="fromDataCheck(event);" method="post" >
	<input type="hidden" name="service2_no" value="${ap2.service2_no}">
	<input type="hidden" name="dol_id" value="${loginDolbomi.dol_id}">
	<input type="hidden" name="process_ctgry" value="대기">
	<input type="hidden" name="family_code" value="${uFm.family_code}">
	<input type="hidden" name="time_no" value="${nomal.time_no}">
     <table class="jt_board_list">
            <caption>게시판 목록</caption>
        <tbody>

       <tr>
			<th>활동시간</th>
			<td>${ap2.start_time} ~ ${ap2.end_time}</td>
			<th>인계한 보호자</th>
			<td>${ap1.transferor}</td>
	  </tr>
	  <tr>
			<th>이용자연락처</th>
			<td>${user.user_phone }</td>
			<th>아동명</th>
			<td>${uFm.family_name}</td>
	 </tr>
	 <tr>
		<th>장소</th>
		<td colspan="3">
		<c:if test="${ap1.dolbom_place eq '이용자가정' }">
			${user.user_address }
		</c:if>
		<c:if test="${ap1.dolbom_place eq '돌보미가정' }">
			${loginDolbomi.dol_address }
		</c:if>
		</td>
	</tr>
	<tr>
		<th>이용자 요구사항</th>
		<td colspan="3">
		<c:if test="${ap1.req_dolbomi ne 'null'}">
		${ap1.req_dolbomi }
		</c:if>
		없음
		</td>
	</tr>
	<tr>
		<th colspan="1"rowspan="4">활동내역 <font color="orange">*</font></th>
		<td colspan="3"rowspan="4" class="nopadding">
		<textarea name="ac_content"id="ac_content" style="border:none; height:100px;" readonly>${nomal.ac_content}</textarea>
		</td>
	</tr>
    </tbody>
        </table><!-- .jt_board_list -->
      	<div class="list">	
		 <button onclick="back(event);" class="btn waves-effect orange darken-3"style="float:left;  margin-top:10px;">목록
         <i class="material-icons left">list</i>
         </button>
       </div>
        </form>
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