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
                <h1 class="page-header">돌보미 상세보기</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 여기서부터 -->
        <div class="panel panel-default">
                        <div class="panel-heading">
                           <h2>${requestScope.dol.dol_name }님은 돌보미입니다.</h2>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-bordered">
                                        <tr><th width="10%" text-align="center">돌보미명</th><td><input type="text" value="${requestScope.dol.dol_name }" name="dol_name"></td></tr>
                                            <tr><th>아이디</th><td><input type="text" value="${dol.dol_id }" name="dol_id"></td></tr>
                                            <tr><th>휴대전화번호</th><td><input type="phone" value="${dol.dol_phone }" name="dol_phone"></td></tr>
                                            <tr><th>이메일주소</th><td><input type="email" value="${dol.dol_email }" name="dol_email"></td></tr>
                                            <tr><th>집주소</th> <td><input type="text" value="${dol.dol_address }" name="dol_address"></td></tr>
                                            <tr><th>서비스제공기관</th><td><select name="office_name">
                                            <option value="${dol.office_code }" selected="selected">${dol.office_name }</option>
                                            <option>2</option>
                                            <option>3</option></select></td></tr>
                                            
                                            <tr><th>동의내역</th><td><input type="text" value="${dol.dol_termyesno}"></td></tr>
                                        
                                </table>
                                
                                <table class="table table-bordered">
                                        <tr>
                                            <th width="10%">은행</th><td width="23%"><input type="text" value="${dol.bank }"></td>
                                            <th width="10%">계좌번호</th><td width="23%">${dol.dol_account }</td>
                                            <th width="10%">예금주</th><td width="23%">${dol.dol_name }</td>
                                        </tr>
                                    
                                </table>
                                
                                <table class="table table-bordered">                                    
                                        <tr>
                                            <th width="10%">가입일</th><td><input type="date" value="${dol.dol_enrolldate }"></td>
                                            <th width="10%">회원등급</th><td><input type="text" value="${dol.grade_name }"></td>
                                            
                                        </tr>
                                    	<tr>
                                            <th>방문횟수</th><td></td>
                                            <th>최근로그인</th><td></td>
                                            
                                        </tr>
                                         <tr>
                                            <th>이번달 총 급여금액</th><td><input type="text" value="${dol.salary }"></td>
                                            <th>이번달 총 근무시간</th><td><input type="text" value="${dol.dol_totaltime }"></td>
                                            
                                        </tr>
                                         <tr>
                                            <th>징계내역</th><td><input type="text" value="${dol.trative_measure }"></td>
                                            <th>경력/자격증</th><td><input type="text" value="${dol.licen_name }"></td>
                                            
                                        </tr>
                                        
                                </table>
                                
                                 
        						<textarea rows="8" cols="260"width="100%"></textarea>
                                
                            </div>
                            <!-- /.table-responsive -->
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