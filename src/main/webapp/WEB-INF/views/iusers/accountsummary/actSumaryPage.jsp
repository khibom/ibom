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
<link rel="stylesheet" href="/ibom/resources/css/accountSumary.css" />
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
<c:import url="../iusersHeader.jsp"/>



<!--  main =================================================================== -->
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
        <!-- 안에서 작업시작 -->
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">카드 결제 내역</h1>
                    <p class="article_desc"></p>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
			
            <div class="article_body">
            
                <div class="wrap_narrow" id="result_wrap">
                <h3 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">카드 결제 내역</h3>
                   <table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">서비스 이용 기간</th>
                    <td scope="col" class="type" >
                    <form action="dolbomi/dolSearchAct.do" method="post">
                    
                    <input type="date" name="stDate" min="2000-01-01" max="2999-12-26"> ~ 
                    <input type="date" name="endDate" min="2000-01-01" max="2999-12-26"><br>
                    <p style=" color:rgb(243, 114, 51); font-size:10pt;">※조회기간은 최대 6개월 입니다.</p>
                    </td>
                </tr>
           		 <tr>
                    <th scope="col" class="title" style="width:3%; ">결제상태</th>
                    <td scope="col" class="type">
                    <select name="payment_status">
                    <option value="신청서취소">신청서취소</option>
                    <option value="카드결제완료">카드결제완료</option>
                    </select>
                    </td>
                </tr>
                
			</thead>
          </table>
          <input type="submit" value="조회" style="float:right;color:white; border-radius:5px; boxshadow:none;background:rgb(243, 114, 51); width: 60px;">
          </form>
          <div style="width:100%; height:150px; position:relative;"></div>
         
          <!--  list 처리 -->
          <div class="jt_board_list_wrap">
          <ul style=" display:inline-block; postion:relative; width:100%; margin-top:5px;">
			<li style="float:left; width:49%; margin-left:5px;">
			  <p style=" color:rgb(243, 114, 51); font-size:9pt;">※돌봄서비스 이용일에 카드사로 자동 승인요청됩니다.<br>
				※카드사에서 결제내역을 확인하실 때에는 '승인일자'나 '승인번호'로 확인하시면 됩니다.</p>
			</li>
		 </ul>
		<table class="jt_board_list9">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">승인번호</th>
                    <th scope="col" class="type">서비스 신청</th>
                    <th scope="col" class="type">결제상태</th>
                    <th scope="col" class="type">승인일자</th>
                    <th scope="col" class="type">취소일자</th>
                    <th scope="col" class="type">본인부담금</th>
                    <th scope="col" class="type">이용금액</th>
                    <th scope="col" class="type">카드결제금액</th>
                    <th scope="col" class="type">정부지원금</th>
                    <th scope="col" class="type">처리결과</th>
                    <th scope="col" class="type">거래구분</th>
                    <th scope="col" class="type">거래구분</th>
                </tr>
               
            </thead>
            
            <tbody>
				<tr class="js_full_click  jq_click click_a">
                   
                </tr>
            </tbody>
        </table>
          		</div>
            </div><!-- .article_body -->
        </div><!-- .article -->
	</div>
    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>

