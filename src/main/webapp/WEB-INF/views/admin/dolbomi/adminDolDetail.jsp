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
		location.href="${pageContext.request.contextPath }/admin/dollist.do";
		return false;
	})
})
    	
    	
    	
    	
    
    
    
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
                <h2 class="page-header">돌보미 상세보기</h2>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <button style="float:right; margin-right:15px; margin-top:5px;" onclick="assignmentPop();" class="btn btn-warning">수   정</button>
        <button style="float:right; margin-right:15px; margin-top:5px;" id="movelist" class="btn btn-warning">목  록</button>        
        
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 여기서부터 -->
        <div class="panel panel-warning">
                        <div class="panel-heading">
                           ${requestScope.dol.dol_name }님은 돌보미입니다.
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                        <!-- =============================================================================================돌보미 개인정보 시작-->
                                <div class="col-lg-12">
				                    <div class="panel panel-success">
				                        <div class="panel-heading">
				                          <i class="fa fa-info-circle" aria-hidden="true"></i>&nbsp; 돌보미 개인정보
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                           <!--  <div class="table-responsive table-bordered"> -->
				                                <table class="table table-bordered">
				                                        <tr><th width="25%" text-align="center">돌보미명</th><td width="25%"><input type="text" value="${requestScope.dol.dol_name }" name="dol_name"></td>
				                                            <th width="25%">아이디</th><td width="25%"><input type="text" value="${dol.dol_id }" name="dol_id"></td></tr>
				                                            <tr><th>휴대전화번호</th><td><input type="phone" value="${dol.dol_phone }" name="dol_phone"></td>
				                                            <th>이메일주소</th><td><input type="email" value="${dol.dol_email }" name="dol_email"></td></tr>
				                                            
				                                            <tr><th colspan="2">집주소</th><th colspan="2">서비스제공기관</th></tr>
				                                            <tr><td colspan="2"><input type="text" value="${dol.dol_address }" name="dol_address" style="width:450px;"></td>
				                                            <td colspan="2"><select name="office_name">
				                                            <option value="${dol.office_code }" selected="selected">${dol.office_name }</option>
				                                            </select></td></tr>
				                                </table>
				                          <!--   </div> -->
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>                               
                                   <!-- ===================================================================돌보미 기본정보 끝 -->
                        <!-- =============================================================================================돌보미 계좌 정보 시작-->
                                <div class="col-lg-12">
				                    <div class="panel panel-success">
				                        <div class="panel-heading">
				                          <i class="fa fa-krw" aria-hidden="true"></i>&nbsp;돌보미 계좌 정보 
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <!-- <div class="table-responsive table-bordered"> -->
				                                <table class="table table-bordered">
				                                        <tr>
				                                            <th width="10%">은행</th><td width="23%"><input type="text" value="${dol.bank }"></td>
				                                            <th width="10%">계좌번호</th><td width="23%"><input type="text" value="${dol.dol_account }"></td>
				                                            <th width="10%">예금주</th><td width="23%"><input type="text" value="${dol.dol_name }"></td>
				                                        </tr>
				                                    
				                                </table>
				                            <!-- </div> -->
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>                               
                                   <!-- ===================================================================돌보미 계좌정보 끝 -->
                        
                        <!-- =============================================================================================돌보미 활동 정보 시작-->
                                <div class="col-lg-12">
				                    <div class="panel panel-success">
				                        <div class="panel-heading">
				                          <i class="fa fa-user" aria-hidden="true"></i>&nbsp;돌보미 활동 정보 
				                        </div>
				                        <!-- /.panel-heading -->
				                        <div class="panel-body">
				                            <!-- <div class="table-responsive table-bordered"> -->
				                                <table class="table table-bordered">                                    
			                                        <tr>
			                                            <th width="25%">가입일</th><td width="25%">${dol.dol_enrolldate }</td>
			                                            <th width="25%">회원등급</th><td width="25%"><input type="text" value="${dol.grade_name }"></td>
			                                            
			                                        </tr>
													<tr>
			                                            <th>이번달 <br>총 급여금액</th><td>${dol.salary }</td>
			                                            <th>이번달 <br>총 근무시간</th><td>${dol.dol_totaltime }</td>
			                                            
			                                        </tr>
			                                         <tr>
			                                            <th>징계내역</th>
			                                            <c:if test="${ empty dol.trative_measure }">
			                                            <td>징계내역 없음</td>
			                                            </c:if>
			                                            <c:if test="${ !empty dol.trative_measure }">
			                                            <td>${dol.trative_measure }</td>
			                                            </c:if>
			                                            <th>경력/자격증</th><td><input type="text" value="${dol.licen_name }"></td>
			                                            
			                                        </tr>
			                                        
			                                </table>
				                            <!-- </div> -->
				                            <!-- /.table-responsive -->
				                        </div>
				                        <!-- /.panel-body -->
				                    </div>
				                    <!-- /.panel -->
				                </div>                               
                                   <!-- ===================================================================돌보미 활동정보 끝 -->
                            
                        </div>
                        <!-- /.panel-body -->
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