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
<script type="text/javascript" src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
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
	  	
    	
    	
    	
    	
    	
})//document.ready

function showDiv() {
	
	
	if ($("#searchselect option:eq(0)").is(":selected")) {		
		$("#id").css("display", "block");
		$("#name").css("display", "none");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(1)").is(":selected")) {		
		$("#id").css("display", "none");
		$("#name").css("display", "block");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(2)").is(":selected")) {		
		$("#id").css("display", "none");
		$("#name").css("display", "none");
		$("#center").css("display", "block");
	}
}    
    </script>
    

    <!-- Bootstrap Core CSS -->
    <link href="/ibom/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="/ibom/resources/admin/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="/ibom/resources/admin/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="/ibom/resources/admin/vendor/morrisjs/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="/ibom/resources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>
<body>

    <div id="wrapper">

<!-- =================================== -->
<!--  nav 시작 -->
<c:import url="../adminHeader.jsp"/> 
<!-- nav 끝  -->      

    <!--===========================================================================-->
    <!-- 본문 -->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">돌보미 관리 목록</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <div class="row">
            <div class="col-lg-5">
           <!-- 검색창 시작-->
					<div class="input-group custom-search-form list-group-item-heading"
						style="display: inline-flex;">

						<div style="float: left; display: flex;">
							<div>
								<select id="searchselect" name="searchselect"
									style="width: 120px; padding-left: 5px;"
									class="form-control form-control-sm"> 
									<option id="opt1"selected="selected">아이디</option>
									<option id="opt2">이름</option>
									<option id="opt3">서비스센터</option> 
								</select>
							</div>
							
							<div id="id">
								<form
									action="${ pageContext.request.contextPath }/admin/dolSearch.do"
									method="get" id="searchform2">
									<input type="hidden" name="search" value="id">
									<input type="hidden" name="currentPage" value="1">
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
							<div id="name">
								<form
									action="${ pageContext.request.contextPath }/admin/dolSearch.do"
									method="get" id="searchform3">
									<input type="hidden" name="search" value="name">
									<input type="hidden" name="currentPage" value="1">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 이름을 입력하세요." style="width: 250px;">
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
									action="${ pageContext.request.contextPath }/admin/dolSearch.do"
									method="get" id="searchform4">
									<input type="hidden" name="search" value="center">
									<input type="hidden" name="currentPage" value="1">
									<div class="input-group" style="margin-left: 5px;">
										<select id="searchcenter" name="keyword" style="width: 200px; padding-left: 5px;" class="form-control form-control-sm"> 
											<option selected="selected">센터선택</option>
											<option value="SC0001">강남구건강가정지원센터</option>
											<option value="SC0079">성남시건강가정지원센터</option> 
										</select>
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn4">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
						</div>
					</div>

					<!-- 검색창종료 -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- 여기서부터 -->
        <div class="panel panel-default">
                        <div class="panel-heading">
                            돌보미 목록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                        	<th>번 호</th>
                                            <th>이&nbsp;름</th>
                                            <th>아이디</th>
                                            <th>활동 등급</th>
                                            <th>휴대전화번호</th>
                                            <th>이메일</th>
                                            <th>가입일</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody">
                                        <c:forEach items="${requestScope.list }" var="admindol">
                                        
                                        <c:url var="admindoldet" value="/admin/dolDetail.do">
                                        	<c:param name="dol_id" value="${admindol.dol_id }"/>
                                        </c:url>
                                        
                                        <tr id="${admindol.dol_id }">                                       
                                            <td>${admindol.num }</td>
                                            <td>${admindol.dol_name }</td>
                                            <td class="id"><a href="${admindoldet }" style="text-decoration:none">${admindol.dol_id }</a></td>
                                            <td>${admindol.grade_name }</td>
                                            <td>${admindol.dol_phone }</td>
                                            <td>${admindol.dol_email }</td>
                                            <td>${admindol.dol_enrolldate }</td>                            
                                         </tr>
                                         </c:forEach>
                                    </tbody>
                                </table>
                                <!-- 페이징 시작 -->
                              <div class="col-sm-6">
                     <div class="dataTables_paginate paging_simple_numbers"
                        id="dataTables-example_paginate">
                        <!-- 검색어 없을 때 시작-->
                        <c:if test="${ empty paging.search}">
                        <ul class="pagination">
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:url var="list1" value="/admin/dollist.do">
                              <c:param name="currentPage" value="1"/>
                           </c:url>
                           <a href="${list1}">&lt;&lt;</a>
                           </li>
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
                                 <a href="${list1}">&lt;</a>
                           </c:if> 
                           <c:if test="${(paging.beginPage-paging.pageSize) > 1}">
                                 <c:url var = "list2" value="/admin/dollist.do">
                                    <c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/>
                                 </c:url>
                                 <a href="${list2}">&lt;</a>
                           </c:if></li>
                           
                           
                           <c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
                                 <c:url var="list3" value="/admin/dollist.do">
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
                           </c:forEach></li>
                           
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
                                 <c:url var="list4" value="/admin/dollist.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/>
                                 </c:url>
                                 <a href="${list4}">&gt;</a>
                           </c:if> 
                           <c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
                                 <c:url var="list5" value="/admin/dollist.do">
                                 <c:param name="currentPage" value="${paging.endPage + paging.pageSize}"/>
                                 </c:url>
                                 <a href="${list5}">&gt;</a>
                           </c:if></li>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:url var="list6" value="/admin/dollist.do">
                           <c:param name="currentPage" value="${paging.maxPage}"/>
                           </c:url>
                           <a href="${list6}">&gt;&gt;</a>
                           </li>
                        </ul>
                        </c:if>
                        <!-- 검색어 없을 때 끝 -->
                        <c:if test="${ !empty paging.search}">
                        <!-- 검색어 날짜 아닐 때 시작-->
                        <c:set var="option" value="${paging.search eq 'id'?'id':paging.search eq 'name'?'name':'center' }"/>
                        <c:if test="${option eq 'id'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        <c:if test="${option eq 'name'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        <c:if test="${option eq 'center'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        
                        <ul class="pagination">
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                              <c:url var="sOther1" value="/admin/dolSearch.do">
                                 <c:param name="currentPage" value="1"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                              <a href="${sOther1}">&lt;&lt;</a>
                           </li>
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
                                 <a href="${sOther1}">&lt;</a>
                              </c:if> 
                              <c:if test="${(paging.beginPage-paging.pageSize) > 1}">
                              <c:url var="sOther2" value="/admin/dolSearch.do">
                                 <c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${sOther2}">&lt;</a>
                              </c:if></li>
                           
                           <c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
                              <c:url var="sOther3" value="/admin/dolSearch.do">
                                 <c:param name="currentPage" value="${p }"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <c:if test="${p == paging.currentPage }">
                                 <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                    <a href="${sOther3 }">${p}</a></li>
                                 </c:if>
                                 <c:if test="${p != paging.currentPage}">
                                  <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
                                    <a href="${sOther3 }">${p}</a></li>
                                 </c:if>
                              </c:forEach>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
                              <c:url var="sOther4" value="/admin/dollist.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${ sOther4}">&gt;</a>
                              </c:if> <c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
                              <c:url var="sOther5" value="/admin/dolSearch.do">
                                 <c:param name="currentPage" value="${paging.endPage + paging.pageSize}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${ sOther5}">&gt;</a>
                              </c:if></li>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                              <c:url var="sOther6" value="/admin/dolSearch.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                              <a href="${ sOther6}">&gt;&gt;</a>
                           </li>
                        </ul>
                       
                        
                        <!-- 검색어 날짜 아닐 때 끝 -->
                        </c:if>
                     </div>
                  </div>
                                <!-- 페이징 종료 -->
                            </div>
                            <!-- /.table-responsive -->
                        </div>
        <!-- 여기까지 -->
	</div>
        <!-- /#page-wrapper -->
<!-- ======================================================================================================= -->
    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="/ibom/resources/admin/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="/ibom/resources/admin/vendor/bootstrap/js/bootstrap.min.js"></script>

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