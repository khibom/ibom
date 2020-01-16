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
				str += $(this).val();
			});
			if(str != ""){
			if(confirm("환불요청 건을 승인하시겠습니까?")){
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

function searchActLog(){
	 	var langSelect = document.getElementById("id-lang");
	    $("#dolbom_type").val($("#result").val());
	    
		document.getElementById('searchDepo').submit();
}
function chageLangSelect(){
    var langSelect = document.getElementById("id-lang");
     
    // select element에서 선택된 option의 value가 저장된다.
    selectValue = langSelect.options[langSelect.selectedIndex].value;
 	
    location.href="${pageContext.request.contextPath}/admin/moveAcloglist.do?logCategory=" + selectValue;
}
function moveDetail(val){
	javascript:location.href="${pageContext.request.contextPath}/admin/actDetailLog.do?service2_no=" + val + "&logCategory=${val}";
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
                <h1 class="page-header">활동일지 관리</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 본문 1.차트 -->
          <div class="row">
            <div class="col-lg-5">
           	<form id="searchDepo"action="${pageContext.request.contextPath}/admin/dolsearchAct.do" onsubmit="return searchActLog();">
           	<input type="hidden" name="dolbom_type" id="dolbom_type">
                <div class="input-group custom-search-form list-group-item-heading" style="display:inline-flex;">
                	<select class="form-control"name="process_ctgry" style="width:170px; float:left;"> 
                		<option  selected disabled>--유형선택--</option>
                		<option value="대기">대기</option>
                		<option value="승인완료">승인완료</option>
                		<option value="승인반려">승인반려</option>
                	</select>
                    <input type="text" name="dol_name"class="form-control" placeholder="이름으로 검색">
                      <span class="input-group-btn">
                        <button onclick="searchActLog();"class="btn btn-default" type="button">
                           <i class="fa fa-search"></i>
                         </button>
                     </span>
                </div>
               </form>
            </div>
            <select class="form-control" id="id-lang" name="lang" onchange="chageLangSelect()" style="float:right; width:200px; margin-right:15px;">
                		<option value="종합형" selected disabled>--유형선택--</option>
                		<option value="종합형">종합형</option>
                		<option value="일반형">일반형</option>
                		<option value="종일제">종일제</option>
                	</select>
            <!-- /.col-lg-12 -->
        </div>
       
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                    
                        <div class="panel-heading">
                          	활동일지 목록
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                        	<th>서비스 번호</th>
                                            <th>활동내용</th>
                                            <th>작성자</th>
                                            <th>작성일</th>
                                            <th>처리상태</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:if test="${not empty list }">
                                    	<input type="hidden" value="종일제" id="result">
                                        <c:forEach var="a" items="${list}" varStatus="status">
                                        	<tr onclick="moveDetail(this.id);" id="${a.service2_no},${a.family_code}">
                                        	<td>${a.service2_no}</td>
                                        	<td>${a.symotom}</td>
                                        	<td>${a.dol_id }</td>
                                        	<td>${a.create_date }</td>
                                        	<td>${a.process_ctgry }</td>
                                        	</tr>
                                        </c:forEach>
                                    </c:if>
                                     <c:if test="${not empty nlist }">
                                     <input type="hidden" value="일반형" id="result">
                                       <c:forEach var="n" items="${nlist}" varStatus="status">
                                        	<tr onclick="moveDetail(this.id);" id="${n.service2_no},${n.family_code}">
                                        	<td>${n.service2_no}</td>
                                        	<td>${n.ac_content}</td>
                                        	<td>${n.dol_id }</td>
                                        	<td>${n.create_date }</td>
                                        	<td>${n.process_ctgry }</td>
                                        	</tr>
                                        </c:forEach>
                                        </c:if>
                                     <c:if test="${not empty slist }">
                                     <input type="hidden" value="종합형" id="result">
                                        <c:forEach var="s" items="${slist}" varStatus="status">
                                        	<tr onclick="moveDetail(this.id);" id="${s.service2_no},${s.family_code}">
                                        	<td>${s.service2_no}</td>
                                        	<td>${s.ac_content}</td>
                                        	<td>${s.dol_id }</td>
                                        	<td>${s.create_date }</td>
                                        	<td>${s.process_ctgry }</td>
                                        	</tr>
                                        </c:forEach>
                                    </c:if>
                                    </tbody>
                                </table>
                                <div class="col-sm-6">
                                <div class="dataTables_paginate paging_simple_numbers" id="dataTables-example_paginate">
                                <ul class="pagination">
                                 <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=1&logCategory=${val}">&lt;&lt;</a>
                                </li>
                                <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize)<= 1}">
                                <a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=1&logCategory=${val}">&lt;</a>
                                </c:if>
                                <c:if test="${(commonPage.beginPage-commonPage.pageSize) > 1}">
                                <a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${commonPage.beginPage-commonPage.pageSize}&logCategory=${val}">&lt;</a>
                                </c:if>
                                </li>
                                <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                <c:forEach var="p" begin="${commonPage.beginPage }" end="${commonPage.endPage }">
                                <c:if test="${p == commonPage.currentPage }">
							 		<a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${p}&logCategory=${val}">${p}</a>
								</c:if>
								<c:if test="${p != commonPage.currentPage}">
								<a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${p}&logCategory=${val}">${p }</a>
								</c:if>
                                </c:forEach>
                                </li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                 <c:if test="${(commonPage.endPage+commonPage.pageSize) > commonPage.maxPage }">
									<a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${commonPage.maxPage}&logCategory=${val}">&gt;</a>
								</c:if>
                               <c:if test="${(commonPage.endPage+commonPage.pageSize) <= commonPage.maxPage }">
								 <a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${commonPage.endPage + commonPage.pageSize}&logCategory=${val}">&gt;</a>
								</c:if>
                                </li>
                                <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                                <a href="${pageContext.request.contextPath }/admin/moveAcloglist.do?page=${commonPage.maxPage}&logCategory=${val}">&gt;&gt;</a>
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