<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibomProject</title>
<meta name="viewport"
	content="user-scalable=no, width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />

<meta name="format-detection" content="telephone=no" />
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link rel="icon" href="/ibom/resources/images/favicon_83.png"
	sizes="32x32" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="96x96" />
<link rel="icon" href="/ibom/resources/images/favicon_300.png"
	sizes="192x192" />
<link rel="apple-touch-icon-precomposed"
	href="/ibom/resources/images/favicon_300.png" />
<meta name="msapplication-TileImage"
	content="/ibom/resources/images/favicon_300.png" />

<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/css/ActLog.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize2.css" />
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>

<!-- JS -->
<script>
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
</script>
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>
<script type="text/javascript">

function fromDataCheck(event){
	if(confirm("제출 하시면 수정 하실수 없습니다. 제출 하시겠습니까?")){
		return true;
	}else{
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	event.stopPropagation();
	event.preventDefault();
}
function back(event){

	event.stopPropagation();
	event.preventDefault();
	history.back();
	return false;
}
</script>
</head>
<body>
<c:import url="../iusersHeader.jsp" />
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">종일제 활동일지 페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    
	<form action="${pageContext.request.contextPath}/dolbomi/upReturnAlldayAct.do" onsubmit="return fromDataCheck(event)" method="post" >		
	<ul style=" display:inline-block; postion:relative; width:100%;">
		<li style="float:left; width:49%; margin-left:5px; color:rgb(243, 114, 51);"><h5>종일제 활동일지</h5></li>
	</ul>				
	<div class="jt_board_list_wrap">
	<input type="hidden" name="service1_no" value="${ap1.service1_no}">
	<input type="hidden" name="service2_no" value="${ap2.service2_no}">
	<input type="hidden" name="dol_id" value="${loginDolbomi.dol_id}">
	<input type="hidden" name="family_code" value="${uFm.family_code}">
	<input type="hidden" name="allday_no" value="${allday.allday_no}">
	<input type="hidden" name="process_ctgry" value="대기">
     <table class="jt_board_list">
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
			<td>
				${uFm.family_name}
			</td>
	 </tr>
	 <tr>
		<th>장소</th>
		<td>
		<c:if test="${ap1.dolbom_place eq '이용자가정' }">
			${user.user_address }
		</c:if>
		<c:if test="${ap1.dolbom_place eq '돌보미가정' }">
			${loginDolbomi.dol_address }
		</c:if>
		</td>
		<th>이용자 요구사항</th>
		<td>
		<c:if test="${ap1.req_dolbomi ne 'null'}">
		${ap1.req_dolbomi }
		</c:if>
		없음
		</td>
	</tr>
    </tbody>
        </table><!-- .jt_board_list -->
      <!--  <input type="submit"value="전송" class="btn btn-warning" style="float:right; margin-top:10px;" > -->
        
    </div>
    
   		<div style="width:100%; height:100px; position:relative;"></div>
          <!--  list 처리 -->
          <ul style=" display:inline-block; postion:relative; width:100%;">
			<li style="float:left; width:49%; margin-left:5px; color:rgb(243, 114, 51);"><h5>투약의뢰</h5></li>
		 </ul>
          <div class="jt_board_list_wrap">
		<table class="jt_board_list">
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
										<input type="text" name="dosage_time"style="width:25%;" value="${i}" readonly>시
										</td>
									</c:forEach>
								</tr>
								<tr>
									<th >용량</th>
									<c:forEach var="i" items="${dosage }">
										<td class="nopadding">
										<input type="text" name="dosage"style="width:25%;" value="${i}" readonly>
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
									<td colspan="4">${allday.etc}</td>
								</tr> 
                          </tbody>
        </table>
          		</div>
          		<div style="width:100%; height:100px; position:relative;"></div>
          <ul style=" display:inline-block; postion:relative; width:100%;">
			<li style="float:left; width:49%; margin-left:5px; color:rgb(243, 114, 51);"><h5>영아상태</h5></li>
		 </ul>
          		<div class="jt_board_list_wrap">
		<table class="jt_board_list">
            <tbody>
				<tr>
                    <th >체온측정시간</th>
					<c:forTokens  var="i" items="${allday.bodytemp_time }" delims=",">
							<td class="nopadding">
								<input type="text" name="bodytemp_time"style="width:25%;" value="${i}" readonly>시
						   </td>
							</c:forTokens>
					</tr>
					<tr>
					<th >체온 <font color="orange">*</font></th>
					<c:forTokens  var="i" items="${allday.bodytemp}" delims=",">
						<td class="nopadding">
							<input type="text" name="bodytemp" value="${i}" style="width:15%;" readonly>℃
						</td>
					</c:forTokens>
					</tr>
					<tr>
						<th>건강및심리상태 <font color="orange">*</font></th>
						<td colspan="5">${allday.healhandpsy}</td>
					</tr>
           </tbody>
        </table>
          		</div>
          		<div style="width:100%; height:100px; position:relative;"></div>
          		<div class="jt_board_list_wrap">
          		<table class="jt_board_list">
            <tbody>
                 <tr>
				  <th scope="col" class="type">배변내용 <font color="orange">*</font></th>
				  	<td class="type">${allday.poop_cnt }</td>
				    	<th scope="col" class="type">수유내용 <font color="orange">*</font></th>
				   	<td class="type">${allday.rice_cnt }</td>
				   </tr>
				   <tr>
				     <th scope="col" class="type">수면내용 <font color="orange">*</font></th>
		        	<td class="type">${allday.sleep_cnt }</td>
			    	<th scope="col" class="type">활동내용 <font color="orange">*</font></th>
				   	<td class="type">${allday.ac_cnt }</td>
			    </tr>
				      <tr>
				        <tr>
				         <th scope="col" class="type">관찰내용 </th>
				          	<td class="type">${allday.observe_cnt }</td>
				            <th scope="col" class="type">전달사항 </th>
				            <td class="type">${allday.pass_cnt}</td>
				       </tr>
            </tbody>
        </table>
        </div>
        		<div style="width:100%; height:100px; position:relative;"></div>
          <ul style=" display:inline-block; postion:relative; width:100%;">
			<li style="float:left; width:49%; margin-left:5px; color:rgb(243, 114, 51);"><h5>실내환경</h5></li>
		 </ul>
          		<div class="jt_board_list_wrap">
		<table class="jt_board_list">
            <tbody>
			                 <tr>
			                    <th scope="col" class="type">실내환기</th>
			                    <td class="type" colspan="4">${allday.ventiration}</td>
			                </tr>
			                <tr>
			                    <th>시간</th>
			                    <c:forTokens  var="i" items="${allday.ven_time}" delims=",">
			                    <td><input type="text" name="ven_time" value="${i}" style="width:25%;" readonly>시</td>
			                    </c:forTokens>
			                </tr>
							<tr>
							  <th>온도</th>
							  <c:forTokens  var="i" items="${allday.ven_temp}" delims=",">
			                  <td><input type="text" name="ven_temp" value="${i}" style="width:20%;" readonly>℃</td>
			                  </c:forTokens>
			                </tr>
			                <tr>
							  <th>습도</th>
							  <c:if test="${not empty allday.ven_humidity}">
							  <c:forTokens  var="i" items="${allday.ven_humidity}" delims=",">
			                  <td><input type="text" name="ven_humidity" value="${i}" style="width:20%;" readonly>℃</td>
			                	</c:forTokens>
			                 </c:if><c:if test="${empty allday.ven_humidity}">
							  <td colspan="3"><input type="hidden" name="ven_humidity" value="0" style="width:20%;" readonly></td>
			                 </c:if>
			                </tr> 
                          </tbody>
        </table>
        </div>
      	<div class="list">	
		 <button onclick="back(event);" class="btn waves-effect orange darken-3"style="float:left;  margin-top:10px;">목록
         <i class="material-icons left">list</i>
         </button>
       </div>
		 </form>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>