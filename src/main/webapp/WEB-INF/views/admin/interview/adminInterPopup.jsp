<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">

table th, thead tr th, tbody tr td { text-align : center;}
</style>
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#cancle").click(function(){
		window.self.close();
	})
	$("#update").click(function(){
		//보낼 값 담기
		var no = '${inter.inter_no}';
		var date = $("#inter_date").val();
		var time = $("#inter_time").val();
		var status = $("#inter_status").val();
		var editer = '${loginAdmin.emp_id}';
		$.ajax({
			url:"${ pageContext.request.contextPath }/admin/interUpdate.do",
			data:{inter_no: no, inter_date: date, inter_time: time, inter_status: status, inter_user_id: editer},
			type:"post",
			success:function(result){
				if(result == "ok"){
					alert("수정성공");	
					window.opener.location.reload();
					window.self.close();
				}else{
					alert("수정실패");	
				}
			},
			error: function(request, status, errorData){
				console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
			}
			
			
		})//ajax종료
	})
});

</script>
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />

    <!-- Bootstrap Core CSS -->
    <link href="/ibom/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom Fonts -->
     <link href="/ibom/resources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	
                                    <div class="modal-content">
                                        <div class="modal-header">
                                        	<button type="button" class="btn btn-default" id="update" style="float:right;">수정</button>
                                            <button type="button" class="btn btn-defaultwarning" id="cancle" style="float:right;margin-right:15px;">취소</button>
                                            <h4 class="modal-title" id="myModalLabel">${paging.stitle }건 면접  정보 수정 </h4>
                                        </div>
                                        <div class="modal-body">
						      
						      <div class="row">
						       <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	면접일정
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">                          
                                <table class="table table-bordered">
                                   <thead>
                                        <tr>
                                            <th>일자</th><th>시간</th><th>상태</th> 
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<tr><td><input type="date" name="inter_date" id="inter_date" class="interDate" value="${inter.inter_date }"></td>
                                           <td><select name="inter_time" id="inter_time" class="interTime">
												<option value="9"
													${inter.inter_time eq '9'?"selected":"" }>9</option>
												<option value="10"
													${inter.inter_time eq '10'?"selected":"" }>10</option>
												<option value="11"
													${inter.inter_time eq '11'?"selected":"" }>11</option>
												<option value="12"
													${inter.inter_time eq '12'?"selected":"" }>12</option>
												<option value="13"
													${inter.inter_time eq '13'?"selected":"" }>13</option>
												<option value="14"
													${inter.inter_time eq '14'?"selected":"" }>14</option>
												<option value="15"
													${inter.inter_time eq '15'?"selected":"" }>15</option>
												<option value="16"
													${inter.inter_time eq '16'?"selected":"" }>16</option>
												<option value="17"
													${inter.inter_time eq '17'?"selected":"" }>17</option>

										</select> 시  </td>
										<td><select name="inter_status" id="inter_status" class="interStatus">
												<option value="돌보미 배정중"
													${adminInter.inter_status eq '돌보미 배정중'?"selected":""}>돌보미 배정중</option>
												<option value="돌보미 배정완료"
													${adminInter.inter_status eq '면접예정'?"selected":""}>돌보미 배정완료</option>
												<option value="면접완료"
													${adminInter.inter_status eq '면접완료'?"selected":""}>면접완료</option>
												<option value="면접취소"
													${adminInter.inter_status eq '면접취소'?"selected":""}>면접취소</option>
										</select></td> 
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
                
                <!-- ===============================================================================================================================-->
                <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	수정 내역
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                          
                                <table class="table table-bordered">
                                   	<thead>
                                        <tr>
                                            <th>일자</th><th>시간</th><th>상태</th><th>작성자</th><th>수정일자</th>    
                                        </tr>
                                   </thead>
                                   <tbody>
                                   		<c:forEach items="${requestScope.list }" var="uplist">
                                   			<tr><td>${uplist.inter_date }</td><td>${uplist.inter_time }</td>
                                   			<td>${uplist.inter_status }</td><td>${uplist.editer }</td><td>${uplist.lastmodified }</td></tr>
                                   		</c:forEach>
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
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->

</body>
</html>