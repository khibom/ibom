
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

    <title>관리자 공지사항 상세보기</title>

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
<!-- CSS -->
<style type="text/css">
.table>tbody>tr.info22>td, .table>tbody>tr.info22>th, .table>tbody>tr>td.info2, .table>tbody>tr>th.info2, .table>tfoot>tr.info2>td, .table>tfoot>tr.info2>th, .table>tfoot>tr>td.info2, .table>tfoot>tr>th.info2, .table>thead>tr.info2>td, .table>thead>tr.info2>th, .table>thead>tr>td.info2, .table>thead>tr>th.info2 {
    background-color: #eee; text-align: center;
}
<!-- ============================= -->
</style>
<script type="text/javascript">
<!-- JS -->
   	function noticesubmit() {
   		
    	var title = $("#title").val();
  		var content = $("#content").val();
  		
 		if(title=="" || content==""){
 			 alert("제목이나 내용이 비어있습니다. 제목 및 내용을 적어주세요.");
 		}else {
        	return;
        }
        return false;
   	 };
</script>
<!-- JS -->
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
                <h1 class="page-header">공지사항 상세보기</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
        <form action="${pageContext.request.contextPath}/admin/noticeupdate.do" method="post" enctype="multipart/form-data" onsubmit="return noticesubmit();">
        <input type="hidden" name="notice_no" value="${dto.notice_no}">
                <table class="table" style="margin:0;">
			    <tr>
			        <th scope="row" class="info2">글쓴이</th>
			        <td>${dto.emp_name}</td>
			        <th scope="row" class="info2">등록일</th>
			        <td><input type="hidden" name="notice_date" value="${dto.notice_date}">${dto.notice_date}</td>
			    </tr>
			    <tr>
			        <th scope="row" class="info2 " style="line-height: 2;">제목</th>
			        <td colspan="4"><input type="text" class="form-control" style="width: 100%;" name="notice_title" value="${dto.notice_title}" id="title"></td>
			    </tr>
			    <tr>
			        <th scope="row" class="info2" style="line-height: 3;">첨부파일</th>
			        <td colspan="4"><input type="file" name="upfile"><a href="${pageContext.request.contextPath}/fdown.do?fname=${dto.rename_filepath}">${dto.original_filepath}</a></td>
			    </tr>
			    <tr>
			    	<th scope="row" class="info2" style="line-height: 20;">내용</th>
			    	<td colspan="4"><textarea style="width: 100%; border:none;" rows="16" id="content" name="notice_content" id="content"><c:out value="${dto.notice_content }"/></textarea>
			    	</td>
			    </tr>
			</table>
			<input type="button" class="btn btn-warning" style="float:right; margin: 5px;" onclick="location.href='${pageContext.request.contextPath}/moveadminnotice.do'" value="목록">
			<c:choose>
			<c:when test="${dto.emp_name == emp.emp_name }">
			<input type="submit" class="btn btn-warning" style="float:right; margin: 5px;" value="수정">
			<input type="button" class="btn btn-warning" style="float:right; margin: 5px;" onclick="location.href='${pageContext.request.contextPath}/admin/adminnoticedelete.do?anum=${dto.notice_no}'" value="삭제">
			 </c:when>
			 </c:choose>
               </form>
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
