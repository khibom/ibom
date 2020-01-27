<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<!-- fontAwesome -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/css/dolMainInput.css" />
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
<!-- 캘린더 -->
<link href='/ibom/resources/js/calendar/packages/core/main.css' rel='stylesheet' />
<script src='/ibom/resources/js/calendar/packages/core/main.js'></script>
<script src='/ibom/resources/js/calendar/packages/interaction/main.js'></script>
<script src='/ibom/resources/js/calendar/packages/daygrid/main.js'></script>

<script type="text/javascript">
$(function(){
	
	var dolId = '${loginDolbomi.dol_id}';
    var srcCalendarEl = document.getElementById('source-calendar');
    var today = new Date();
    var date = new Date(today.getFullYear(), today.getMonth(), today.getDate());
    var srcCalendar = new FullCalendar.Calendar(srcCalendarEl, {
	      plugins: [ 'interaction', 'dayGrid' ],
	      header: {
	          left: 'none',
	          center: 'title',
	          right: 'prev,next today'
	      },
	      editable: false,
	      defaultDate: date,
	      eventClick: function(event) {
	    	  event.jsEvent.preventDefault();
	    	  var days = new Date();
	    	
	    	  var yyyy = event.event.url.substr(0,4);
	    	  var mm = event.event.url.substr(5,2);
	    	  event.jsEvent.preventDefault();
	    	  var dd = event.event.url.substr(event.event.url.length - 2);
	    	  event.jsEvent.preventDefault();
	    	  var com_ymd = new Date(yyyy, mm-1, dd);
	    	  if(event.event.title != "제출"){
	    		 if(com_ymd <= days){
	    			 location.href='${pageContext.request.contextPath}/dolbomi/moveAct.do?serviceId=' + event.event.id;
	    		 }else{
	    			 alert("일지는 작성 당일 혹은 이전 날짜에 작성 가능 합니다.")
	    		 }
	    	 }else{
	    		alert("이미 기 제출된 건 입니다.") 
	    	 } 
	    	 
	      },
	      locale: 'ko',
		    	events:function(info, successCallback, failureCallback) {
		    		
		    		 $.ajax({
		    				url : "${pageContext.request.contextPath}/dolbomi/sCalendar.do",
		    				data : {dol_id : dolId},
		    				type : "post",
		    				dataType : "json",
		    				success : function(data){
		    					
		    					var jsonStr = JSON.stringify(data);
		    					var json = JSON.parse(jsonStr);
		    					
		    					 var events = [];
		    	   				
		    	   					 for(var i in json.list){
		    	   						
		    	   						if(json.list[i].title == "Y"){
		    	   							
		    	   							events.push({id:json.list[i].id2 + "," + json.list[i].fmCode,
		    	   								title:"제출",start: json.list[i].start, color: "#f37233", url:json.list[i].start})
		    	   						}else if(json.list[i].title == "N"){
		    	   							
		    	   							events.push({id:json.list[i].id2 +  "," + json.list[i].fmCode
		    	   								,title:"미제출",start: json.list[i].start, color: "#23b9ce", url:json.list[i].start})
		    	   						}
		    						 }
		    	   					
		    	   				successCallback(events); 
		    					
		    					},
		    				error : function(jqXHR, textStatus, errorThrown){
		    					console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
		    				}
		    				
		    			});
		    		
		    		
		    		
		    	}
		    			});
		    	
		    		 
		srcCalendar.render();
   
  });
</script>
<script type="text/javascript">
$(function(){
	var searchTarget = "${Y}";
	if(searchTarget != ""){
		var scrollPosition = $("#listTarget").offset().top;
 		$("html,body").animate({
 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
	}, 0);
	}
	
	$("#calendars").click(function(){
	var scrollPosition = $("#listTarget").offset().top;
 		$("html,body").animate({
 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
	}, 1000);
	});
	
	$("#list").click(function(){
		var scrollPosition = $("#selects").offset().top;
	 		$("html,body").animate({
	 		scrollTop: scrollPosition    //id가 target 인 일레먼트의 상단위치로 페이지 스크롤
		}, 1000);
		});
 	
});
</script>
<style>
	.fc-button-primary:disabled{
	background: rgb(243, 114, 51);
	border:rgb(243, 114, 51);
	}
	.fc-button {
	background: rgb(243, 114, 51);
	border:rgb(243, 114, 51);
]/.,[MNOBI5RD]awzx 	}
	.fc-button:hover {
	background: #fff;
	color: rgb(243, 114, 51);
	border: rgb(243, 114, 51);
	}
 
  #source-calendar{
    margin-top:20px;
    width: 100%;
    
  }
  #source-calendar td{
  cursor:pointer;
  }
  /* :target{
  border: 2px solid #D4D4D4;
  background-color: #e5eecc;
  transition: all 2s ease-out 5s;
   
  }*/
 
  /* #header{
  background:rgba(235, 235, 235, 0.8);
  width:100%;
  height:50px;
  border-radius:5px;
  } */

  input[type=text]{
  display:inline-block;
  width:100px;
  margin-right:5px;
  margin-top:15px;
  border:none;
  background:white;
  cursor:default;
  }
  .fc-sun {color:#e31b23}
  .fc-sat {color:#007dc3}
</style>
</head>
<body>
<c:import url="dolHeader.jsp"/>

<!--  main =================================================================== -->
<main id="main" class="main_container">
	<div id="selects"></div>
    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">활동내역조회(달력)</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->
            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                <br>
                <p id="actlist" align="right"style=" color:rgb(243, 114, 51); margin-bottom:3px;"><a href="#list" target="_self" id="calendars"><i class="fa fa-list fa5x"></i> 리스트로 보기</a></p>
                <p class="jt_board_list"></p>
    				
			<div style="position:relative; width:100%;">
					<ul style=" display:inline-block; postion:relative; width:100%;">
						<li style="float:left; width:49%; margin-left:5px; margin-top:5px;">
						<p style=" color:rgb(243, 114, 51); font-size:10pt;">* 미제출 을 클릭하면 활동일지로 이동합니다.<br>
						* 날짜를 클릭하면 해당일의 돌봄일정 목록을 보실 수 있습니다.</p>
						</li>
					
					<li style="float:right; margin-top:10px;">
					<c:if test="${not empty loginDolbomi.salary }">
						<font color="orange">급여:</font> <fmt:formatNumber type="number" maxFractionDigits="3" value="${loginDolbomi.salary}" />&nbsp;원
					</c:if>
					<c:if test="${empty loginDolbomi.salary }">
						<font color="orange">급여:</font> 0&nbsp;원
					</c:if>
					<c:if test="${not empty totUsing}">
						<font color="orange">이번달 총 근무시간:</font>&nbsp;${totUsing}&nbsp;시간&nbsp;
						</c:if>
					<c:if test="${empty totUsing}">
						<font color="orange">이번달 총 근무시간:</font>&nbsp;0&nbsp;시간&nbsp;
						</c:if>
					<c:if test="${not empty count}">
						<font color="orange">일지미제출건:</font>&nbsp;${count} &nbsp;건
					</c:if>
					<c:if test="${empty count}">
						<font color="orange">일지미제출건:</font>&nbsp;0&nbsp;건
					</c:if>
					</li>
					</ul>
					<div style="clear: both;"></div><br /><br />
					<div id='source-calendar'></div>
					<div id="listTarget"></div>
					<div style="width:100%; height:50px; position:relative;"></div>
					
					<!-- 리스트형  -->
					
					<ul style=" display:inline-block; postion:relative; width:100%;">
						<li style="float:left; width:49%; margin-left:5px;"><h5 id="selectAct"style="margin:0;color:rgb(243, 114, 51);">활동내역 조회</h5>
						</li>
					<li style="float:right; width:12%; margin-top:8px;">
						 <a href="#calendars" style="float:right;" target="_self" id="list"><i class="fa fa-calendar"></i> 캘린더로 보기</a>
					</li>
					</ul>
					 <form action="${pageContext.request.contextPath}/dolbomi/dolSearchAct.do" method="post">
					<table class="jt_board_list">
					<thead>
					<tr>
                    <th scope="col" class="title" style="width:3%; ">조회기간</th>
                    <td scope="col" class="type" >
                    <input type="hidden" name="dol_id" value="${loginDolbomi.dol_id}">
                    <input type="hidden" name="currentPage" value="${currentPage}">
                    <div class="input-field col s2" >
                      <i class="material-icons prefix">date_range</i>
                  <input type="date" name="stDate" id="resident_no1" class="validate" style="width:20%;" />
                 &nbsp;                 
                 <strong>~</strong>
                 &nbsp;
                    <i class="material-icons prefix">date_range</i>
                      <input id="resident_no2"name="endDate" type="date" class="validate" style="width:20%;">
                 </div>
                 
                    <p style=" color:rgb(243, 114, 51); font-size:11pt;">※조회기간은 최대 1개월 입니다.</p>
                    </td>
                </tr>
           		 <tr>
                    <th scope="col" class="title" style="width:3%; ">활동일지 작성여부</th>
                    <td scope="col" class="type">
                     <select name="log_category" class="jt_selectric search_data" style="width:50%;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    	<option value="Y">제출</option>
                    	<option value="N">미제출</option>
                    </select>
                    </td>
                </tr>
			</thead>
          </table>
          <ul style=" display:inline-block; postion:relative; width:100%; margin-top:5px;">
			<li style="float:left; width:89%; margin-left:5px;">
			  <p style=" color:rgb(243, 114, 51); font-size:10pt;">* 돌봄일자 당일 또는 이후 일자에만 활동일지가 작성가능합니다.<br>
				 * 신청상태가 서비스 접수 완료(미입금 포함) 상태일 때만 활동일지가 작성가능합니다.</p>
			</li>
			<li style="float:right; width:6%; margin-top: 3px;">
			  <input type="submit" value="조회"class="btn waves-effect orange darken-3">  
			</li>
		</ul>
		</form>
		<div style="width:100%; height:50px; position:relative;"></div>
		<div style="width:100%; height:50px; position:relative;"></div>
		<div class="jt_board_list_wrap">		
        <table class="jt_board_list">
            <caption>게시판 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="type">활동일지</th>
                    <th scope="col" class="type">대상아동</th>
                    <th scope="col" class="type">활동일(요일)</th>
                    <th scope="col" class="type">활동시간</th>
                    <th scope="col" class="type">활동수당</th>
                    <th scope="col" class="type">신청상태</th>
                    <th scope="col" class="type">신청자명</th>
                    <th scope="col" class="type">지역</th>
                </tr>
               
            </thead>
            
            <tbody>
            <c:set var="i" value="${0}"/>
            <c:forEach var="s" items="${alist}" varStatus="status">
            	<jsp:useBean id="now" class="java.util.Date" />
				<tr class="js_full_click  jq_click click_a">
                    <c:if test="${s.log_category eq 'N'}">
                    <td class="type">
                    	<fmt:parseDate value="${s.apply_date}" pattern="yyyy-MM-dd" var="service"/>
                    	<fmt:formatDate value="${service}" pattern="yyyy-MM-dd" var="sdate" />
                    	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" var="nowDate" />
                    	<c:if test="${sdate <= nowDate}">
                    	<a href="${pageContext.request.contextPath}/dolbomi/moveAct.do?serviceId=${s.service2_no},${s.family_code}" style="color:#23b9ce;">미작성</a>
                    	</c:if>
                    	<c:if test="${sdate > nowDate}">
                    	<a onclick="javascript:alert('일지는 작성 당일 혹은 이전 날짜에 작성 가능 합니다.')" style="color:#23b9ce;">미작성</a>
                    	</c:if>
                    	 </td>
                    </c:if>
                     <c:if test="${s.log_category eq 'Y'}" >
                      <td class="type" style="color:rgb(243, 114, 51);">
                    	작성
                      </td>
                    </c:if>
                    <td class="type" id="child-name">
                    <c:out value="${ s.family_name }" />
                    </td>
                    <td class="type">${s.apply_date}(${s.care_day })</td>
                    <td class="type">${s.start_time} ~ ${s.end_time}</td>
                     <td class="type"><fmt:formatNumber type="number" maxFractionDigits="3" value="${s.total_pay}" /></td>
                    <td class="type">${s.apply_status }</td>
                    <td class="type">${s.transferor }</td>
               		<td class="type">${ s.dolbom_place }</td> 
                </tr>
           </c:forEach>
            </tbody>
        </table><!-- .jt_board_list -->
       
        <div class="jt_pagination" data-font="secondary" id="jt_pagination">
        <a href="${pageContext.request.contextPath }/loginsuccess.do?page=1" class="page_numbers first" page="1">첫 페이지</a>
        <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
		<a href="${pageContext.request.contextPath }/loginsuccess.do?page=1" class="page_numbers prev " page="1">이전 페이지</a>
		</c:if>
         <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
         <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.beginPage-commonPage.pageSize}" class="page_numbers prev " page="1">이전 페이지</a>
		</c:if>
		
	 <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
		<c:if test="${p == commonPage.currentPage }">
				<c:url var="ps" value="${pageContext.request.contextPath }/loginsuccess.do">
				<c:param name="page" value="${p}" />
				</c:url>
			<span class="current page_numbers">${p}</span>
		</c:if>
		<c:if test="${p != commonPage.currentPage}">
			<a class="page_numbers" href="${pageContext.request.contextPath }/loginsuccess.do?page=${p}">${p }</a>
		</c:if>
	</c:forEach>         
        
        <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
		 <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.maxPage}" class="page_numbers next" page="3">다음 페이지</a>	
		</c:if>
	<c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
		 <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.endPage + commonPage.pageSize}" class="page_numbers next" page="3">다음 페이지</a>
	</c:if>
        <a href="${pageContext.request.contextPath }/loginsuccess.do?page=${commonPage.maxPage}" class="page_numbers last" page="3">마지막 페이지</a>
    </div>
    </div>
    </div>
    
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../common/footer.jsp"/>
</body>
</html>