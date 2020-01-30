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
	margin: 8px;
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
    width: 69%;
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
/* **************************************** *
 * Join
 * **************************************** */
/* content */
.join_content60 {padding: 42px 0 50px;position: relative;}
.join_content60:before, .join_content:after {content: '';display: block;width: 100%;height: 5px;position: absolute;left: 0;border-radius: 25px;overflow: hidden;}
.join_content60:before {top: 0;background-color: #f07e23;}
.join_content60:after{
    content: '';
    display: block;
    width: 100%;
    height: 3px;
    position: absolute;
    top: 0;
    left: 0;
    background: #ddd;
    border-radius: 25px;
    overflow: hidden;}
.join_content60 > p {font-size: 16px;font-weight: 400;line-height: 1.75;letter-spacing: -0.025em;color: #666;}

.join_content60.secondary {padding-bottom: 0;}
.join_content60.secondary:after {display: none;}

/* control */
.join_control {margin-top: 40px;font-size: 0;text-align: center;}
.join_control > * {margin-right: 15px;}
.join_control > *:last-child {margin-right: 0;}

/* WRAP */
.wrap2 {max-width: 1200px;margin: 0 auto;position: relative;}
.wrap_narrow2 {max-width: 994px;margin: 0 auto;position: relative;}
.wrap_narrow2:before, .join_content:after {content: '';display: block;width: 100%;height: 5px;position: absolute;left: 0;border-radius: 25px;overflow: hidden;}
.wrap_narrow2:before {top: -6px;background-color: #f07e23;}
.wrap_narrow2:after {bottom: 0;background-color: #222;}


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
 	if($("input[type='checkbox']").is('checked')){
		$("input[type='checkbox']").on('click',function(){
			<c:url var="assigndol" value="/dolbomi/dolAssignList.do">
			<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
			<c:param name="currentPage" value="1"/>
		</c:url>
		location.href="${assigndol}"; 
		
			
		});
	}else{
		$("input[type='checkbox']").on('click',function(){
			<c:url var="list" value="/dolbomi/dolAssignSearchList.do">
			<c:param name="search" value="Y"/>
			<c:param name="currentPage" value="1"/>
			<c:param name="in_center" value="${loginDolbomi.office_name}"/>
			<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
		</c:url>
		location.href="${list}"; 
			
		});
	} 
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
					 //console.log(no+", insert src : "+ src);
				}else if(result == 'delete'){
					 $("#"+no).attr('src','/ibom/resources/images/assign/s-list-like-off.png'); 
					 var src = $("#"+no).attr('src');
					 //console.log(no+", delete src : "+ src);
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
	
	
	//보더해보기
	//$(".div1").eq(0).attr("style","border: 2px solid red;")
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
					<h1 data-font="secondary" class="article_title">돌보미 서비스 신청현황</h1>
					<p class="article_desc">현재 돌보미 배정예정인 신청건 입니다. <br>찜 클릭 시 관리자가 돌보미 배정에 참고할 수 있습니다.</p>
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body" >
				<div class="wrap_narrow2" id="result_wrap">			
				
				
				<div id="join_content60">
					<div class="jt_board_list_wrap" style="width:48%; display:inline-block; margin-right:5px; vertical-align:top;">
					<!-- 검색 시작 -->
					<label><input type="checkbox" id="center" name="center" ${paging.search eq'Y'?"checked":""}><span>소속센터 신청건만 보기</span></label>
					<!-- 검색종료 -->
					<!-- ============================================================================================================================= -->
					
					<!-- 여기에 목록띄우기 -->
					<div id="list">
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
								<img src="/ibom/resources/images/assign/n-baby.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 2 and assign.kid_count eq 0 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-baby-2.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 1 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 2 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child-2.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 0 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 0 and assign.kid_count eq 1 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild-child.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 1 and assign.kid_count eq 1 and assign.child_count eq 0}">
								<img src="/ibom/resources/images/assign/n-child-baby.png" width="64" height="64" alt="">
							</c:if>
							<c:if test="${assign.baby_count eq 1 and assign.kid_count eq 0 and assign.child_count eq 1}">
								<img src="/ibom/resources/images/assign/n-schoolchild-child.png" width="64" height="64" alt="">
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
									<c:if test="${assign.licen eq '기타'}"><div class="VldTG"></div></c:if>
									<c:if test="${assign.licen ne '기타'}"><div class="VldTG">${assign.licen}</div></c:if>
							</div><!-- 한줄끝 -->
							<br>
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
					</div>
					
						
						<!-- <div id="map" style="width:49%;height:400px; display:inline-block;"></div> -->
					</div>
					<!-- =========================================================================================================================지도 -->
					<div class="jt_board_list_wrap" style="width:49%; display:inline-block; vertical-align:top; maring-left:5px;">
					
								<div id="map" style="width:99%;min-height:99vh; display:inline-block;"></div>
									
								
							

					</div>
					<!-- <div id="map" style="width:500px;height:400px;"></div> -->
					<!-- ======================================================================================================================지도 스크립트 -->
					
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9647683948e18a5959ac8a8a08fd5789&libraries=services"></script>
	<script type="text/javascript">
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.498994, 127.032864), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};

	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴----------------------중심좌표변할꺼면 주석
	
	//확대축소
		// 마우스 휠과 모바일 터치를 이용한 지도 확대, 축소를 막는다
		map.setZoomable(false);   

		// 지도에 확대 축소 컨트롤을 생성한다
		var zoomControl = new kakao.maps.ZoomControl();

		// 지도의 우측에 확대 축소 컨트롤을 추가한다
		map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
	//
	
	var geocoder = new kakao.maps.services.Geocoder();
	
	//배열로 주소 가져오기
	var array1 = "";
	
	<c:forEach items="${requestScope.list }" var="assign" varStatus="status">
		array1 += '${assign.address}'+'/';
	</c:forEach>
	array1 = array1.substr(0,array1.length-1);
	var arrayVal = [];
	for(var i in array1){
		arrayVal = array1.split('/');
	}
	//var array = [arrayVal];
	//console.log(arrayVal);
	
	
	//좌표들을 담아보자
	
	var points = "";
	var ppoints = [];
	
	//
	
	
	// 지도를 재설정할 범위정보를 가지고 있을 LatLngBounds 객체를 생성합니다
	var bounds = new kakao.maps.LatLngBounds();   
	
	arrayVal.forEach(function(addr, index){
		//console.log('addr : '+addr);
    	geocoder.addressSearch(addr, function(result, status) {
        	if (status === kakao.maps.services.Status.OK) {
        		var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
        		//console.log("coords : "+coords);
        		bounds.extend(coords);
        		

                var marker = new kakao.maps.Marker({
                    map: map,
                    position: coords
                });
                
				//인포창
                var infowindow = new kakao.maps.InfoWindow({
                   /*  content: '<div style="width:150px;text-align:center;padding:6px 0;">' + arrayVal[index] + '</div>', */
                    content: arrayVal[index],
                    disableAutoPan: true
                });
				
                
                //마커 클릭 시 
                kakao.maps.event.addListener(marker, 'click', function(){
                	$(".div1").removeAttr("style", "border:2px solid red");
                	$(".div1").eq(index).attr("style", "border:2px solid red");
                	
                	
                	
                	/* ar.forEach(function(){
						var aa = $(this).text().trim();
						var ab = arrayVal[index];
                		console.log("aa : "+aa);
                		console.log("ab : "+ab);
                		
                	}) */
                		/* if($(this).text().trim() == arrayVal[index]){
                			
                		} */
                	
                	/* $(".zWdMK").forEach(function(){
                		if($(this).text().trim() == arrayVal[index]){
                			$(this).parent('.1ej6Z').attr("style", "border:2px solid red");
                		}
                	}) */
                	//alert($(".zWdMK").eq(index).text());
                	
                	
                	
                	//$(".div1").eq(0).attr("style", "border:2px solid red");
                	
                	
                });//클릭이벤트 종료
                
				//마커 마우스오버 마우스아웃 이벤트 
                /* kakao.maps.event.addListener(marker, 'mouseover', function() {
                	infowindow.open(map, marker);
        		});
                kakao.maps.event.addListener(marker, 'mouseout', function() {
                	infowindow.close(map, marker);
        		}); */
                //
              //중심좌표 다시 셋팅
                map.setBounds(bounds);
                //bounds.extend(coords);
                
        	}        	
        	
        })
        
    });
	//map.setBounds(bounds);
	</script>
	<!-- ======================================================================================================================지도 스크립트 끝-->
	
	<!-- 페이징 시작 -->
		         			<div class="jt_pagination" data-font="secondary" id="jt_pagination">
		         			<!-- ========================================================================================검색전  -->
		         			<c:if test="${ empty paging.search }">
		         			<c:url var="list1" value="/dolbomi/dolAssignList.do">
		        					<c:param name="currentPage" value="1"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
		        				</c:url>
		        				<a href="${list1}" class="page_numbers first">첫 페이지</a>
		                 			 <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
		                     			<a href="${list1}" class="page_numbers prev ">이전 페이지</a>
		                  			</c:if>
		                  			<c:if test="${(paging.beginPage-paging.pageSize) > 1}">
		                  				<c:url var="list2" value="/dolbomi/dolAssignList.do">
				        					<c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/>
				        					<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                    			<a href="${list2 }" class="page_numbers prev ">이전 페이지</a>
		                  			</c:if>
		                  		<c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
		                  				<c:url var="list3" value="/dolbomi/dolAssignList.do">
				        					<c:param name="currentPage" value="${p}"/>
				        					<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                     		<c:if test="${p == paging.currentPage }">
		                        		<a href="${list3 }" class="current page_numbers">${p}</a>
		                     		</c:if >
		                     		<c:if test="${p != paging.currentPage }">
		                       	 		<a href="${list3 }" class="page_numbers">${p}</a>
		                     		</c:if>
		                  		</c:forEach>
		                     		<c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
		                     			<c:url var="list4" value="/dolbomi/dolAssignList.do">
				        					<c:param name="currentPage" value="${paging.maxPage}"/>
				        					<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                        		<a href="${list4}" class="page_numbers next">다음 페이지</a>
		                     		</c:if>
		                     		<c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
		                     			<c:url var="list5" value="/dolbomi/dolAssignList.do">
				        					<c:param name="currentPage" value="${paging.beginPage + paging.pageSize}"/>
				        					<c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                        		<a href="${list5}" class="page_numbers next">다음 페이지</a>
		                     		</c:if>
		                     		
		                        <a href="${list4}" class="page_numbers last">마지막 페이지</a>
		                        </c:if>
		         				<!-- ========================================================================================검색후  -->
		         			
		         				<c:if test="${ !empty paging.search }">
		        				<c:url var="slist1" value="/dolbomi/dolAssignSearchList.do">
		        					<c:param name="currentPage" value="1"/><c:param name="in_center" value="${loginDolbomi.office_name}"/>
		        					<c:param name="search" value="Y"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
		        				</c:url>
		        				<a href="${slist1}" class="page_numbers first">첫 페이지</a>
		                 			 <c:if test="${(paging.beginPage-paging.pageSize)<= 1}">
		                     			<a href="${slist1}" class="page_numbers prev ">이전 페이지</a>
		                  			</c:if>
		                  			<c:if test="${(paging.beginPage-paging.pageSize) > 1}">
		                  				<c:url var="slist2" value="/dolbomi/dolAssignSearchList.do">
				        					<c:param name="currentPage" value="${paging.beginPage-paging.pageSize}"/>
				        					<c:param name="in_center" value="${loginDolbomi.office_name}"/>
				        					<c:param name="search" value="Y"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                    			<a href="${slist2 }" class="page_numbers prev ">이전 페이지</a>
		                  			</c:if>
		                  		<c:forEach var="p" begin="${paging.beginPage }" end="${paging.endPage }">
		                  				<c:url var="slist3" value="/dolbomi/dolAssignSearchList.do">
				        					<c:param name="currentPage" value="${p}"/><c:param name="in_center" value="${loginDolbomi.office_name}"/>
				        					<c:param name="search" value="Y"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                     		<c:if test="${p == paging.currentPage }">
		                        		<a href="${slist3 }" class="current page_numbers">${p}</a>
		                     		</c:if >
		                     		<c:if test="${p != paging.currentPage }">
		                       	 		<a href="${slist3 }" class="page_numbers">${p}</a>
		                     		</c:if>
		                  		</c:forEach>
		                     		<c:if test="${(paging.endPage+paging.pageSize) > paging.maxPage }">
		                     			<c:url var="slist4" value="/dolbomi/dolAssignSearchList.do">
				        					<c:param name="currentPage" value="${paging.maxPage}"/><c:param name="in_center" value="${loginDolbomi.office_name}"/>
				        					<c:param name="search" value="Y"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                        		<a href="${slist4}" class="page_numbers next">다음 페이지</a>
		                     		</c:if>
		                     		<c:if test="${(paging.endPage+paging.pageSize) <= paging.maxPage }">
		                     			<c:url var="slist5" value="/dolbomi/dolAssignSearchList.do">
				        					<c:param name="currentPage" value="${paging.beginPage + paging.pageSize}"/><c:param name="in_center" value="${loginDolbomi.office_name}"/>
				        					<c:param name="search" value="Y"/><c:param name="ibom_id" value="${loginDolbomi.dol_id}"/>
				        				</c:url>
		                        		<a href="${slist5}" class="page_numbers next">다음 페이지</a>
		                     		</c:if>
		                     		
		                        <a href="${slist4}" class="page_numbers last">마지막 페이지</a>
		                        </c:if>
		    				</div>
                   <!-- 페이징 종료 -->
	</div>
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