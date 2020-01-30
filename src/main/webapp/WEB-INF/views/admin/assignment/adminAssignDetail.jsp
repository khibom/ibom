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
<script type="text/javascript" src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
    
$(function(){
	$("#movelist").on('click',function(){
		<c:url var="adminAssign" value="/admin/dolAssignList.do">
    		<c:param name="currentPage" value="${requestScope.currentPage}"/>
    	</c:url>
		location.href="${adminAssign}";
		return false;
	})
})
function assignmentPop(){
		<c:url var="assignmentDolbomi" value="/admin/assignDolbomi.do">
			<c:param name="stitle" value="${requestScope.ass.service2_no}"/>
			<c:param name="currentPage" value="1"/>
		</c:url>
		var url = "${ assignmentDolbomi}";
        var name = "userPledgePop";
        var option = "width = 500, height = 500, top = 100, left = 200, location = no";
        window.open(url, name, option);
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
	                <h3 class="page-header">돌보미 배정 상세보기</h3>
            	</div>
            <!-- /.col-lg-12 -->
        	</div>
        <button style="float:right; margin-right:15px; margin-top:5px;" id="movelist" class="btn btn-warning">목  록</button>
        <button style="float:right; margin-right:15px; margin-top:5px;" onclick="assignmentPop();" class="btn btn-warning">돌보미 배정</button>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 여기서부터 -->
        <div class="panel panel-warning">
                        <div class="panel-heading">
                           ${requestScope.ass.service2_no }건의 배정 상세보기 입니다.
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        
                          <div class="row">
                                <div class="col-lg-8">
				                    <div class="panel panel-info">
				                        <div class="panel-heading">
				                          <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; 기본정보
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                           <div class="table-responsive">
				                                <table class="table table-bordered">
				                                <thead>
				                                        <tr><th>번호</th>				                                        
				                                        <th>아이디(이름)</th>
				                                        <th>서비스 일시</th>
				                                        <th>신청건 상태</th></tr>
				                                 </thead>
				                                 <tbody>
				                                 	<tr><td>${requestScope.ass.service2_no }</td><td>${ass.user_id}(${ass.user_name})</td>
				                                 	<td>${ass.service_date }&nbsp;${ass.care_day }요일&nbsp;${ass.startt }~${ass.endt}</td>
				                                 	<td><span id="status">${ass.apply_status }</span></td></tr>
				                                 </tbody>       
				                                </table>
				                            </div>
				                            
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>
                                
                                <!-- ===================================================================배정된 돌보미-->
                                
                                 
                                <div class="col-lg-4">
				                    <div class="panel panel-red">
				                        <div class="panel-heading">
				                          <i class="fa fa-user" aria-hidden="true"></i>&nbsp;배정된 돌보미
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                           
				                                <table class="table table-bordered">
			                               			<thead>                     
			                                			<tr><th>돌보미 아이디</th><th>돌보미 이름</th></tr>
			                                		</thead>
				                                    <tbody>
				                                    	<tr><td><span id="dolid">${ass.dol_id }</span></td><td><span id="dolname">${ass.dol_name }</span></td></tr>
				                                    </tbody>
				                                </table>
				                            
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>
				                </div>
				                <!-- /.row -->
				                <!-- ===================================================================아동 정보 -->
                                <div class="col-lg-12">
				                    <div class="panel panel-info">
				                        <div class="panel-heading">
				                          <i class="fa fa-child" aria-hidden="true"></i>&nbsp;아동 정보
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <div class="table-responsive table-bordered">
				                                <table class="table">
				                                    <thead>
				                                        <tr>
				                                           <th>코드번호</th>
				                                            <th>이름</th>
				                                            <th>생년월일</th>
				                                            <th>서비스유형</th>
				                                        </tr> 
				                                    </thead>
				                                    <tbody>
					                                    <c:forEach items="${ requestScope.babyList}" var="babyList">
					                             		<tr>
					                             		<td>${babyList.family_code }</td><td>${babyList.family_name }</td><td>${babyList.baby_birth}</td><td>${babyList.service_typ }</td>
					                             		</tr>
					                             		</c:forEach>                         		                                      
				                                    </tbody>
				                                </table>
				                            </div>
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>     
				                
				                 
								<!-- =============================================================================================이전 돌보미 정보 -->
                                <div class="col-lg-12">
				                    <div class="panel panel-success">
				                        <div class="panel-heading">
				                          <i class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;이전 돌보미 정보
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <div class="table-responsive table-bordered">
				                                <table class="table">
				                                    <thead>
				                                        <tr>
				                                           <th>서비스 일자</th>
				                                        	<th>돌보미 아이디</th>
				                                            <th>돌보미 이름</th>
								                                        </tr>
				                                    </thead>
				                                    <tbody>
					                                    <c:if test="${empty requestScope.previousList}">
					                                    	<tr><td colspan='3'>이 전 돌보미가 없습니다. </td></tr>
					                                    </c:if>
					                               		<c:forEach items="${ requestScope.previousList}" var="previousList">
					                             		<tr>
					                             		<td>${previousList.service_date }</td><td>${previousList.dol_id }</td><td>${previousList.dol_name}</td>
					                             		</tr>
					                             		</c:forEach>                         		                                      
				                                    </tbody>
				                                </table>
				                            </div>
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>                               
                                   <!-- ===================================================================사용자 요청사항 -->
                                <div class="col-lg-12">
				                    <div class="panel panel-danger">
				                        <div class="panel-heading">
				                           <i class="fa fa-thumb-tack" aria-hidden="true"></i>&nbsp;사용자 요청사항
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <div class="table-responsive table-bordered">
				                                <table class="table">
				                                    <thead>
				                                        <tr>
				                                            <th>서비스 기관</th>
                                        					<th>돌보미</th>
				                                        </tr>
				                                    </thead>
				                                    <tbody>
				                                     	<tr>
						                             		<td>
						                             		<c:if test="${ empty ass.req_institution }">
						                             		서비스 기관에 대한 요청사항이 없습니다.
						                             		</c:if>
						                             		<c:if test="${ !empty ass.req_institution }">
						                             		${ ass.req_institution }
						                             		</c:if>
						                             		</td><td>
						                             		<c:if test="${ empty ass.req_dolbomi }">
						                             		돌보미에 대한 요청사항이 없습니다.
						                             		</c:if>
						                             		<c:if test="${ !empty ass.req_dolbomi }">
						                             		${ ass.req_dolbomi }
						                             		</c:if>
						                             		</td>
						                             	</tr>                             		                                      
				                                    </tbody>
				                                </table>
				                            </div>
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>
                                 
        <!-- 여기까지 -->
        </div>
        <!-- /.panel-body -->
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