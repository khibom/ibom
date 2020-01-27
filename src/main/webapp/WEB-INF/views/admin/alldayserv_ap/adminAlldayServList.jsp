<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>ibom Admin</title>
<style type="text/css">

table th, thead tr th, tbody tr td { text-align : center;}
</style>
<script type="text/javascript"
	src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$('table tbody tr').on('click', function() {
        location.href = $(this).children('.id').children('a').attr('href');
        return false;
    });
	//검색 부분
	showDiv();
	
	$("select[name=searchselect]").on("change", function() {
		showDiv();
	});
	
	//검색 서브밋
	 $("#submitbtn1").click(function(){
	        $("#searchform1").submit();
	    });
	  $("#submitbtn2").click(function(){
	        $("#searchform2").submit();
	    });
	  $("#submitbtn3").click(function(){
	        $("#searchform3").submit();
	    });
	  $("#submitbtn4").click(function(){
	        $("#searchform4").submit();
	    });
	  
	  $('table tbody tr').on('click', function() {
	        location.href = $(this).children('td').children('a').attr('href');
	        return false;
	    });
})

function showDiv() {
	if ($("#searchselect option:eq(0)").is(":selected")) {
		$("#date").css("display", "none");
		$("#id").css("display", "none");
		$("#status").css("display", "none");
		$("#center").css("display", "none");
	}
	
	if ($("#searchselect option:eq(1)").is(":selected")) {
		$("#date").css("display", "block");
		$("#id").css("display", "none");
		$("#status").css("display", "none");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(2)").is(":selected")) {
		$("#date").css("display", "none");
		$("#id").css("display", "block");
		$("#status").css("display", "none");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(3)").is(":selected")) {
		$("#date").css("display", "none");
		$("#id").css("display", "none");
		$("#status").css("display", "block");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(4)").is(":selected")) {
		$("#date").css("display", "none");
		$("#id").css("display", "none");
		$("#status").css("display", "none");
		$("#center").css("display", "block");
	}
}
</script>

<!-- Bootstrap Core CSS -->
<link
	href="/ibom/resources/admin/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="/ibom/resources/admin/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="/ibom/resources/admin/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="/ibom/resources/admin/vendor/morrisjs/morris.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="/ibom/resources/admin/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
</head>
<body>

	<div id="wrapper">

		<!-- =================================== -->
		<!--  nav 시작 -->
		<c:import url="../adminHeader.jsp" />
		<!-- nav 끝  -->

		<!--===========================================================================-->
		<!-- 본문 -->
		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">종일제 변경 신청 목록</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<!--===========================================================================-->
			<div class="row">
				<div class="col-lg-12">
					<!-- 검색창 시작-->
					<div class="input-group custom-search-form list-group-item-heading"
						style="display: inline-flex;">

						<div style="float: left; display: flex;">
							<div>
								<select id="searchselect" name="searchselect"
									style="width: 120px; padding-left: 5px;"
									class="form-control form-control-sm">
									<option>::검색::</option>
									<option id="opt1" ${requestScope.search eq 'date'?"selected":""}>요청일시</option>
									<option id="opt2" ${requestScope.search eq 'id'?"selected":""}>아이디</option>
									<option id="opt3" ${requestScope.search eq 'status'?"selected":""}>ㅇㅇㅇ</option>
									<option id="opt4" ${requestScope.search eq 'center'?"selected":""}>서비스센터</option>
									
									
								</select>
							</div>
							<div id="date">
								<form
									action="${ pageContext.request.contextPath }/admin/alldauServSearch.do"
									method="get" id="searchform1">
									<input type="hidden" name="search" value="date"> <input
										type="hidden" name="keyword" value="">
									<div class="input-group"
										style="margin-left: 5px; display: inline-flex;">
										<c:if test="${ !empty commonPage.begin and !empty commonPage.end}">
										<input type="date" name="date_begin"
											class="form-control form-control-sm"
											style="width: 160px; border-radius: 3px;"> &nbsp; ～
										&nbsp; <input type="date" name="date_end"
											class="form-control form-control-sm"
											style="width: 160px; border-radius: 3px;"> 
										</c:if>
										<c:if test="${ empty commonPage.begin and empty commonPage.end}">
											<input type="date" name="date_begin"
											class="form-control form-control-sm"
											style="width: 160px; border-radius: 3px;"> &nbsp; ～
										&nbsp; <input type="date" name="date_end"
											class="form-control form-control-sm"
											style="width: 160px; border-radius: 3px;"> 
											</c:if>
											<span
											class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn1">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
							<div id="id">
								<form
									action="${ pageContext.request.contextPath }/admin/alldauServSearch.do"
									method="get" id="searchform2">
									<input type="hidden" name="search" value="id">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 아이디을 입력하세요." style="width: 250px;">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn2">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
							<div id="status">
								<form
									action="${ pageContext.request.contextPath }/admin/alldauServSearch.do"
									method="get" id="searchform3">
									<input type="hidden" name="search" value="status">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 면접상태를 입력하세요." style="width: 250px;">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn3">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>

							<div id="center">
								<form
									action="${ pageContext.request.contextPath }/admin/alldauServSearch.do"
									method="get" id="searchform4">
									<input type="hidden" name="search" value="center">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 센터명을 입력하세요." style="width: 250px;">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn4">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					
						<div style="float: right; display: flex;">
							<button class="btn btn-default" type="button" id="submitbtn5">
								<i class="fa fa-reply" aria-hidden="true"></i>
							</button>
						</div>
					</div>

					<!-- 검색창종료 -->
				</div>
				<!-- /.col-lg-12 -->
						<div style="float: right; display: flex;">
						<c:if test="${ !empty requestScope.search }">
						 검색  
						
						<c:if test="${requestScope.search eq 'date'}">
						면접일자 : ${paging.date_begin} ~ ${paging.date_end}
						</c:if>
						
						<c:if test="${requestScope.search eq 'id'}">
						아이디 : ${paging.in_id}
						</c:if>
						
						<c:if test="${requestScope.search eq 'status'}">
						면접상태 : ${paging.in_status}
						</c:if>
						
						<c:if test="${requestScope.search eq 'center'}">
						서비스센터 : ${paging.in_center}
						</c:if>
						&nbsp;&nbsp;총 ${paging.listCount }건
						
						
						
						</c:if>
						</div>
			</div>
	
			<!-- 여기서부터 -->
				
			<div class="panel panel-default">
				<div class="panel-heading">종일제 변경 신청 목록</div>
				<!-- /.panel-heading -->
				<div class="panel-body">
					<div class="table-responsive">

						<table class="table table-hover">
							<thead>
								<tr>
									<th>번호</th>
									<th>아이디(이름)</th>
									<th>희망 시작월</th>
									<th>생년월일</th>									
									<th>서비스 제공 센터</th>
									<th>접수 일자</th>
									<th>요청 일자</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${ empty requestScope.list}">
								<tr><td colspan="7" align="center"><b>조회 신청 건이 없습니다.</b></td></tr>
								</c:if>
								<c:forEach items="${requestScope.list }" var="alldayserv">
								<tr>
									<c:url var="selectOne" value="/admin/allDayApDetail.do">
										<c:param name="stitle" value="${alldayserv.adsa_no}"/>
										<c:param name="currentPage" value="1"/>
									</c:url>
										<td class="id" ><a href="${selectOne }">${alldayserv.adsa_no}</a></td>
										<td>${alldayserv.user_id}(${alldayserv.user_name})</td> 
										<td>${alldayserv.start_hope_month }</td>
										<td>${alldayserv.baby_birth }</td>
										<td>${alldayserv.office_name }</td>
										<c:if test="${empty alldayserv.receipt_date}">
										<td>미접수</td>
										</c:if>
										<c:if test="${!empty alldayserv.receipt_date}">
										<td>${alldayserv.receipt_date}</td>
										</c:if>
										<td>${alldayserv.req_date}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<!-- 페이징 시작 -->
                  <div class="col-sm-6">
                     <div class="dataTables_paginate paging_simple_numbers"
                        id="dataTables-example_paginate">
                        <!-- 검색어 없을 때 시작-->
                        
                        <ul class="pagination">
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:url var="list1" value="/admin/alldaySerList.do">
                              <c:param name="currentPage" value="1"/>
                           </c:url>
                           <a href="${list1}">&lt;&lt;</a>
                           </li>
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
                                 <a href="${list1}">&lt;</a>
                           </c:if> 
                           <c:if test="${(paging.beginPage-paging.pageSize) > 1}">
                                 <c:url var = "list2" value="/admin/alldaySerList.do">
                                    <c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/>
                                 </c:url>
                                 <a href="${list2}">&lt;</a>
                           </c:if></li>
                           
                           
                           <c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
                                 <c:url var="list3" value="/admin/alldaySerList.do">
                                    <c:param name="currentPage" value="${p }"/>
                                 </c:url>
                                 <c:if test="${p == paging.currentPage }">
                                    <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                    <a href="${list3}">${p}</a>
                                    </li>
                                 </c:if>
                                 <c:if test="${p != paging.currentPage}">
                                  <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
                                    <a href="${list3}">${p }</a></li>
                                 </c:if>
                           </c:forEach>
                           
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
                                 <c:url var="list4" value="/admin/alldaySerList.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/>
                                 </c:url>
                                 <a href="${list4}">&gt;</a>
                           </c:if> 
                           <c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
                                 <c:url var="list5" value="/admin/alldaySerList.do">
                                 <c:param name="currentPage" value="${paging.endPage + paging.pageSize}"/>
                                 </c:url>
                                 <a href="${list5}">&gt;</a>
                           </c:if></li>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:url var="list6" value="/admin/alldaySerList.do">
                           <c:param name="currentPage" value="${paging.maxPage}"/>
                           </c:url>
                           <a href="${list6}">&gt;&gt;</a>
                           </li>
                        </ul>
                        
                        <!-- 검색어 없을 때 끝 -->
                       
                        
                     </div>
                  </div>
                  <!-- 페이징 끝 -->
						</div>
					<!-- /.table-responsive -->
					</div><!-- /.panel body -->
				<!-- 여기까지 -->
					
				</div><!-- /.panel panel-default -->
			</div>
			<!-- /#page-wrapper -->
			<!-- ======================================================================================================= -->
		</div>
		<!-- /#wrapper -->

		<!-- jQuery -->
		<script src="/ibom/resources/admin/vendor/jquery/jquery.min.js"></script>

		<!-- Bootstrap Core JavaScript -->
		<script
			src="/ibom/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

		<!-- Metis Menu Plugin JavaScript -->
		<script src="/ibom/resources/admin/vendor/metisMenu/metisMenu.min.js"></script>

		<!-- Morris Charts JavaScript -->
		<script src="/ibom/resources/admin/vendor/raphael/raphael.min.js"></script>
		<script src="/ibom/resources/admin/vendor/morrisjs/morris.min.js"></script>
		<script src="/ibom/resources/admin/data/morris-data.js"></script>

		<!-- Custom Theme JavaScript -->
		<script src="/ibom/resources/admin/dist/js/sb-admin-2.js"></script>
</body>
</html>