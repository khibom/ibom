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
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize.css" />
<style type="text/css">

.div1 {
	margin: 9px;
    border-radius: 3px;
    background-color: #fff;
    box-shadow: 0 0 3px 0 hsla(0,0%,67%,.5);
    padding: 15px;
    position: relative;
}
._3OjQs{
    display: inline-block;
    vertical-align: top;
    text-align: center;
    width: 25%;
    max-width: 100px;
    position: relative;
}

._3OjQs>div {
    margin-left: auto;
    margin-right: auto;
    margin-bottom: 5px;
}

.bESSa{
	width: 64px;
    height: 64px;
    margin-top: 1px;
    margin-bottom: 5px;
    border-radius: 90px;
    position: absolute;
    left: calc(50% - 32px);
}
.LazyLoad is-visible{
	
}
.xzVqv{
    width: 70px;
    padding: 5px 2px;
    margin-bottom: 0!important;
    background-color: #dcecea;
    color: #007e62;
    font-size: 11.2px;
    font-size: .7rem;
    font-weight: 400;
    border-radius: 15px;
    
}

._1ej6Z{
	flex: 3 1 0%;
    display: inline-block;
    vertical-align: top;
    line-height: 1.7;
    position: relative;
    width: 70%;
}
._1fXb8{
    display: inline-flex;
    -ms-flex-direction: row;
    flex-direction: row;
    -ms-flex-align: center;
    align-items: center;
    overflow: hidden;
    -ms-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
}
._1oow9{
	 margin-right: 5px;
    font-size: .85em;
    font-weight: 500;
    color: #0e6f6f;
}
.h24-F{
	width: 1px;
    height: 10px;
    margin: 0 5px;
    background-color: #ccc;
}
._2KPa8, .VldTG {
	font-size: .8em;
    font-weight: 400;
    color: #585858;
}
._3tb2C{/*적용안됨*/
	color: #3b3b3b; 
    font-size: .85em;
    font-weight: 500;
}
._BsZt{
	font-size: 12.8px;
    font-size: .8rem;
    font-weight: 400;
    color: #585858;
}
.J8WcH{
	font-weight: 400;
	color: #bdbdbd;
    font-size: 12.8px;
    font-size: .8rem;
}
.zWdMK{
	font-weight: 400;
	color: #585858;
    font-size: .85em;
    white-space: nowrap;
    width: 120px;
    overflow:hidden;
    text-overflow: ellipsis;
}
.p-Rr5{
	font-size: .85em;
    font-weight: 700;
    color: #000;
    margin-left: 5px;
}
</style>
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script>
<!-- JS -->
<script src="/ibom/resources/js/vendors/browser_selector.js"></script>

<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery/jquery_2.2.4.min.js"></script>
	
<script type="text/javascript"
	src="/ibom/resources/js/vendors/jquery.ajaxQueue.min.js"></script>
<script type="text/javascript" src="/ibom/resources/js/common.js"></script>
<script type="text/javascript" src="/ibom/resources/js/jt.js"></script>






<script type="text/javascript">
	if ((/Android|iPhone|iPad|iPod|BlackBerry|Windows Phone/i)
			.test(navigator.userAgent || navigator.vendor || window.opera)) {
		document.getElementsByTagName("html")[0].className = " mobile";
	} else {
		document.getElementsByTagName("html")[0].className = " desktop";
	}
	
	
	


$(function(){
	//찜하기
	$(".liketo").on('click', function(){
		var serv2_no = $(this).attr('name');
		var span_no = $(this).attr('id');
		var dol_id = '${loginDolbomi.dol_id}';
		$.ajax({
			url:"${ pageContext.request.contextPath }/dolbomi/likeCheck.do",
			data:{service2_no: serv2_no, dol_id : dol_id},
			type:"post",
			success:function(result){
				var no = serv2_no;
				if(result == 'insert'){
					 $("#"+no).attr('src','/ibom/resources/images/assign/s-list-like-on.png'); 
					 var src = $("#"+no).attr('src');
					 console.log(no+", insert src : "+ src);
				}else if(result == 'delete'){
					 $("#"+no).attr('src','/ibom/resources/images/assign/s-list-like-off.png'); 
					 var src = $("#"+no).attr('src');
					 console.log(no+", delete src : "+ src);
				}	
				likeCount(span_no);
			},
			error: function(request, status, errorData){
				console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
			}			
		})//ajax 종료
		//찜 갯수 바꿔주기
		function likeCount(span_no){
			$.ajax({
				url:"${ pageContext.request.contextPath }/dolbomi/likeCount.do",
				data:{service2_no : serv2_no},
				type:"post",
				success:function(result){
					$('#'+span_no).html(result);
				},
				error: function(request, status, errorData){
					console.log("error code : "+request.status+"\nMessage : "+request.responseText+"\nError : "+errorData);
				}
			})//ajax종ㅇ료
		}//펑션종료
	})//클릭이벤트종료
	
	
	
	
});//document ready끝
	
	
</script>



</head>
<body>
	<c:import url="../dolHeader.jsp" />
	<!--  main =================================================================== -->
	<main id="main" class="main_container">

	<div id="main_container_inner" class="notice_list">
		<!-- 위에태그 두개 돈터치 -->
		<div class="article">
			<div class="article_header">
				<div class="wrap_narrow">
					<h1 data-font="secondary" class="article_title">돌보미 면접 리스트</h1>
					<p class="article_desc">${loginDolbomi.dol_name}님의면접 리스트 입니다.</p>
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body" >
				<div class="wrap_narrow" id="result_wrap">			
				
				
					<!-- 여기서부터  -->
					<div class="jt_search preserve">
						<div class="jt_search_category jt_selectric_wrap">
							<select name="search_type" class="jt_selectric search_data"
								style="height: 49px; margin: 0 49px 0 18px; line-height: 49px;">
								<option value="all">전체</option>
								<option value="bo_title">제목</option>
								<option value="bo_content">내용</option>
							</select>
						</div>
						<!-- .jt_search_category -->
						<div class="jt_search_field">
							<label class="jt_search_label"><input type="text"
								name="search_str" value=""
								class="jt_search_input jt_form_field search_data jq_keydown enter-search"
								placeholder="검색어를 입력하세요" /></label>
							<button class="jt_search_button jq_click search">검색하기</button>
						</div>
						<!-- .jt_search_field -->
					</div>
					<!-- .jt_search -->
					<!-- 여기까지 검색부분 -->

					<div class="jt_board_list_wrap" style="width:48%; display:inline-block; margin-right:5px; vertical-align:top;">
					
					
					
					<c:forEach items="${requestScope.list }" var="assign" varStatus="status">
					<div class="div1"><!-- 한칸  시작-->
						<div class="_3OjQs"><!-- 아가 이미지 -->
							<div class="bESSa" style="display: none;">
								<div mode="indeterminate" value="0" min="0" max="100" style="position: relative; display: inline-block; width: 64px; height: 64px;">
									<div style="width: 64px; height: 64px; display: inline-block; transition: -webkit-transform 10s linear 0ms, transform 0ms; transform: rotate(1800deg);">
									
									
									</div>
								</div>
							</div>
							<div class="LazyLoad is-visible" style="height: 64px; width: 64px;">
							<!-- 영아 1명일때, 2명일때, 유아 1명일 떄, 2명일 때, 초등 1명일 때,   -->
							<c:if test="${assign.baby_count eq 1 and assign.kid_count eq 0 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-baby.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 2 and assign.kid_count eq 0 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-baby-2.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 1 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 2 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child-2.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 0 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 1 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild-child.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 1 and assign.kid_count eq 1 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child-baby.png" width="64" height="64" alt="부모 사진">
							</c:if>
							<c:if test="${assign.baby_count eq 1 and assign.kid_count eq 0 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild-child.png" width="64" height="64" alt="부모 사진">
							</c:if>
							</div>
							<div class="xzVqv">
							  <span id="${status.count }">${assign.likecount }</span>명 지원
							</div>
						</div><!-- 아가이미지 -->
						<div class="_1ej6Z"><!-- 우측내용시작 -->
							
							<div class="_1fXb8">
							<c:if test="${assign.baby_count ne 0}">
								<div class="_1oow9"><div>영아${assign.baby_count} 명</div></div>
							</c:if>
							<c:if test="${assign.kid_count ne 0}">
								<div class="_1oow9"><div>유아${assign.kid_count} 명 </div></div>
							</c:if>
							<c:if test="${assign.child_count ne 0}">
								<div class="_1oow9"><div>초등학생${assign.child_count} 명 </div></div>
							</c:if>
									<div class="h24-F"></div>
								<div class="VldTG">${assign.licen}</div>
							</div>
							
							<div class="_1fXb8">
								<div class="p-Rr5">${assign.service_date} </div>
									<div class="h24-F"></div>
								<div class="p-Rr5">${assign.startt} ~ ${assign.endt}</div>
							</div>
							
							<div class="_1fXb8">
								<div class="_2KPa8">${assign.service_typ}</div>
									<div class="h24-F"></div>
								<div class="_2KPa8">${assign.user_name}</div>
									<div class="h24-F"></div>
								<c:if test="${assign.interview eq 'Y'}">	
								<i class="material-icons default">assignment_ind</i>
								</c:if>
								<c:if test="${assign.interview eq 'N'}">	
								<i class="material-icons default" style="color:#ddd;">assignment_ind</i>
								</c:if>
								<!-- <div class="_BsZt">진○하</div> -->
									<div class="h24-F"></div>
								<c:if test="${assign.cctv eq 'N'}">	
									<i class="material-icons default" style="color:#ddd;">videocam</i>
								</c:if>
								<c:if test="${assign.cctv eq 'Y'}">	
									<i class="material-icons default">videocam</i>
								</c:if>
								<!-- <div class="J8WcH">01/14 시작</div>-->
									<div class="h24-F"></div>
								<c:if test="${assign.pet eq 'Y'}">	
									<i class="material-icons default">pets</i>
								</c:if>
								<c:if test="${assign.pet eq 'N'}">	
									<i class="material-icons default" style="color:#ddd;">pets</i>
								</c:if>
							</div>
						
							<div class="_1fXb8">
								<div class="zWdMK">${assign.address}</div>
								<div class="p-Rr5">${assign.office_name}</div>
							</div>
						
						</div><!-- 우측내용종료 -->
						<!-- 찜 시작-->
						<div style="display:inline-flex;">
						<c:set var='no' value="${assign.service2_no }"/>
						<button id="${status.count }" class="liketo" name="${no }" tabindex="0" type="button" style="border: 10px; box-sizing: border-box; display: inline-block; 
						-webkit-tap-highlight-color: rgba(0, 0, 0, 0); cursor:pointer; text-decoration: none; margin: 0px; padding: 0px; outline: none; 
						font-size: 0px; font-weight: inherit; position: relative; z-index: 1; overflow: visible; 
						transition: all 450ms cubic-bezier(0.23, 1, 0.32, 1) 0ms; width: 21px; height: 28px; background: none;">
							<span style="height: 100%; position: absolute; top: 0px; left: 0px; overflow: hidden; pointer-events: none;"></span>
							<c:if test="${assign.likedol eq 'Y' }">
								<img id="${assign.service2_no }" src="/ibom/resources/images/assign/s-list-like-on.png" alt="favorites">
							</c:if>	
							<c:if test="${assign.likedol eq 'N' }">
								<img id="${assign.service2_no }" src="/ibom/resources/images/assign/s-list-like-off.png" alt="favorites">
							</c:if>		
								
							
						</button>
						</div>
						<!-- 찜 끝-->
						</div><!-- 한칸 종료 -->
						</c:forEach>
						<%-- <table class="jt_board_list" style="table-layout: auto;" >
							<caption>게시판 목록</caption>
							<thead>
								<tr>
									<th scope="col" class="type">서비스2번호</th>
									<th scope="col" class="type">신청자명</th>
									<th scope="col" class="type">서비스유형</th>
									<th scope="col" class="hit">서비스일자</th>
								</tr>
								
							</thead>

							<tbody>
								<c:forEach items="${requestScope.list }" var="assign"
									varStatus="status">

									<tr class="js_full_click  jq_click click_a">
										<td class="type">${assign.service2_no}</td>
										<td class="type">${assign.user_name }</td>
										<td class="type">${assign.service_typ}</td>

										<td class="hit">${assign.service_date }</td>

									</tr>



								</c:forEach>
							</tbody>
						</table> --%>
						<!-- .jt_board_list -->
						<!-- <div id="map" style="width:49%;height:400px; display:inline-block;"></div> -->
					</div>
					<div class="jt_board_list_wrap" style="width:49%; display:inline-block; vertical-align:top; maring-left:5px;">
					
								<div id="map" style="width:99%;min-height:100vh; display:inline-block;"></div>
									
								
							
						
					</div>
					<!-- <div id="map" style="width:500px;height:400px;"></div> -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9647683948e18a5959ac8a8a08fd5789"></script>
	<script type="text/javascript">
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.498994, 127.032864), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	var markerPosition  = new kakao.maps.LatLng(37.498994, 127.032864); 
	var marker = new kakao.maps.Marker({
	    position: markerPosition
	});
	marker.setMap(map);
	</script>


	

<!-- 연습 -->

               <i class="material-icons right">stars</i>
             


				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_body -->
		</div>
		<!-- .article -->
		<!-- 돈터치 -->
	</div>
	<!-- #main_container_inner --> </main>
	<!-- .main_container -->
	<!-- footer ============================================================== -->
	<c:import url="../../common/footer.jsp" />
</body>
</html>