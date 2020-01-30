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
table th, thead tr th, tbody tr td { text-align : center; vertical-align: middle;}
</style>
<script type="text/javascript" src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
function checkradio(){
	 	if($("#fam_choi3").is(':checked')){//체크 되었으니  radio활성화
			$("input[type='radio'][name='fam_typ_choi_3']").attr('disabled',false).attr('required', true);
		}else{//radio 비활성화
			$("input[type='radio'][name='fam_typ_choi_3']").attr('disabled',true).prop('checked',false);
			$("input[type='hidden'][name='fam_typ_choi3']").val('N');
		}
}
$(function(){
	//전역변수
	var adsa_no = '${adsa.adsa_no}';
	//목록 버튼 클릭 시 
	$("#movelist").on('click',function(){
		<c:url var="adsaList" value="/admin/alldaySerList.do">
    		<c:param name="currentPage" value="${requestScope.paging.currentPage}"/>
    	</c:url>
		location.href="${adsaList}";
		return false;
	})//종료
	
	//접수 버튼 클릭 시 
	$("#receipt").on('click',function(){
		
		if(confirm("접수된 사항을 모두 확인 하셨습니까? ")){
			$.ajax({
				url:"${ pageContext.request.contextPath }/admin/allDayApReceipt.do",
				data:{adsa_no : adsa_no},
				type:"post",
				success:function(result){
					if(result == "ok"){
						alert("접수완료");		
						location.reload();
					}else{
						alert("접수실패");	
					}
				},
				error: function(request, status, errorData){
					console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
				}
				
				
			})//ajax종료
			
		}
		//접수 안하면
		return false;
	})//접수 끝
	
	//가정유형값 받아온거 뿌리기
	var one = '${requestScope.adsa.fam_typ_choi1}';
	var two = '${requestScope.adsa.fam_typ_choi2}';
	var three = '${requestScope.adsa.fam_typ_choi3}';
	var four = '${requestScope.adsa.fam_typ_choi4}';
	var five = '${requestScope.adsa.fam_typ_choi5}';
	var six = '${requestScope.adsa.fam_typ_choi6}';
	
	if(one == 'Y'){
		$("#fam_choi1").attr("checked", true);
	}
	if(two == 'Y'){
		$("#fam_choi2").attr("checked", true);
	}
	if(three != 'N'){
		if(three=="one"){
			$("#fam_choi3").attr("checked", true);
			$("#one").attr("checked", true);
		}else if(three=="two"){
			$("#fam_choi3").attr("checked", true);
			$("#two").attr("checked", true);
		}
		
	}
	if(four == 'Y'){
		$("#fam_choi4").attr("checked", true);
	}
	if(five == 'Y'){
		$("#fam_choi5").attr("checked", true);
	}
	if(six == 'Y'){
		$("#fam_choi6").attr("checked", true);
	}
	//값뿌리기 끝
	
	
	//수정 서브밋
	
	$("#update").on('click',function(){
		<c:if test="${ empty adsa.receipt_date }">
			alert("신청건 접수 후 수정이 가능합니다.");
		</c:if>
		<c:if test="${ !empty adsa.receipt_date }">
		//아동명 text
		var baby_name = $("#baby_name").val();		
		
		if(baby_name.length < 1 || baby_name == ""){
			alert("아동명(태아명)을 입력해주세요.");			
			$("#baby_name").focus();
			 return false;
		}else if(baby_name.length > 10){
			alert("아동명(태아명)은 최대 10자리까지 입력가능합니다.");			
			$("#baby_name").focus();
			  return false;
		}
	
		//생일 date
		var baby_birth = $("input[name='baby_birth']").val();		
		if(baby_birth == null || baby_birth == ""){
			alert("아동의 생년월일을 입력해주세요.");			
			$("input[name='baby_birth']").focus();
			return false;
		}
		//연락처 tel
		var user_phone = $("input[name='user_phone']").val();
		if(user_phone.length < 1){
			alert("휴대전화번호를 입력해주세요.");			
			user_phone.focus();
			return false;
		}else if(user_phone.length < 11){
			alert("휴대전화번호 자릿수를 확인해주세요.");			
			$("input[name='user_phone']").focus();
			return false;
		}
		//대기번호 number
		var waiting_no = $("input[name='waiting_no']").val();
		if(waiting_no < 0){
			alert("대기 번호를 확인해주세요.");
			$("input[name='waiting_no']").focus();
			return false;
		}
		
		
		//가정 유형 히든에 값 넣기	
		if($('input[type="checkbox"][name="fam_choi1"]').is(":checked")){
			$("input[name='fam_typ_choi1']").val('Y');
		}else{
			$("input[name='fam_typ_choi1']").val('N');
		}	
		if($('input[type="checkbox"][name="fam_choi2"]').is(":checked")){
			$("input[name='fam_typ_choi2']").val('Y');
		}else{
			$("input[name='fam_typ_choi2']").val('N');
		}
		
		//3 값 셋팅
		if($("#fam_choi3").is(":checked")){//체크 되었으면 radio체크 하고 체크된 radio값으로 전송
			if($("#one").is(":checked")){
				$("input[name='fam_typ_choi3']").val($("#one").val());
			}else if($("#two").is(":checked")){
				$("input[name='fam_typ_choi3']").val($("#two").val());
			}else{
				alert("가정 유형에 선택이 누락 되었습니다.");
				return false;
			}
			
		}else{//체크 안되어 있으면 값은 N으로 
			$("input[name='fam_typ_choi3']").val('N');
		}
		//
		
		if($('input[type="checkbox"][name="fam_choi4"]').is(":checked")){
			$("input[name='fam_typ_choi4']").val('Y');
		}else{
			$("input[name='fam_typ_choi4']").val('N');
		}
		if($('input[type="checkbox"][name="fam_choi5"]').is(":checked")){
			$("input[name='fam_typ_choi5']").val('Y');
		}else{
			$("input[name='fam_typ_choi5']").val('N');
		}
		if($('input[type="checkbox"][name="fam_choi6"]').is(":checked")){
			$("input[name='fam_typ_choi6']").val('Y');
		}else{
			$("input[name='fam_typ_choi6']").val('N');
		}		
		
		//변수 선언
			//아동명  baby_name
			//신청구분  
			var baby_type = $(':radio[name="baby_type"]:checked').val();
			//출산예정일 baby_birth
			//연락처 user_phone
			//희망월
			var hope = $("#start_hope_month").val();
			//대기번호 waiting_no
			//신청서 상태
			var status = $("#apply_status").val(); 
			//1
			var a = $("input[name='fam_typ_choi1']").val();
			//2
			var b = $("input[name='fam_typ_choi2']").val();
			//3
			var c = $("input[name='fam_typ_choi3']").val();
			//4
			var d = $("input[name='fam_typ_choi4']").val();
			//5
			var e = $("input[name='fam_typ_choi5']").val();
			//6
			var f = $("input[name='fam_typ_choi6']").val();
		//ajax으로 객체 보내기
		$.ajax({
				url:"${pageContext.request.contextPath}/admin/allDayApUp.do",
				data:{adsa_no : adsa_no, baby_name : baby_name, baby_type : baby_type, baby_birth : baby_birth, user_phone : user_phone, start_hope_month : hope, apply_status : status,
					waiting_no : waiting_no, fam_typ_choi1 : a, fam_typ_choi2 : b, fam_typ_choi3 : c, fam_typ_choi4 : d, fam_typ_choi5 : e, fam_typ_choi6 : f},
				type:"post",
				success:function(result){
					if(result == "ok"){
						alert("수정완료");	
					}else{
						alert("수정실패");	
					}
				},
				error: function(request, status, errorData){
					console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
				}
				
				
			})//ajax종료
		
		</c:if>//접수가 된 건

		
	})//변경 종료
	
	countScore();
	//체크된 체크박스 계산해서 점수화하기
	$(".filled-in").change(function(){
		countScore();
	});
	
	
})//document ready
////체크된 체크박스 계산해서 점수화하기
function countScore(){	
		var count = $(".filled-in:checked").length;
		var score = Number(count) * 5 ;
		document.getElementById("score").innerHTML = score;	
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
                <h1 class="page-header">종일제 변경 신청서 상세보기</h1>
                
                
                
            </div>
            
            <!-- /.col-lg-12 --> 
        </div>
        <button style="float:right; margin-right:15px;" id="update" class="btn btn-warning">수  정</button>
        <button style="float:right; margin-right:15px;" id="movelist" class="btn btn-outline btn-warning">목  록</button>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 여기서부터 -->
        <div class="panel panel-warning">
                        <div class="panel-heading">
                           <h4>${requestScope.adsa.adsa_no }건 상세보기</h4>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                            
                                <table class="table table-bordered">
                                	<thead>
                                		<tr><th width="20%">아이디(이름)-관계</th><th width="20%">아동명</th><th width="20%">신청구분</th><th width="20%">생년월일</th><th width="20%">신청일</th></tr>
                                	</thead>
                                	<tbody>
                                		<tr><td>${adsa.user_id }(${adsa.user_name })-${adsa.baby_rela}</td>
		                                	<td><input class="form-control" type="text" name="baby_name" value="${adsa.baby_name}" id="baby_name" ></td>
		                                	<td>
		                                		<label class="radio-inline">
		                                		<input type="radio" name="baby_type" value="영아" ${adsa.baby_type eq '영아'?"checked":""}><span>영아</span></label>
		                                		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		                                		<label class="radio-inline"><input type="radio" name="baby_type" value="출산 전" ${adsa.baby_type eq '출산 전'?"checked":""}><span>출산 전</span></label>
		                                	</td>
		                                	<td><input class="form-control" type="date" name="baby_birth" value="${adsa.baby_birth }"></td>
		                                	<td>${adsa.req_date }</td></tr>
                                	</tbody>
                                	<thead>
                                		<tr><th>연락처</th><th>돌봄 희망 월</th><th>대기번호</th><th>신청서 상태</th><th>접수일</th></tr>
                                	</thead>
                                	<tbody>
                                		<tr>
                                		<td><input type="tel" value="${adsa.user_phone }" name="user_phone" class="form-control"></td>
                                		<td>
                                			<select id="start_hope_month" name="start_hope_month" class="form-control" > 
						                       	<option value="202002" ${adsa.start_hope_month eq '2020년02월'?"selected":""}>202002</option>
						                       	<option value="202003" ${adsa.start_hope_month eq '2020년03월'?"selected":""}>202003</option>
						                       	<option value="202004" ${adsa.start_hope_month eq '2020년04월'?"selected":""}>202004</option>
						               			<option value="202005" ${adsa.start_hope_month eq '2020년05월'?"selected":""}>202005</option>
						               			<option value="202006" ${adsa.start_hope_month eq '2020년06월'?"selected":""}>202006</option>
						               			<option value="202007" ${adsa.start_hope_month eq '2020년07월'?"selected":""}>202007</option>
						               			<option value="202008" ${adsa.start_hope_month eq '2020년08월'?"selected":""}>202008</option>
						               			<option value="202009" ${adsa.start_hope_month eq '2020년09월'?"selected":""}>202009</option>
						               			<option value="202010" ${adsa.start_hope_month eq '2020년10월'?"selected":""}>202010</option>
						               			<option value="202011" ${adsa.start_hope_month eq '2020년11월'?"selected":""}>202011</option>
						               			<option value="202012" ${adsa.start_hope_month eq '2020년12월'?"selected":""}>202012</option>
						               			<option value="202101" ${adsa.start_hope_month eq '2021년01월'?"selected":""}>202101</option> 
					                    	</select>
                                		</td>
                                		<td><input class="form-control" type="number" name="waiting_no" value="${adsa.waiting_no}"></td>
                                		<td>
                                		<select id="apply_status" name="apply_status" class="form-control" > 
						                       	<option value="미접수" ${adsa.apply_status eq '미접수'?"selected":""}>미접수</option>
						                       	<option value="대기중" ${adsa.apply_status eq '대기중'?"selected":""}>대기 중</option>
						                       	<option value="변경취소" ${adsa.apply_status eq '변경취소'?"selected":""}>변경취소</option>
					                    	</select>
					                    </td>
					                    <td><c:if test="${ empty adsa.receipt_date }">
					                    <button style="float:center; margin-right:15px;" id="receipt" class="btn btn-warning">접  수</button>
					                    </c:if>
					                    <c:if test="${ !empty adsa.receipt_date }">${adsa.receipt_date }</c:if>
					                    </td>
                                	</tbody>
                                </table>
                                       
                                
                               <div class="panel panel-yellow" style="width:50%;float:left;">
			                        <div class="panel-heading">
			                            	가정 유형 선택 정보
			                        </div>
			                        <!-- /.panel-heading -->
			                        <div class="panel-body"> 
			                                <label>
										        <input type="checkbox" class="filled-in" name="fam_choi1" id="fam_choi1"/>
										        <span>기초생활보장법상 수급자, 차상위계층 자녀</span>
										     </label><br>
										     <label>
										        <input type="checkbox" class="filled-in" name="fam_choi2" id="fam_choi2"/>
										        <span>한부모가족지원법상 지원대상의 자녀</span>
										     </label><br>
										     <label>
										        <input type="checkbox" class="filled-in" name="fam_choi3" id="fam_choi3" onclick="checkradio();"/>
										        <span>장애부모 가정</span>
										        
										     </label><br>
										     	<label style="padding-left:25px;">
											        <input class="with-gap" name="fam_typ_choi_3" type="radio" value="one" id="one"/>
											        <span>1급·2급 5점, 지적장애·자폐성장애 3급 해당자로서 다른 장애와 중복된 경우</span>
											      </label><br>
											      <label style="padding-left:25px;">
											        <input class="with-gap" name="fam_typ_choi_3" type="radio" value="two" id="two"/>
											        <span>이외 장애</span>
											      </label><br>
										     <label>
										        <input type="checkbox" class="filled-in" name="fam_choi4" id="fam_choi4"/>
										        <span>다문화가족지원법상 다문화가족 자녀</span>
										     </label><br>
										     <label>
										        <input type="checkbox" class="filled-in" name="fam_choi5" id="fam_choi5"/>
										        <span>맞벌이 가정(취업한부모 포함) 자녀</span>
										     </label><br>
										     <label>
										        <input type="checkbox" class="filled-in" name="fam_choi6" id="fam_choi6"/>
										        <span>다자녀 가정(만 12세 이하 3명, 만 36개월 이하 2명)</span>
										     </label><br>
										     
								           
								           <input type="hidden" name="fam_typ_choi1">
								           <input type="hidden" name="fam_typ_choi2">
								           <input type="hidden" name="fam_typ_choi3">
								           <input type="hidden" name="fam_typ_choi4">
								           <input type="hidden" name="fam_typ_choi5">
								           <input type="hidden" name="fam_typ_choi6">
			                                
			                              
			                            
			                        </div>
			                        <!-- /.panel-body -->
			                    </div>
			                    <div class="panel panel-green" style="width:50%; align:right;float:right;">
			                        <div class="panel-heading">
			                            	점 수 
			                        </div>
			                        <!-- /.panel-heading -->
			                        <div class="panel-body"> 
			                               <div class="alert-success"class="alert">총 <span id="score">30</span>점</div>
			                            
			                        </div>
			                        <!-- /.panel-body -->
			                    </div>
                              
                                
                                 
        						<textarea rows="8" cols="160" width="100%"></textarea>
                                
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div> 
                    <!-- /.panel-head -->
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