<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
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
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

$(function(){
	var salDay = '${salDay.salary_day}';
	
	var date = new Date();
	var day = date.getDate();
	
	 if(salDay == day){
		
		$("#salaryDays").css("display", "block");
	}else{
		$("#salaryDays").css("display", "none");
	} 
	
	
});
function checkSalaryDay(){
	if(confirm("해당 일로 변경 하시겠습니까?")){
		document.getElementById("salary_date").submit();
		return false;
	}else{
		return false;
		}
}
function checkDolTimePay(){
	 var re = /^[0-9]{1,}$/;
	var dol_time_pay = $("#dol_time_pay").val(); 
	
	
	if(!re.test(dol_time_pay)){
		alert("숫자만 입력해주세요")
		return false;
	}
	
	if(confirm("해당 시급으로 변경 하시겠습니까?")){
		document.getElementById("dol_time_payForm").submit();
		return false;
	}else{
		return false;
		}
}

function checkdolSal(){
	if(confirm("해당 총 급여를 지급 하시겠습니까?")){
		location.href="${pageContext.request.contextPath}/admin/dolSalin.do";
		return false;
	}else{
		return false;
		}
}
</script>
<style type="text/css">
	#salaryDays{
	display:none;
	}
</style>
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
                <h1 class="page-header">급여관리</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 본문 1.차트 -->
          <div class="row">
            
        </div>
       
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    
                        <div class="panel-heading">
                          	급여관리
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            <form action="${pageContext.request.contextPath}/admin/salDayup.do" method="post"id="salary_date">
                            <h3>급여일 설정</h3>
                                <table class="table">
                                   <tr>
                                   		<th width="150px">변경전 급여일</th>
                                   		<td align="left">${salDay.salary_day} 일</td>
                                   </tr>
                                   <tr>
                                   		<th>변경할 급여일</th>
                                   		<td>
                                   			<select class="form-control" style="width:250px;" name="salary_day">
                                   				<option value="1">1</option>
                                   				<option value="2">2</option>
                                   				<option value="3">3</option>
                                   				<option value="4">4</option>
                                   				<option value="5">5</option>
                                   				<option value="6">6</option>
                                   				<option value="7">7</option>
                                   				<option value="8">8</option>
                                   				<option value="9">9</option>
                                   				<option value="10">10</option>
                                   				<option value="11">11</option>
                                   				<option value="12">12</option>
                                   				<option value="13">13</option>
                                   				<option value="14">14</option>
                                   				<option value="15">15</option>
                                   				<option value="16">16</option>
                                   				<option value="17">17</option>
                                   				<option value="18">18</option>
                                   				<option value="19">19</option>
                                   				<option value="20">20</option>
                                   				<option value="21">21</option>
                                   				<option value="22">22</option>
                                   				<option value="23">23</option>
                                   				<option value="24">24</option>
                                   				<option value="25">25</option>
                                   			</select>
                                   		</td>
                                   </tr>
                                </table>
                                 <button type="submit" onclick="checkSalaryDay();" style="float:right; margin-right:15px;"class="btn btn-warning">변경</button>
                              </form><br/><br/>
                              <div style="width:100%; height:50px; position:relative;"></div>
                               <h3>시급설정</h3>
                              <form action="${ pageContext.request.contextPath}/admin/dol_time_pay.do"id="dol_time_payForm" method="post">
                                <table class="table">
                                   <tr>
                                   		<th width="150px">변경전 돌보미 시급</th>
                                   		<td align="left"><fmt:formatNumber type="number" maxFractionDigits="3" value="${salDay.dol_time_pay}" /> 원</td>
                                   </tr>
                                   <tr>
                                   		<th>변경할  돌보미 시급</th>
                                   		<td>
                                   			<input type="text" name="dol_time_pay" id="dol_time_pay" class="text" style="border:none; width:60px;"> 원
                                   			<p style="color:rgb(243, 114, 51); display:inline-block;">&nbsp;,없이 숫자로만 입력해주세요</p>
                                   		</td>
                                   </tr>
                                </table>
                                <button style="float:right; margin-right:15px;"onclick="checkDolTimePay();" class="btn btn-warning">변경</button>
                              </form><br/><br/>
                              <div style="width:100%; height:50px; position:relative;"></div>
                              <div id="salaryDays">
                              <h3>급여승인</h3>
                              <table class="table">
                                   <tr>
                                   		<th width="150px">결제일</th>
                                   		<c:if test="${ not empty salDay.salary_day}">
                                   		<td align="left">${salDay.salary_day} 일</td>
                                   		</c:if>
                                   		<c:if test="${empty salDay.salary_day}">
                                   		<td align="left">${salDay.salary_day} 일</td>
                                   		</c:if>
                                   </tr>
                                   <tr>
                                   		<th>총 지급액</th>
                                   		<td>
                                   			<c:if test="${not empty dol_totalSalary}">
                                   			<fmt:formatNumber type="number" maxFractionDigits="3" value="${dol_totalSalary}" /> 원
                                   			</c:if>
                                   			<c:if test="${empty salDay.salary_day}">
                                   			&nbsp;
                                   			</c:if>
                                   		</td>
                                   </tr>
                                   <tr>
                                   		<th>총 공제액</th>
                                   		<td><c:if test="${not empty totalDeduction}">
                                   			<fmt:formatNumber type="number" maxFractionDigits="3" value="${totalDeduction}" /> 원
                                   			</c:if>
                                   			<c:if test="${empty totalDeduction}">
                                   				&nbsp;
                                   			</c:if>
                                   		</td>
                                   </tr>
                                   <tr>
                                   		<th>실 지급액</th>
                                   		<td>
                                   			<c:if test="${not empty resultSalary}">
                                   			<fmt:formatNumber type="number" maxFractionDigits="3" value="${resultSalary}" /> 원
                                   			</c:if>
                                   			<c:if test="${empty resultSalary}">
                                   			 &nbsp;
                                   			</c:if>
                                   		</td>
                                   </tr>
                                </table>
                                <button onclick="checkdolSal();" style="float:right; margin-right:15px;" class="btn btn-warning">일괄지급</button>
                               
                                </div>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
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