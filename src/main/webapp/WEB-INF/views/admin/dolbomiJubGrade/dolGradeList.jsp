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

table th, thead tr th, tbody tr td { text-align : center; vertical-align: center;}
</style>
<script type="text/javascript" src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    
$(function(){
    	
/*     $("#tbody tr").on("click", function(){
    	var dolid = $(this).getAttribute('id');
    	
    	//window.alert(document.getElementById(test.getAttribute('id')).getAttribute('id'));
    	
    	console.log("dolid : "+dolid);
    	
    }) */
    
    $('table tbody tr').on('click', function() {
    	var tr = $(this);
 		var td = tr.children();
 		
 		var code = td.eq(0).text();
 		var name = td.eq(1).text();
 		var access = td.eq(4).text();
 		var service = td.eq(5).text();
 		console.log("access : "+access+", service :"+service)
 		
 		document.getElementById('name').innerHTML = name;
 		document.getElementById('code').innerHTML = code;
 		if(access === 'Y'){
 			$("#access").attr("checked", true);
 		}else{
 			$("#access").attr("checked", false);
 		}
 		if(service === 'Y'){
 			$("#service").attr("checked", true);
 		}else{
 			$("#service").attr("checked", false);
 		}
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
                <h1 class="page-header">돌보미 판정등급 관리 목록</h1>
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
        <div class="panel panel-warning">
                        <div class="panel-heading">
                            돌보미 등급 목록
                             <button style="float:right; margin:-8px;" id="rowplus" class="btn btn-warning">추  가</button>
                        </div>
                        
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                        	<th>등급코드</th>
                                            <th>등  급  명</th>
                                            <th>등급 설명</th>
                                            <th>회원 수 </th>
                                            <th>접속 허용</th>
                                            <th>돌보미 활동</th>
                                            <th>마지막 수정일자</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${requestScope.list }" var="dolgrade">
										<tr data-toggle="modal" data-target="#myModal">
										
											<td>${dolgrade.dgrade_no }</td>                                       
                                            <td>${dolgrade.grade_name }</td>
                                            <td>${dolgrade.grade_memo }</td>
                                            <td>${dolgrade.usecount }</td>
                                            <td>${dolgrade.access_allow }</td>
                                            <td>${dolgrade.service_allow }</td>
                                            <td>${dolgrade.lastmodified }</td>                            
                                         </tr>
                                         </c:forEach>
                                    </tbody>
                                </table>
                                <!-- 모달 복붙 ===================================================================================================================-->
						
                	<!-- Button trigger modal -->
			<!-- 			 <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                                수정
                            </button>
						 -->
						<!-- Modal -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">돌보미 등급 수정</h4>
                                        </div>
                                        <div class="modal-body">
						      
						      <div class="row">
						       <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	등급 정보
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">                          
                                <table class="table table-bordered">
                                   <thead>
                                        <tr>
                                            <th>등급명</th><th>등급코드</th><th>접속 허용</th><th>서비스 허용</th>  
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr><td><span id="name"></span></td><td><span id="code"></span></td>
                                    	<td><span><input type="checkbox" id="access"></span></td>
                                    	<td><span><input type="checkbox" id="service"></span></td>
										</tr>
										
                                    </tbody>
                                </table>
                         		
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                </div>
                
                
						      </div>
						      <div class="modal-footer">
                                            <button type="button" class="btn btn-danger" data-dismiss="modal">Delete</button>
                                            <button type="button" class="btn btn-primary">Update</button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                <!-- /.modal-dialog -->
                            </div>
						<!-- Modal -->
						<!-- 모달끝 -->
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