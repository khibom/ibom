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

    <title>고객전화 서면민원</title>

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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<style>
.table th{text-align:center;}
.table td{text-align:center;}
</style>
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
                <h1 class="page-header">고갠전화 서면민원 관리</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        
            <div>
              <form id="searchDepo"action="">
                <div class="input-group custom-search-form list-group-item-heading" style="display:inline-flex;">
                <select name="selectoption" class="form-control">
                  <option value="title">제목</option>
                  <option value="uname">작성자</option>
              </select>
                    <input type="text" name="searchtext"class="form-control" placeholder="이름으로 검색">
                      <span class="input-group-btn">
                        <input type="submit" class="btn btn-default" value="찾기">
                           <i class="fa fa-search"></i>
                     </span>
                </div>
                <button type="button" class="btn btn-warning" style="float:right;" onclick="location.href='moveinsertnotice.do'">등록</button>
                 </form>
            </div>
    <!--===========================================================================-->
          <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    
                        <div class="panel-heading">
                             활동일지 목록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
	    <tr>
	        <th style="width:5%">번호</th>
	        <th style="width:50%">제목</th>
	        <th style="width:7%">글쓴이</th>
	        <th style="width:7%">작성일</th>
	    </tr>
	    </thead>
	    <c:forEach var="row" items="${complaintList}">
	    <tbody>
	    <tr>
	        <td>${row.com_no}</td>
	        <td><a href="adminnoticedetail.do?anum=${row.com_no}&page=${commonPage.currentPage}">${row.com_title}</a></td>
	        <td>${row.emp_name}</td>
	        <td>${row.com_date}</td>
	    </tr>
	    </tbody>
	    </c:forEach>
		</table>
		<!--===========================================================================-->
							<div class="col-sm-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                <ul class="pagination">
                                 <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <a href="moveadminnotice.do?page=1&selectoption=${selectoption}&searchtext=${searchtext}">&lt;&lt;</a>
                                </li>
                                <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
                                <a href="moveadminnotice.do?page=1&lselectoption=${selectoption}&searchtext=${searchtext}">&lt;</a>
                                </c:if>
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
                                <a href="moveadminnotice.do?page=${commonPage.beginPage-commonPage.pageSize}&selectoption=${selectoption}&searchtext=${searchtext}">&lt;</a>
                                </c:if>
                                </li>
                                <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
                                <c:if test="${p == commonPage.currentPage }">
                                <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                            <a href="moveadminnotice.do?page=${p}&selectoption=${selectoption}&searchtext=${searchtext}">${p}</a>
                            </li>
                        </c:if>
                        <c:if test="${p != commonPage.currentPage}">
                        <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
                        <a href="moveadminnotice.do?page=${p}&selectoption=${selectoption}&searchtext=${searchtext}">${p}</a>
                        </li>
                        </c:if>
                                </c:forEach>
                                </li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                 <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
                           <a href="moveadminnotice.do?page=${commonPage.maxPage}&selectoption=${selectoption}&searchtext=${searchtext}">&gt;</a>
                        </c:if>
                               <c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
                         <a href="moveadminnotice.do?page=${commonPage.endPage + commonPage.pageSize}&selectoption=${selectoption}&searchtext=${searchtext}">&gt;</a>
                        </c:if>
                                </li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                <a href="moveadminnotice.do?page=${commonPage.maxPage}&selectoption=${selectoption}&searchtext=${searchtext}">&gt;&gt;</a>
                                </li>
                                </ul>
                                </div>
                                </div>
							</div>
						</div>
					</div>
				</div>
            </div>
            <!-- /.row -->
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