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
	$(function() {
		// Get the modal
		var modal = document.getElementById('myModal');
		var modal2 = document.getElementById('myModal2');
		// Get the button that opens the modal
		var btn = document.getElementById("successRefund");
		var btn2 = document.getElementById("cancelRefund");
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("close")[0];
		var span2 = document.getElementsByClassName("close2")[0];
		// When the user clicks on the button, open the modal 
		btn.onclick = function() {
			modal.style.display = "block";
		}
		btn2.onclick = function() {
			modal2.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
		span2.onclick = function() {
			modal2.style.display = "none";
		}

		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
		window.onclick = function(event) {
			if (event.target == modal) {
				modal2.style.display = "none";
			}
		}
	});
	function LogSucCheck() {
		if (confirm("일지를 승인 하시겠습니까?")) {

			return true;
		} else {
			return false;
		}
	}
	function LogCancelCheck() {
		if (confirm("일지를 반려 하시겠습니까?")) {

			return true;
		} else {
			return false;
		}
	}
	function back(event) {
		javascript: history.back();
		event.stopPropagation();
		event.preventDefault();
	}
	
	// Initialize tooltip component
	$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	})

	// Initialize popover component
	$(function () {
	  $('[data-toggle="popover"]').popover()
	})
</script>
<style>
.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 35%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        /*일지반려 CSS */
        .modal2 {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content2 {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            box-shadow: 0 5px 15px rgba(0,0,0,.5);
            border-radius:5px;
            width: 35%; /* Could be more or less, depending on screen size */                          
        }
       
         .close2 {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close2:hover,
        .close2:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
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
                <h1 class="page-header">종일제 활동일지</h1>
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
      <div id="myModal" class="modal">
      <!-- Modal content -->
      <div class="modal-content">
        <span class="close">&times;</span><br/><br/><br/>
        <h3 style=" color:rgb(243, 114, 51); float:left; width:49%; margin-left:5px; margin-top:5px;">일지승인</h3>
        <form action="${pageContext.request.contextPath}/admin/actAlldayAccept.do" onsubmit="return LogSucCheck();" method="post">
        	<input type="hidden" name="allday_no" value="${allday.allday_no}">
        	<input type="hidden" name="dol_id" value="${dol.dol_id}">
        	<table class="table table-hover">
        	<tbody>
        		<tr>
        			<th>돌보미명</th>
        			<td>${dol.dol_name }</td>
        		</tr>
        		<tr>
        			<th>활동날짜</th>
        			<td>${ap2.apply_date }</td>
        		</tr>
        		<tr>
        			<th>일지작성날짜</th>
        			<td>${allday.create_date}</td>
        		</tr>
        		<tr>
        			<th>활동시간</th>
        			<td>${ap2.using_time }시간</td>
        		</tr>
        	</tbody>
        	</table>
        	<div style="width:100%; height:50px; position:relative;"></div>
        	<table class="table table-hover">
        	<fmt:formatNumber value="${ap2.using_time}" type="number" var="time" />
        	<fmt:formatNumber value="${sal.dol_time_pay * time}" type="number" var="sal" />
        	<tbody>
        		<tr>
        			<th>최종승인금액</th>
        			<td>${sal}원<input type="hidden" name="sal"value="${sal }"></td>
        		</tr>
        	</tbody>
        	</table>
          <input type="submit" value="승인" class="btn btn-warning" style="float:right;">
         </form>
        <br><br><br>
      </div>
 	</div>
 	<!-- 일지반려 처리용  -->
 	<!-- The modal -->
 	<div class="modal" id="largeShoes" tabindex="-1" role="dialog" aria-labelledby="modalLabelLarge" aria-hidden="true">
<div class="modal-dialog modal-sm">
<div class="modal-content">

<div class="modal-header">
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
<h4 class="modal-title" id="modalLabelLarge">일지반려</h4>
 </div>

<div class="modal-body">
<h4 style="float:left; width:49%;margin-top:5px;">반려사유</h4>
        <form action="${pageContext.request.contextPath}/admin/returnAlldayAct.do" onsubmit="return LogCancelCheck();"method="post">
		<input type="hidden" name="allday_no" value="${allday.allday_no}">
        	<table class="table table-hover">
        	<tbody>
        		<tr>
        		<td style="padding:0px;"><textarea name="cond_content"rows="5"style=" width:100%; border:1px solid gray; border-radius:5px;"></textarea></td>
        		</tr>	
        	</tbody>
        	</table>
			<div style="width:100%; height:20px; position:relative;"></div>
          <input type="submit" value="반려" class="btn btn-warning" style="float:right;">
         </form>
</div>

</div>
</div>
</div>

</div>

 	
 	
<%--  	<div id="myModal2" class="modal2">
      <!-- Modal content -->
      <div class="modal-content2">
        <span class="close2">&times;</span><br/><br/><br/>
        <h3 style=" color:rgb(243, 114, 51); float:left; width:100%;margin-bottom:0px; margin-top:5px;">일지반려</h3><br><br>
       <hr style="margin-top:5px; background:gray;">
       <h4 style="float:left; width:49%;margin-top:5px;">반려사유</h4>
        <form action="${pageContext.request.contextPath}/admin/returnAlldayAct.do" onsubmit="return LogCancelCheck();"method="post">
		<input type="hidden" name="allday_no" value="${allday.allday_no}">
        	<table class="table table-hover">
        	<tbody>
        		<tr>
        		<td style="padding:0px;"><textarea name="cond_content"rows="5"style=" width:100%; border:1px solid gray; border-radius:5px;"></textarea></td>
        		</tr>	
        	</tbody>
        	</table>
        	<div style="width:100%; height:20px; position:relative;"></div>
          <input type="submit" value="반려" class="btn btn-primary" style="float:right;">
         </form>
        <br><br><br>
      </div>
 	</div> --%>
 	
                        <div class="panel-heading">
                          	종일제 활동일지
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <tbody>
                                   <tr>
									<th>활동시간</th>
									<td>${ap2.start_time} ~ ${ap2.end_time}</td>
									<th>인계한 보호자</th>
									<td>${ap1.transferor}</td>
								  </tr>
								  <tr>
									<th>이용자연락처</th>
									<td>${user.user_phone }</td>
									<th>아동명</th>
									<td>${uFm.family_name}</td>
								 </tr>
								 <tr>
								<th>장소</th>
								<td colspan="3">
								<c:if test="${ap1.dolbom_place eq '이용자가정' }">
									${user.user_address }
								</c:if>
								<c:if test="${ap1.dolbom_place eq '돌보미가정' }">
									${loginDolbomi.dol_address }
								</c:if>
								</td>
								</tr>
								<tr>
								<th>이용자 요구사항</th>
								<td colspan="3">
								<c:if test="${ap1.req_dolbomi ne 'null'}">
								${ap1.req_dolbomi }
								</c:if>
								없음
								</td>
							</tr>
                          </tbody>
                        </table>
                        <br/><br/>
                       	<h4>투약의뢰</h4>
                        <table class="table table-hover">
                        	<thead>
				                <tr>
				                    <th scope="col" class="type">의뢰</th>
				                    <th scope="col" class="type">1회</th>
				                    <th scope="col" class="type">2회</th>
				                    <th scope="col" class="type">3회</th>
				                    <th scope="col" class="type">4회</th>
				                </tr>
				            </thead>
                          <tbody>
                          		<tr>
                                	<th >시간</th>
									<c:forEach var="i" items="${dosageTime }">
										<td class="nopadding">
										${i}
										</td>
									</c:forEach>
								</tr>
								<tr>
									<th >용량</th>
									<c:forEach var="i" items="${dosage }">
										<td class="nopadding">
										${i}
										</td>
									</c:forEach>
								</tr>
								<tr>
									<th>증상</th>
									<td colspan="4">${allday.symotom}</td>
								</tr>
								<tr>
									<th>복용방법</th>
									<td colspan="4">${allday.dos_method}</td>
								</tr>
								<tr>
									<th>보관상태</th>
									<td colspan="4">${allday.stg_condition }</td>
								</tr>
								<tr>
									<th>특이사항</th>
									<td colspan="4">${etc }</td>
								</tr> 
                          </tbody>
                        </table><br/><br/>
                        <h4>영아상태</h4>
                        <table class="table table-hover">
                          <tbody>
                          		<tr>
                                	<th >체온측정시간</th>
                                	<c:forTokens  var="i" items="${allday.bodytemp_time }" delims=",">
										<td class="nopadding">
										${i}시
										</td>
									</c:forTokens>
								</tr>
								<tr>
									<th >체온</th>
									<c:forTokens  var="i" items="${allday.bodytemp }" delims=",">
										<td class="nopadding">
										${i}℃
										</td>
									</c:forTokens>
								</tr>
								<tr>
									<th>건강및심리상태</th>
									<td colspan="5">${allday.symotom}</td>
								</tr>
								
                          </tbody>
                        </table>
                        <br/><br/>
                        <h4>활동상세내용</h4>
                        <table class="table table-hover">
                          <tbody>
                          		<tr>
				                    <th scope="col" class="type">배변내용</th>
				                   	<td class="type"><p>${allday.poop_cnt }</p></td>
				                   	<th scope="col" class="type">수유내용</th>
				                   	<td class="type"><p>${allday.rice_cnt }</p></td>
				                </tr>
				                <tr>
				                    <th scope="col" class="type">수면내용</th>
				                   	<td class="type"><p>${allday.sleep_cnt }</p></td>
				                   	<th scope="col" class="type">활동내용</th>
				                   	<td class="type"><p>${allday.ac_cnt }</p></td>
				                </tr>
				                 <tr>
				                   <tr>
				                    <th scope="col" class="type">관찰내용</th>
				                   	<td class="type"><p>${allday.observe_cnt }</p></td>
				                   	<th scope="col" class="type">전달사항</th>
				                   	<td class="type"><p>${allday.pass_cnt}</p></td>
				                </tr>
                          </tbody>
                        </table><br/><br/>
                        <h4>실내환경</h4>
                        <table class="table table-hover">
                          <tbody>
			                 <tr>
			                    <th scope="col" class="type">실내환기</th>
			                    <td class="type" colspan="5"><p>${allday.ventiration}</p></td>
			                </tr>
			                <tr>
			                    <th>시간</th>
			                    <c:forTokens  var="i" items="${allday.ven_time}" delims=",">
			                    <td>${i}</td>
			                    </c:forTokens>
			                </tr>
							<tr>
							  <th>온도</th>
							  <c:forTokens  var="i" items="${allday.ven_temp}" delims=",">
			                  <td>${i }</td>
			                  </c:forTokens>
			                </tr>
			                <tr>
							  <th>습도</th>
							  <c:forTokens  var="i" items="${allday.ven_humidity}" delims=",">
			                  <td>${i }</td>
			                	</c:forTokens>
			                </tr> 
                          </tbody>
                        </table>
                        <br/><br/><br/>
                        <c:if test="${ allday.process_ctgry eq '대기'}">
                        <button style="float:right; margin-right:15px;"id="successRefund" class="btn btn-warning">일지승인</button>
                        <!-- <button style="float:right; margin-right:15px;"id="cancelRefund" class="btn btn-primary">일지반려</button> -->
                        <button type="button" class="btn btn-danger btn-lg" data-toggle="modal" data-target="#largeShoes">
일지반려
</button>
                        </c:if>
                        <button style="float:left; margin-right:15px;"onclick="back();" class="btn btn-primary">목록</button>        
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