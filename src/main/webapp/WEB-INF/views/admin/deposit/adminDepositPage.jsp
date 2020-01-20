<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>    
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
		
		
		$("#successRefund").click(function(event){
			var str = [];
			$(".chk:checked").each(function(index){
				str += $(this).val() + ",";
			});
			if(str != ""){
			if(confirm("환불요청 건을 승인하시겠습니까?")){
				alert("승인이 완료 되었습니다.")
				location.href="${pageContext.request.contextPath}/admin/admitUsepay.do?user_id=" + str;
				return false;
			}else{
				return false;
				}
			}
			alert("이용자를 선택해 주세요!")
			return false;
		});
		$("#cancelRefund").click(function(event){
			var str = [];
			$(".chk:checked").each(function(index){
				str += $(this).val();
			});
			if(str != ""){
				if(confirm("환불요청 을 취소 하시겠습니까?")){
					location.href="${pageContext.request.contextPath}/admin/admitCancelUsepay.do?user_id=" + str;
					return false;
				}else{
					return false;
				}
			}
			alert("이용자를 선택해 주세요!")
			return false;
			
		});
		
		$(".chkAll").click(function(){
			
			if($(".chkAll").prop("checked")) { 
				$(".chk").prop("checked",true);
				} else { 
				$(".chk").prop("checked",false); 
				}


		});
		
	});

function searchDepo(){
	document.getElementById('searchDepo').submit();
}
</script>
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
                <h1 class="page-header">예치금 관리</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 본문 1.차트 -->
          <div class="row">
            <div class="col-lg-5">
           	<form id="searchDepo"action="${pageContext.request.contextPath}/admin/searchdepo.do">
                <div class="input-group custom-search-form list-group-item-heading" style="display:inline-flex;">
                	
                    <input type="text" name="user_name"class="form-control" placeholder="이름으로 검색">
                      <span class="input-group-btn">
                        <button onclick="searchDepo();"class="btn btn-default" type="button">
                           <i class="fa fa-search"></i>
                         </button>
                     </span>
                </div>
               </form>
            </div>
            <button style="float:right; margin-right:15px;"id="successRefund" class="btn btn-warning">환불승인</button><button style="float:right; margin-right:15px;"id="cancelRefund" class="btn btn-warning">환불취소</button>
            <!-- /.col-lg-12 -->
        </div>
       
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    
                        <div class="panel-heading">
                          	예치금 목록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                        	<th><input type="checkbox" class="chkAll"> </th>
                                            <th>이용자명</th>
                                            <th>환불금액</th>
                                            <th>환불요청일시</th>
                                            <th>환불요청계좌</th>
                                            <th>처리상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                     <c:if test="${not empty depo}">
                                        <c:forEach var="de" items="${depo}" varStatus="status">
                                        <tr>
                                            <td><input type="checkbox" class="chk" value="${ de.user_id}"></td>
                                            <td>${de.user_name}</td>
                                            <td>${de.depo_pay}</td>
                                            <td>${de.use_day }</td>
                                            <td><c:out value="${fn:substring(de.refund_account, 0, fn:length(de.refund_account) - 4)}" /> ****</td>
                                            <td>대기</td>
                                        </tr>
                                        </c:forEach>
                                    </c:if>
                                        <c:if test="${empty depo}">
                                        	<tr>
                                        	<td colspan="6" align="center" style="font-weight:bold;">조회할 예치금이 없습니다</td>
                                        	</tr>
                                    	</c:if>
                                    </tbody>
                                </table>
                               <div class="col-sm-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                <ul class="pagination">
                                 <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=1">&lt;&lt;</a>
                                </li>
                                <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
                                <a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=1">&lt;</a>
                                </c:if>
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
                                <a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${commonPage.beginPage-commonPage.pageSize}">&lt;</a>
                                </c:if>
                                </li>
                                <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
                                <c:if test="${p == commonPage.currentPage }">
                                 <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
							 		<a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${p}">${p}</a>
							 		</li>
								</c:if>
								<c:if test="${p != commonPage.currentPage}">
								 <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
								<a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${p}">${p }</a>
								</li>
								</c:if>
                                </c:forEach>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                 <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
									<a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${commonPage.maxPage}">&gt;</a>
								</c:if>
                               <c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
								 <a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${commonPage.endPage + commonPage.pageSize}">&gt;</a>
								</c:if>
                                </li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                <a href="${pageContext.request.contextPath }/admin/moveDepolist.do?page=${commonPage.maxPage}">&gt;&gt;</a>
                                </li>
                                </ul>
                                </div>
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