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
	
	$("#clo").click(function(){
		window.close();
	})
	
	$("#ass").click(function(){
		
		var rowData = new Array(); 
		var tdArr = new Array();
		var checkbox = $("input[name=likeCheck]:checked");
		var service2_no = '${paging.stitle }';		
		var checkLen = checkbox.length;
		if(checkLen > 0){
			// 체크된 체크박스 값을 가져온다
			checkbox.each(function(i){
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				
				//console.log("checkbox 값 : " + tr.text());
				//체크된 row의 모든 값을 배열에 담는다.
				rowData.push(tr.text());
				
				// td.eq(0)은 체크박스 이므로 td.eq(1)의 값부터 가져온다.
				var dol_id = td.eq(1).text();
				var dol_name = td.eq(2).text();
				
				//가져온 값을 배열에 담는다.
				tdArr.push(dol_id);
				tdArr.push(dol_name);
				
				//받아온 값 확인
				if(confirm(dol_id+"("+dol_name+")으로 배정하시겠습니까?")){
					window.opener.document.getElementById("dolid").innerHTML = dol_id;
					window.opener.document.getElementById("dolname").innerHTML = dol_name;
					window.opener.document.getElementById("status").innerHTML = '돌보미 배정완료';
					 
					 $.ajax({
						 url:"${ pageContext.request.contextPath }/admin/assignmentUpdate.do",
						 data:{service2_no:service2_no, dolbomi_id:dol_id},
						 type:"post",
						 success:function(result){
								if(result == "ok"){
									alert("배정 완료");	
									window.self.close();
								}else{
									alert("배정 실패");	
									return false;
								}
							},
						 error: function(request, status, errorData){
								console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
							}
					 })//ajax종료		        
				}//if종료
			});//체크된 값 가져온것
		}else{
			alert("배정할 돌보미를 선택해주세요");
		}		
	}); //배정버튼 눌렀을 때
	
	//내거
	 //검색 부분
	showDiv();
	
	$("select[name=searchselect]").on("change", function() {
		showDiv();
	});
	
	//검색 서브밋
	 $("#submitbtn1").click(function(){
	        $("#searchform1").submit();
	    });
	  $("#submitbtn2").click(function(){
	        $("#searchform2").submit();
	    });
	  $("#submitbtn3").click(function(){
	        $("#searchform3").submit();
	    });
	  $("#submitbtn4").click(function(){
	        $("#searchform4").submit();
	    });
	  //input type "radio"처럼
	  $("input[type='checkbox'][name='likeCheck']").click(function(){
		  if($(this).prop("checked")){
			  $('input[type="checkbox"][name="likeCheck"]').prop('checked',false);
			  $(this).prop('checked',true)
		  }
	  })
	  
});
function showDiv() {
	
	
	if ($("#searchselect option:eq(0)").is(":selected")) {		
		$("#id").css("display", "block");
		$("#name").css("display", "none");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(1)").is(":selected")) {		
		$("#id").css("display", "none");
		$("#name").css("display", "block");
		$("#center").css("display", "none");
	}
	if ($("#searchselect option:eq(2)").is(":selected")) {		
		$("#id").css("display", "none");
		$("#name").css("display", "none");
		$("#center").css("display", "block");
	}
}    
</script>
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />

    <!-- Bootstrap Core CSS -->
    <link href="/ibom/resources/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<!-- Custom Fonts -->
     <link href="/ibom/resources/admin/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div class="popHead">
			<h1 style="margin:0px">돌보미 배정</h1>
			<!-- <div class="btnClose"><button type="button" onclick="javascript:self.close();" class="btn_close"><span>닫기</span></button></div> -->
	</div>
	
	<div class="popTitle" style="padding:0 10px;">	
		<h4 style="margin-left:10px; font-weight:bold; color:#ca3e00"><i class="fa fa-gratipay" aria-hidden="true"></i>찜 한 돌보미
		<button style="float:right; margin-bottom:15px; margin-top:5px;" id="ass" class="cardPop_save">저  장</button></h4>
	<div class="jt_board_list_wrap">  
		<table class="jt_board_list3" id="cardlist">
            <caption></caption>
            <colgroup>
				<col width="10%" />
				<col width="35%" />
				<col width="30%" />
				<col width="25%" />
				
			</colgroup>
			<thead>
				<tr>
					<th class="choose">선택</th>
                    <th class="cardType">아이디</th>
                    <th class="cardName">이름</th>
                    <th class="cardNum">찜한일자</th>
				</tr>
			</thead>
            <tbody>
            <c:if test="${empty requestScope.list }">
            <tr><td colspan="4">찜 한 돌보미가 없습니다.</td></tr>
            </c:if>
            <c:forEach items="${requestScope.list }" var="likeList">
                <tr>
                	<td><input type='checkbox' name='likeCheck' id='likeCheck'/></td>
                	<td>${likeList.dol_id }</td>
                    <td>${likeList.dol_name }</td>
                   	<td>${likeList.lastmodified }</td>
                </tr>
             </c:forEach>
           </tbody>
        </table>
    </div>
    </div>
    
    <!-- 전체 돌보미 목록 띄울거 -->
    <div class="popTitle" style="padding:0 10px;">
	<br>
		<h4 style="margin-left:10px; font-weight:bold; color:#ca3e00"><i class="fa fa-users" aria-hidden="true"></i>전체 돌보미</h4>		
	<br>
	<!-- 검색창 -->
	<div class="input-group custom-search-form list-group-item-heading"
						style="display: inline-flex;">
<div>
								<select id="searchselect" name="searchselect"
									style="width: 100px; padding-left: 5px;"
									class="form-control form-control-sm"> 
									<option id="opt1"selected="selected">아이디</option>
									<option id="opt2">이름</option>
									<option id="opt3">서비스센터</option> 
								</select>
							</div>
							
							<div id="id">
								<form
									action="${ pageContext.request.contextPath }/admin/assignDolbomiSearch.do"
									method="get" id="searchform2">
									<input type="hidden" name="search" value="id">
									<input type="hidden" name="currentPage" value="1">
									<input type="hidden" name="stitle" value="${paging.stitle }">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 아이디을 입력하세요." style="width: 250px;">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn2">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
							<div id="name">
								<form
									action="${ pageContext.request.contextPath }/admin/assignDolbomiSearch.do"
									method="get" id="searchform3">
									<input type="hidden" name="search" value="name">
									<input type="hidden" name="currentPage" value="1">
									<input type="hidden" name="stitle" value="${paging.stitle }">
									<div class="input-group" style="margin-left: 5px;">
										<input type="text" name="keyword"
											class="form-control form-control-sm"
											placeholder="검색할 이름을 입력하세요." style="width: 250px;">
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn3">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>

							<div id="center">
								<form
									action="${ pageContext.request.contextPath }/admin/assignDolbomiSearch.do"
									method="get" id="searchform4">
									<input type="hidden" name="search" value="center">
									<input type="hidden" name="currentPage" value="1">
									<input type="hidden" name="stitle" value="${paging.stitle }">
									<div class="input-group" style="margin-left: 5px;">
										<select id="searchcenter" name="keyword" style="width: 200px; padding-left: 5px;" class="form-control form-control-sm"> 
											<option selected="selected">센터선택</option>
											<option value="SC0001">강남구건강가정지원센터</option>
											<option value="SC0079">성남시건강가정지원센터</option> 
										</select>
										<span class="input-group-btn">
											<button class="btn btn-default" type="button" id="submitbtn4">
												<i class="fa fa-search"></i>
											</button>
										</span>
									</div>
								</form>
							</div>
							</div>
        <!-- 검색창 종료 -->
	<div class="jt_board_list_wrap">  
		<table class="jt_board_list3" id="cardlist">
            <caption></caption>
            <colgroup>
				<col width="10%" />
				<col width="35%" />
				<col width="30%" />
				<col width="25%" />
				
			</colgroup>
			<thead>
				<tr>
					<th class="choose">선택</th>
                    <th class="cardType">아이디</th>
                    <th class="cardName">이름</th>
                    <th class="cardNum">연락처</th>
				</tr>
			</thead>
            <tbody>
            
            <c:forEach items="${requestScope.dolList }" var="dolList">
                <tr>
                	<td><input type='checkbox' name='likeCheck' id='likeCheck'/></td>
                	<td>${dolList.dol_id }</td>
                    <td>${dolList.dol_name }</td>
                   	<td>${dolList.dol_phone }</td>
                </tr>
             </c:forEach>
           </tbody>
        </table>
        <!-- 페이징 시작 -->
                              <div class="col-sm-6">
                     <div class="dataTables_paginate paging_simple_numbers"
                        id="dataTables-example_paginate">
                        <!-- 검색어 없을 때 시작-->
                        <c:if test="${ empty paging.search}">
                        <ul class="pagination">
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:url var="list1" value="/admin/assignDolbomi.do">
                              <c:param name="currentPage" value="1"/><c:param name="stitle" value="${paging.stitle }"/>
                           </c:url>
                           <a href="${list1}">&lt;&lt;</a>
                           </li>
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
                                 <a href="${list1}">&lt;</a>
                           </c:if> 
                           <c:if test="${(paging.beginPage-paging.pageSize) > 1}">
                                 <c:url var = "list2" value="/admin/assignDolbomi.do">
                                    <c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/><c:param name="stitle" value="${paging.stitle }"/>
                                 </c:url>
                                 <a href="${list2}">&lt;</a>
                           </c:if></li>
                           
                           
                           <c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
                                 <c:url var="list3" value="/admin/assignDolbomi.do">
                                    <c:param name="currentPage" value="${p }"/><c:param name="stitle" value="${paging.stitle }"/>
                                 </c:url>
                                 <c:if test="${p == paging.currentPage }">
                                    <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                    <a href="${list3}">${p}</a>
                                    </li>
                                 </c:if>
                                 <c:if test="${p != paging.currentPage}">
                                  <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
                                    <a href="${list3}">${p }</a></li>
                                 </c:if>
                           </c:forEach></li>
                           
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
                                 <c:url var="list4" value="/admin/assignDolbomi.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="stitle" value="${paging.stitle }"/>
                                 </c:url>
                                 <a href="${list4}">&gt;</a>
                           </c:if> 
                           <c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
                                 <c:url var="list5" value="/admin/assignDolbomi.do">
                                 <c:param name="currentPage" value="${paging.endPage + paging.pageSize}"/><c:param name="stitle" value="${paging.stitle }"/>
                                 </c:url>
                                 <a href="${list5}">&gt;</a>
                           </c:if></li>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:url var="list6" value="/admin/assignDolbomi.do">
                           <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="stitle" value="${paging.stitle }"/>
                           </c:url>
                           <a href="${list6}">&gt;&gt;</a>
                           </li>
                        </ul>
                        </c:if>
                        <!-- 검색어 없을 때 끝 -->
                        <c:if test="${ !empty paging.search}">
                        <!-- 검색어 날짜 아닐 때 시작-->
                        <c:set var="option" value="${paging.search eq 'id'?'id':paging.search eq 'name'?'name':'center' }"/>
                        <c:if test="${option eq 'id'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        <c:if test="${option eq 'name'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        <c:if test="${option eq 'center'}"><c:set var="keyword" value="${paging.keyword }"/></c:if>
                        
                        <ul class="pagination">
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                              <c:url var="sOther1" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="1"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                              <a href="${sOther1}">&lt;&lt;</a>
                           </li>
                           <li tabindex="0" class="paginate_button previous" id="dataTables-example_previous" aria-controls="dataTables-example">
                           <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
                                 <a href="${sOther1}">&lt;</a>
                              </c:if> 
                              <c:if test="${(paging.beginPage-paging.pageSize) > 1}">
                              <c:url var="sOther2" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${sOther2}">&lt;</a>
                              </c:if></li>
                           
                           <c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
                              <c:url var="sOther3" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="${p }"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <c:if test="${p == paging.currentPage }">
                                 <li tabindex="0" class="paginate_button active" aria-controls="dataTables-example">
                                    <a href="${sOther3 }">${p}</a></li>
                                 </c:if>
                                 <c:if test="${p != paging.currentPage}">
                                  <li tabindex="0" class="paginate_button" aria-controls="dataTables-example">
                                    <a href="${sOther3 }">${p}</a></li>
                                 </c:if>
                              </c:forEach>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                           <c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
                              <c:url var="sOther4" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${ sOther4}">&gt;</a>
                              </c:if> <c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
                              <c:url var="sOther5" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="${paging.endPage + paging.pageSize}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                                 <a href="${ sOther5}">&gt;</a>
                              </c:if></li>
                           <li tabindex="0" class="paginate_button next" id="dataTables-example_next" aria-controls="dataTables-example">
                              <c:url var="sOther6" value="/admin/assignDolbomiSearch.do">
                                 <c:param name="currentPage" value="${paging.maxPage}"/><c:param name="search" value="${option }"/>
                                 <c:param name="keyword" value="${paging.keyword}"/>
                              </c:url>
                              <a href="${ sOther6}">&gt;&gt;</a>
                           </li>
                        </ul>
                       
                        
                        <!-- 검색어 날짜 아닐 때 끝 -->
                        </c:if>
                     </div>
                  </div>
                                <!-- 페이징 종료 -->
    </div>
    </div>
    
    
    <!-- <div class="popbottom">
    	<div class="popbottom_wrap">
    		<button class="cardPop_close" type="button" onclick="popClose();">닫기</button>
    	</div>
    </div> -->

</body>
</html>