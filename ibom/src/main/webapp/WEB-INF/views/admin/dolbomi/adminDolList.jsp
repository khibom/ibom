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
    	
/*     $("#tbody tr").on("click", function(){
    	var dolid = $(this).getAttribute('id');
    	
    	//window.alert(document.getElementById(test.getAttribute('id')).getAttribute('id'));
    	
    	console.log("dolid : "+dolid);
    	
    }) */
    
    $('table tbody tr').on('click', function() {
        location.href = $(this).children('.id').children('a').attr('href');
        return false;
    });
    	
    	
    	
    	
    	
    	
})//document.ready
    
    
    
    
function searchDolbomi(){
	document.getElementById('searchDolbomi').submit();
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
           	<form id="searchDolbomi"action="${pageContext.request.contextPath}/admin/searchDolbomi.do">
                <div class="input-group custom-search-form list-group-item-heading" style="display:inline-flex;">
                	
                    <input type="text" name="user_name"class="form-control" placeholder="검색어를 입력하세요">
                      <span class="input-group-btn">
                        <button onclick="searchDolbomi();"class="btn btn-default" type="button">
                           <i class="fa fa-search"></i>
                         </button>
                     </span>
                </div>
               </form>
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
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                <ul class="pagination">
                                <li tabindex="0" class="paginate_button previous disabled" id="dataTables-example_previous" aria-controls="dataTables-example"><a href="#">Previous</a>
                                </li><li tabindex="0" class="paginate_button active" aria-controls="dataTables-example"><a href="#">1</a></li>
                                <li tabindex="0" class="paginate_button " aria-controls="dataTables-example"><a href="#">2</a></li>
                                <li tabindex="0" class="paginate_button " aria-controls="dataTables-example"><a href="#">3</a></li>
                                <li tabindex="0" class="paginate_button " aria-controls="dataTables-example"><a href="#">4</a></li>
                                <li tabindex="0" class="paginate_button " aria-controls="dataTables-example"><a href="#">5</a></li>
                                <li tabindex="0" class="paginate_button " aria-controls="dataTables-example"><a href="#">6</a></li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example"><a href="#">Next</a>
                                </li>
                                </ul>
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