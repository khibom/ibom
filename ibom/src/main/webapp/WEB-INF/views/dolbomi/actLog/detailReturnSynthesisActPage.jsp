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
<script type="text/javascript">
$(function(){
	//추가
	$("#btn2").click(function(){
		
        if($("input[name=chk]").is(":checked") == true){ //체크된 요소가 있으면               
              var i = $("input[name=chk]:checked").parents("tr");
                       i.remove();
          }else {
              alert("기본값은 삭제할수 없습니다")
          }
    	
        return false;
     });
	
	$("#btn1").click(function(){
		
		//로그행 추가
		$("#synLog").append(
				 "<tr class='js_full_click  jq_click click_a'>"
               + "<td class='type'>"
			   + "<label><input type='checkbox'name='chk' class='chk'/>"
			   + "<span></span></label></td>"
               + "<td class='type'><input type='text' name='ac_time'style='width:20%;'></td>"
               + "<td class='type'><textarea name='ac_content' style='border:none; height:100px;resize: none;' ></textarea></td>"
               + "</tr>");
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
function back(event){
	javascript:history.back();
	event.stopPropagation();
	event.preventDefault();
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
	if(confirm("지금 전송하시면 수정 하실수 없습니다. 수정하시겠습니까?")){
		return true;
	
	}else{
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
}

</script>
</head>
<body>
<c:import url="../dolHeader.jsp"/>
<main id="main" class="main_container">


    <div id="main_container_inner" class="notice_list">

        <div class="article">
            <div class="article_header">
                <div class="wrap_narrow">
                    <h1 data-font="secondary" class="article_title">종합형 활동일지 페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    
					
	<form action="${pageContext.request.contextPath}/dolbomi/upReturnSynAct.do" onsubmit="return fromDataCheck(event);" method="post" >				
	<div class="jt_board_list_wrap">
	<input type="hidden" name="service2_no" value="${ap2.service2_no}">
	<input type="hidden" name="dol_id" value="${loginDolbomi.dol_id}">
	<input type="hidden" name="family_code" value="${uFm.family_code}">
	<input type="hidden" name="synthesis_no" value="${syn.synthesis_no}">
	<input type="hidden" name="process_ctgry" value="대기">
     <table class="jt_board_list">
            <caption>게시판 목록</caption>
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
        </table><!-- .jt_board_list -->
    </div>
    <h4 style=" color:rgb(243, 114, 51); width:49%; margin-top:30px;">반려사유</h4><br/>
    <table class="jt_board_list">
            <caption>게시판 목록</caption>
        <tbody>
       <tr>
			<th scope="col" class="type">반려사유</th>
			<td><textarea style="border:none; height:100px;resize: none;" readonly>${syn.cond_cnt}</textarea></td>
	  </tr>
	 </tbody>
	</table>
    <h4 style=" color:rgb(243, 114, 51); width:49%; margin-top:30px;">활동내역</h4><br/>
   <p style=" color:rgb(243, 114, 51); font-size:10pt;">
     ※아이돌봄이  선생님께서는 아래내용을 참고하여, 활동내용을 상세히 적어주시기 바랍니다.<br/>
     ☞오늘의 활동내용 요약  <br/>
  - 종합형 기본(세탁기돌리기,  아동 놀이공간 정리및 청소기 돌리기, 걸레질 하기<br/>
  - 종합형 추가(청소기 청소)<br />
    ☞활동시간 및 활동내용(상세기록)<br/>
  - 16 ~ 17시 :아동 빨랫감을 세탁기에 돌리고,  아동과 함께 종이접기를 함.<br/>
  - 17 ~ 18시 : 아동에게 책을 읽게하고,  빨래를 널은뒤  거실및 방 청소기 돌리고  대걸레질 함.   
  </p>
  <div style="width:100%; height:60px; position:relative;"></div>
  <ul style=" display:inline-block; postion:relative; width:100%;">
					<li style="float:right;">
						<button class="btn waves-effect orange darken-3" id="btn1">추가</button>&nbsp;<button id="btn2"class="btn waves-effect orange darken-3">삭제</button>
					</li>
  </ul>
  <div class="jt_board_list_wrap">
		<table class="jt_board_list" id="synLog">
            <thead>
                <tr>
                	<th scope="col" style="width:5%;">
                	<label>
			        <input name="chkAll" class="chkAll" type="checkbox"/>
			        <span></span>
			      </label>
                	</th>
                    <th scope="col" class="type">시간</th>
                    <th scope="col" class="type">내용</th>
                </tr>
               
            </thead>
            
            <tbody>
            <c:forEach var="i" items="${ac}" >
				<tr class="js_full_click  jq_click click_a">
                  <td class="type"><label>
			        <input type="checkbox"name="chk" class="chk"/>
			        <span></span>
			      </label>
			      </td>
                  <td class="type"><input type="text" name="ac_time"style="width:20%;" value="${i.key}"></td>
                  <td class="type"><textarea name="ac_content" style="border:none; height:100px;resize: none;">${i.value}</textarea></td>
                </tr>
           </c:forEach>
            </tbody>
        </table>
          		</div>
        <div style="float:right;margin-top:15px;">
				 <input type="submit"value="제출" class="btn waves-effect orange darken-3" style="float:right;" >
			</div>
  		</form>
  		<button class="btn waves-effect orange darken-3"style="float:left; margin-top:14px;" onclick="back();">목록</button>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_body -->
        </div><!-- .article -->

    </div><!-- #main_container_inner -->

    </main><!-- .main_container -->
    <!-- footer ============================================================== -->
<c:import url="../../common/footer.jsp"/>
</body>
</html>