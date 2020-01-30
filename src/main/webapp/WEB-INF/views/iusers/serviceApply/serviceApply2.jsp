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
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize3.css" />
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
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script> 
<script type="text/javascript">
$(function(){
	/* 모달 */
	$('.modal').modal();
	/* 모달end */
	$("#child_list_btn").click(function(){
	var userid = "${loginIuser.user_id}";
	//alert(userid);
	
	$.ajax({
		url : "service2ChildList.do",
		type : "post",
		data : {user_id : userid},
		dataType : "json",
		success : function(data){
			// data object를 string으로 바꿈
			var jsonStr = JSON.stringify(data);
			// 문자열을 json 객체로 바꿈
			var json = JSON.parse(jsonStr);
			var values = "";
			var values2 = ""; 
			var values3 = "</table>";
			
				values += "<table class='jt_board_list3' id='cardlist'>"
							+"<colgroup>"
							+"<col width='10%' />"
							+"<col width='*' />"
							+"<col width='*' />"
							+"<col width='*' />"
							+"<col width='*' />"
							+"<col width='*' />"
							+"<col width='*' />"
							+"</colgroup>"
							+ "<tbody>"
							+ "<tr><th class='allCheck'>" + "<input type='checkbox' name='allCheck' id='allCheck'>"
							+ "</th><th class='family_name'>대상아동" 
							+ "</th><th class='ad_date'>판정일자"
							+ "</th><th class='family_gender'>성별"
							+ "</th><th class='ad_level'>판정등급"
							+ "</th><th class='dolbom_type'>돌봄구분"
							+ "</th><th class='remaining_time'>정부지원<br>잔여시간(연간)</th></tr>"
							+ "</tbody>"
							var b = 0;
							for(var i in json.list){
							values2 += "<tr><td class='checkOwn'>" + "<input type='checkbox' name='family_CheckBox' id='family_CheckBox'>"
							//+ "<input type='hidden' name='care_day' id='care_day' value='" + care_day + "'>"
							+ "</td><td class='family_name_cont'>" + decodeURIComponent(json.list[i].family_name).replace(/\+/gi, " ") 
							+ "<input type='hidden' name='family_code' id='family_code" + b + "' value='" + json.list[i].family_code + "'>"
							+ "</td><td class='ad_date_cont'>" + json.list[i].ad_date 
							+ "</td><td class='family_gender_cont'>" + json.list[i].family_gender
							+ "</td><td class='ad_level_cont'>" + decodeURIComponent(json.list[i].ad_level).replace(/\+/gi, " ")
							+ "</td><td class='dolbom_type_cont'>" + decodeURIComponent(json.list[i].dolbom_type)
							+ "</td><td class='remaining_time_cont'>" + json.list[i].remaining_time + "/720" 
							+ "</td></tr>";
							b++
							}
							
			console.log("values" + values);
			//console.log(care_day);
			// childList의 div에 출력 적용
			$("#childList").html(values + values2 + values3);
			
		},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	});	// serviceCardList.do
	// 회원의 카드 목록 조회 서비스	
	}); //child_list_btn
	
	//전체선택 체크박스 클릭 
	//체크박스 전체 선택 스크립트
	$(document).on("click","#allCheck", function(){ 
		//만약 전체 선택 체크박스가 체크된상태일경우 
		if($("#allCheck").prop("checked")) { 
			//해당화면에 전체 checkbox들을 체크해준다 
			$("input[name=family_CheckBox]").prop("checked",true); 
			// 전체선택 체크박스가 해제된 경우
		} else { 
			//해당화면에 모든 checkbox들의 체크를해제시킨다. 
			$("input[name=family_CheckBox]").prop("checked",false); 
		}
	}); 
	//돌봄일정추가
	$("#dolbom_add_btn").on("click", function(){
		if($("#family_CheckBox").is(":checked") == true){
			var endDate = $("#endDate").val();//종료일
		    var startDate = $("#stDate").val(); //시작일
		    var listDate = [];
		    //var nowDate = new Date(fromDate);//오늘
		    //nowDate = nowDate.toISOString().substr( 0, 10 ).replace(/-/g,"");
		    //toDate = toDate.replace(/-/g,"");
		    //fromDate = fromDate.replace(/-/g,"");
		    var dateMove = new Date(startDate);
		    console.log(dateMove);
		    console.log(endDate);
		    var strDate = startDate;
		    console.log("지역 변수 선언한 strDate 확인: " +strDate);
		    var test1 = [];
		    $("input[name=care_day_check]:checked").each(function() {
		    	  var test = $(this).val();
		    	  test1.push(test);
				  console.log(test);	
				  
		    	  //alert("벨류값확인 : " + test);
		    });
		    console.log("test1="+test1);
		    if(startDate != "" && endDate != "" && test1.length != 0){
			    if(startDate == endDate){ //시작일과 종료일이 같다면
			    	var strDate = dateMove.toISOString().slice(0,10);
			    	var week = ['일', '월', '화', '수', '목', '금', '토'];
			        var dayOfWeek = week[new Date(strDate).getDay()];
			        var checked = '0';
			        var care_day = '';
			        var apply_date = '';
			        for(var i in test1){
			        	if(dayOfWeek == test1[i]){
			        		checked = '1';
			        		care_day += test1[i]
			        	}
			        }//같은 요일이 있는지 확인하는 for
			        console.log("돌봄요일 : " + care_day);
			        if(checked == '1'){ //신청일과 돌봄요일이 같다면
			        	listDate.push(strDate);
			        	apply_date += strDate;
			        	console.log("신청년월 : " + apply_date);
			        }else{ //신청일과 돌봄요일이 같지 않다면
			        	alert("신청일과 요일을 확인해 주세요.");
			        	return false;
			        }
			        
			        
			        console.log("요일 확인 : " + dayOfWeek);
			    	console.log("if문에서 strDate 확인 : " + strDate);
			    	console.log("배열값 확인 : " + listDate);
			    	console.log(typeof(dayOfWeek));
			    	//if(dayOfWeek == )
			    }else{
			    	
			    	while (strDate < endDate){
			    		var strDate = dateMove.toISOString().slice(0,10);
			    		listDate.push(strDate);
			    		dateMove.setDate(dateMove.getDate() + 1);
			    	}//날짜 리스트로 배열에 담기
			    	console.log("날짜 리스트 확인" + listDate);
			    	var care_day_arr = [];
			    	var apply_date_arr = [];
			    	var apply_care_arr = [];
			    	for(var i in listDate){
			    		var week = ['일', '월', '화', '수', '목', '금', '토'];
			    		var dayOfWeek = week[new Date(listDate[i]).getDay()];
				    	for(var k in test1){
				    		console.log(dayOfWeek);
				    		console.log("listDate[i]"+listDate[i]);
				    		if(test1[k] == dayOfWeek){
				    			care_day_arr.push(dayOfWeek);
				    			apply_date_arr.push(listDate[i]);
				    			apply_care_arr.push(listDate[i] + " " +dayOfWeek);
				    			console.log("care_day_arr" + care_day_arr);
				    		}
				    	}
				    		
			    	}
			    	console.log(apply_care_arr);
			    	console.log(apply_date_arr);
			    	console.log(care_day_arr);
			    	if(apply_care_arr == ""){
			    		alert("신청일과 요일이 맞는지 확인해 주세요.");
			    	}
			    }//시작날짜와 종료날짜가 같지 않음
		    }else{
		    	alert("신청년월, 돌봄요일, 대상아동이 선택되어 있는지 확인해 주세요."
		    			+" 만약 선택되지 않았다면 선택하고 다시 돌봄일정추가 버튼을 클릭해 주세요.");
		    }
		    console.log('체크된 상태');
	    }else if($("#family_CheckBox").is(":checked") == false){
	    	alert('서비스 신청할 아이를 선택해 주세요.');
	    }//체크박스 체크된 가족리스트에서 row값 배열로 가져오기
	    //이용시간 값 가져오기
		var start_hour = $("#start_hour option:selected").val();
	    var start_hour_num = parseInt(start_hour);
		var start_minute = $("#start_minute option:selected").val();
		var start_minute_num;
		var end_hour = $("#end_hour option:selected").val();
		var end_hour_num = parseInt(end_hour);
		var end_minute = $("#end_minute option:selected").val();
		var end_minute_num;
		if(start_hour == "" || start_minute == "" || end_hour == "" || end_minute == ""){
			alert("이용시간을 확인해 주세요.");
			return false;
		}
		if(start_hour > end_hour || start_hour == end_hour){
			alert("이용시간을 확인해 주세요.");
			return false;
		}
		if( start_minute == "00"){
			start_minute_num = 0
		}else{
			start_minute_num = 0.5
		} 
		if( end_minute == "00"){
			end_minute_num = 0
		}else{
			end_minute_num = 0.5
		}
		var start_time_result = start_hour_num + start_minute_num;
		var end_time_result = end_hour_num + end_minute_num;
		var using_time = end_time_result - start_time_result;
		var using_time_result = end_hour_num - start_hour_num;
	    console.log(start_hour);
	    console.log(start_minute);
	    console.log(end_hour);
	    console.log(end_minute);
	    console.log(using_time);
	    
	    //서비스유형 값 가져오기
	    var service_type_selectBox = $("#service_type_selectBox").val();
	    if(service_type_selectBox == ""){
	    	alert("서비스유형을 선택해 주세요.");
	    	$("#service_type_selectBox").focus();
	    	return false;
	    }
		//가족정보 리스트에서 row값 가져오기
		var rowData = new Array(); 
		var tdArr = new Array();
		var checkbox = $("input[name=family_CheckBox]:checked");
		var family_code_arr = new Array();
		var family_name_cont_arr = new Array();
		var ad_level_cont_arr = new Array();
		var dolbom_type_cont_arr = new Array();
		// 체크된 체크박스 값을 가져온다
		checkbox.each(function(i){
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			
			//console.log("checkbox 값 : " + tr.text());
			//체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text());
			
			// td.eq(0)은 체크박스 이므로 td.eq(1)의 값부터 가져온다.
			var family_code = $("#family_code" + i).val();
			var family_name_cont = td.eq(1).text();
			var ad_level_cont = td.eq(4).text(); 
			var dolbom_type_cont =  td.eq(5).text();
			//가져온 값을 배열에 담는다.
			family_code_arr.push(family_code);
			family_name_cont_arr.push(family_name_cont);
			ad_level_cont_arr.push(ad_level_cont);
			dolbom_type_cont_arr.push(dolbom_type_cont);
			//받아온 값 확인
			console.log("family_code = " + family_code);
			console.log("family_name_cont = " + family_name_cont);
			console.log("ad_level_cont = " + ad_level_cont);
		});// 체크된 체크박스 값을 가져온다
		console.log(family_code_arr);
		console.log(family_name_cont_arr);
		console.log(ad_level_cont_arr);
		
		//돌봄일정 리스트 추가
		var list_date = ""; //신청일 요일
		var dol_list = ""; //신청일 요일에 대한 서비스 리스트
		var base_rate;//기본요금
		var gov_fund;//정부지원금
		var personal_charge;//본인부담금
		var a = 0;
		var u = 0;
		var overlap = '0';
		var date = new Array();
		for(var p = 0; p < apply_care_arr.length; p++){
		var day = $("#apply_date_cont" + p).text();
		date.push(day);
		}
		console.log(date);
		//신청일 요일 중복검사
		for(var a in date){
			for(var q in apply_care_arr){
				if(date[a] == apply_care_arr[q]){
					overlap = '1';
				}
			}
		}
		console.log("overlap=" + overlap);
		for(var i = 0; i < care_day_arr.length ; i++){
			var list_date = ""; 
			dol_list = "";
			list_date += "<tr><td class='checkOwn' rowspan='" + family_code_arr.length + "'>" + "<input type='checkbox' name='apply_CheckBox' id='apply_CheckBox"+i+"'>"
			+ "</td><td class='apply_date_cont' id='apply_date_cont" + u + "' style='text-align:center;' rowspan='" + family_code_arr.length + "'>" + apply_date_arr[i] + " " + care_day_arr[i] 
			+ "<input type='hidden' name='interview_date' id='interview_date" + i + "'>"
			+ "<input type='hidden' name='interview_time' id='interview_time"+ i +"'>"
			+ "<input type='hidden' name='apply_date' id='apply_date' value='"+ apply_date_arr[i] + "'>"
			+ "<input type='hidden' name='care_day' id='care_day' value='"+ care_day_arr[i] + "'></td>"
					for(var j = 0; j < family_name_cont_arr.length; j++){
						if(dol_list == ""){
							dol_list+= "<td class='apply_family_cont'>" +  family_name_cont_arr[j]
							+ "<input type='hidden' name='family_code' value='" + family_code_arr[j] + "'>"
							+ "</td><td class='service_type_cont' style='text-align:center;'>" + service_type_selectBox
							+ "</td><td class='start_time_cont'>" + start_hour + " : " + start_minute
							+ "</td><td class='end_time_cont'>" + end_hour + " : " + end_minute
							+ "<input type='hidden' name='start_time' value='"+ start_hour + " " + start_minute + "'>"
							+ "<input type='hidden' name='end_time' value='"+ end_hour + " " + end_minute + "'>"
							+ "</td><td class='using_time_cont'>" + using_time
							+ "<input type='hidden' name='using_time' value='"+ using_time +"'>"
								if( ad_level_cont_arr[j] == "시간제-라형"){
									dol_list += "</td><td class='support_time_cont'>" + "대상아님"
									+ "<input type='hidden' name='care_user_time' value='0'>"
								}else{
									dol_list += "</td><td class='support_time_cont'>" + "<select name='care_user_hour' id='care_user_hour' style='height:28px; border: 1px solid #ccc; font-size:12pt;'>"
									var c = 1;	
									for(var k = 0; k < using_time_result; k++){
										dol_list += "<option value='"+ c +"'>0"+ c +"</option>"
										c++;
									}
									dol_list += "</select>" + " : "
									+ "<select name='care_user_minute' id='care_user_minute' style='height:28px; border: 1px solid #ccc; font-size:12pt;'>"
									+ "<option value='00'>00</option>"
									+ "<option value='30'>30</option></select>"
								}
							dol_list+= "</td><td class='interview_yn_cont"+u+"' style='text-align:center;' id='interview_yn_cont"+u+"'>" + "X"
							+ "</td></tr>";
						}else{
							dol_list+= "<tr><td class='apply_family_cont'>" +  family_name_cont_arr[j]
							+ "<input type='hidden' name='family_code' value='" + family_code_arr[j] + "'>"
							+ "</td><td class='service_type_cont' style='text-align:center;'>" + service_type_selectBox
							+ "</td><td class='start_time_cont'>" + start_hour + " : " + start_minute
							+ "</td><td class='end_time_cont'>" + end_hour + " : " + end_minute
							+ "<input type='hidden' name='start_time' value='"+ start_hour + " " + start_minute + "'>"
							+ "<input type='hidden' name='end_time' value='"+ end_hour + " " + end_minute + "'>"
							+ "</td><td class='using_time_cont'>" + using_time
							+ "<input type='hidden' name='using_time' value='"+ using_time +"'>"
								if( ad_level_cont_arr[j] == "시간제-라형"){
									dol_list += "</td><td class='support_time_cont'>" + "대상아님"
									+ "<input type='hidden' name='care_user_time' value='0'>"
								}else{
									dol_list += "</td><td class='support_time_cont'>" + "<select name='care_user_hour' id='care_user_hour' style='height:28px; border: 1px solid #ccc; font-size:12pt;'>"
									var c = 1;	
									for(var k = 0; k < using_time_result; k++){
										dol_list += "<option value='"+ c +"'>0"+ c +"</option>"
										c++;
									}
									dol_list += "</select>" + " : "
									+ "<select name='care_user_minute' id='care_user_minute' style='height:28px; border: 1px solid #ccc; font-size:12pt;'>"
									+ "<option value='00'>00</option>"
									+ "<option value='30'>30</option></select>"
								}
							dol_list+= "</td><td class='interview_yn_cont"+u+"' style='text-align:center;' id='interview_yn_cont"+u+"'>" + "X"
							+ "</td></tr>";
						}
					}
			if(overlap == '1'){
				alert("신청일 및 요일 확인해주세요.");
				return false;
			}else{
				$("#dolbom_list").append(list_date + dol_list);
			}
			u++;
			a++;
		}
		console.log("j="+j);
		console.log("u =" + u);
		
		/*
		if(overlap == '1'){
			alert("신청일 및 요일 확인해주세요.");
			return false;
		} */
		
		//전체선택 체크박스 클릭 
		//체크박스 전체 선택 스크립트
		$(document).on("click","#allCheck_apply", function(){ 
			//만약 전체 선택 체크박스가 체크된상태일경우 
			if($("#allCheck_apply").prop("checked")) { 
				//해당화면에 전체 checkbox들을 체크해준다 
				$("input[name=apply_CheckBox]").prop("checked",true); 
				// 전체선택 체크박스가 해제된 경우
			} else { 
				//해당화면에 모든 checkbox들의 체크를해제시킨다. 
				$("input[name=apply_CheckBox]").prop("checked",false); 
			}
		}); 
	});
	//면접신청
	//$(function(){	
		var interview_time_pop;
		var interview_date_pop;
		$("#interview_time_pop").change(function(){
			interview_time_pop = $("#interview_time_pop").val();
			console.log(interview_time_pop);
		});
		$("#interview_date_pop").change(function(){
			interview_date_pop = $("#interview_date_pop").val();
			console.log(interview_date_pop);
		});
		$("#interview_send").on("click", function(){
			//가족정보 리스트에서 row값 가져오기
			var rowData = new Array(); 
			var tdArr = new Array();
			var checkbox = $("input[name=apply_CheckBox]:checked");
			var interview_date_val_arr = new Array();
			// 체크된 체크박스 값을 가져온다
			var tdddd = $("input[name='interview_date']").val();
			checkbox.each(function(i){
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				
				// td.eq(0)은 체크박스 이므로 td.eq(1)의 값부터 가져온다.
				var td1 = td.eq(1).find('input[name="interview_date"]').val(interview_date_pop);
				var td2 = td.eq(1).find('input[name="interview_time"]').val(interview_time_pop);
				var td3 = td.eq(8).text();
				var interview_date_val = $("#interview_date" + i).val();
				var name_by_id = $('input[name=apply_CheckBox]:checked').attr('id');
				//가져온 값을 배열에 담는다.
				/* $("#modal1").css("display", "none");
				$(".modal-overlay").css("display","none"); */
				/* if(td3 == "X"){
					interview_yn_cont[n] = 'O';
				}else{
					interview_yn_cont[n] = 'X';
				}  */
				interview_date_val_arr.push(interview_date_val);
				console.log(interview_date_val);
				console.log(interview_date_val_arr);
				console.log("i = " + i);
				console.log("td1 = " + td1);
				console.log("td2 = " + td2);
				console.log("td3 = " + td3);
				console.log("name_by_id" + name_by_id);
				//받아온 값 확인
				for(var h = 0; h < interview_date_val_arr.length; h++){
					var interview_yn_cont = $("#interview_yn_cont"+h).text();
					
					if(interview_date_val_arr[h] != null || interview_date_val_arr[h] == ""){
						if(interview_yn_cont == "X"){
							$(".interview_yn_cont"+h).html("O");
						}
					}
				}
			});// 체크된 체크박스 값을 가져온다
			
		});
		
		
	//});
});
</script>

</head>
<body> 
	<c:import url="../iusersHeader.jsp" />

	<%-- <h2>돌보미 메인페이지</h2>
<h3>안녕하세요!${loginDolbomi.dol_name}님</h3> --%>

	<%-- <nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav> --%>
	<%-- <c:if test="${loginDolbomi != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
	<!-- <form action="sendEmail.do" method="post">
	<input type="email" name="email" >
	<input type="submit" value="전송">
</form> -->

	<!--  main =================================================================== -->
	<main id="main" class="main_container">


	<div id="main_container_inner" class="notice_list">

		<div class="article">
			<div class="article_header">
				<div class="wrap_narrow">
					<h2
						style="color: #ca3e00; font-weight: bold; text-align: left;">
						서비스 신청서 작성
						</h2>
						<br> <img style="width:100%"
							src="/ibom/resources/images/serviceApply/timeLine_aplly2.png">
				</div>
				<!-- .wrap_narrow -->
			</div>
			<!-- .article_header -->

			<div class="article_body">
				<div class="wrap_narrow" id="result_wrap">
					


		<div class="jt_board_list_wrap"> 
		<form action="service2.do" method="post">
			<table class="jt_board_list apply1">
            <caption>게시판 목록</caption>
            <colgroup>
				<col width="200px" />
				<col width="*" />
			</colgroup>
            <tbody>
				
                <tr>
                    <td class="apply1_title" style="text-align:left;">신청년월</td>
                    <!-- <td class="apply1_content">
                    	<input type="date" id="startDate" name="startDate">~
                    	<input type="date" id="endDate" name="endDate">
                    </td> -->
                    <td>

	                 	<div class="input-field col s2" >
	                        <i class="material-icons prefix">date_range</i>
	                    	<input type="date" name="stDate" id="stDate" class="validate" style="width:20%;" />
	                 		&nbsp;                 
	                 		<strong>~</strong>
	                 		&nbsp;
	                        <i class="material-icons prefix">date_range</i>
	                        <input id="endDate" name="endDate" type="date" class="validate" style="width:20%;">
	                        <p style="color: #ca3e00; font-size:13pt; display:inline;">&nbsp;신청년월을 선택해 주세요.</p>
	                 	</div>
                    </td>
                </tr>
                  
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">돌봄요일</td>
                    <td class="apply1_content">
                    <p style="margin-left:10px;">
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="일" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;일
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="월" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;월
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="화" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;화
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="수" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;수
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="목" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;목
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="금" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;금
	                    <input type="checkbox" name="care_day_check" id="care_day_check" value="토" style="width:15px;height:15px; margin:4px 4px 4px 4px;">&nbsp;토
	                </p>
                    </td>         
                </tr>
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">이용시간</td>
                    <td class="apply1_content">
                    <p style="margin-left:10px;">
						<select name="start_hour" id="start_hour" style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="07">07</option>
                  			<option value="08">08</option>
                  			<option value="09">09</option>
                  			<option value="10">10</option>
                  			<option value="11">11</option>
                  			<option value="12">12</option>
                  			<option value="13">13</option>
                  			<option value="14">14</option>
                  			<option value="15">15</option>
                  			<option value="16">16</option>
                  			<option value="17">17</option>
                  			<option value="18">18</option>
                  			<option value="19">19</option>
                  			<option value="20">20</option>
                  			<option value="21">21</option>
                  		</select>
                  		시
                  		<select name="start_minute" id="start_minute" 
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="30">30</option>
                  		</select>
                  		분&nbsp;&nbsp;&nbsp;&nbsp;~&nbsp;&nbsp;&nbsp;&nbsp;
                  		<select name="end_hour" id="end_hour" 
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="08">08</option>
                  			<option value="09">09</option>
                  			<option value="10">10</option>
                  			<option value="11">11</option>
                  			<option value="12">12</option>
                  			<option value="13">13</option>
                  			<option value="14">14</option>
                  			<option value="15">15</option>
                  			<option value="16">16</option>
                  			<option value="17">17</option>
                  			<option value="18">18</option>
                  			<option value="19">19</option>
                  			<option value="20">20</option>
                  			<option value="21">21</option>
                  			<option value="22">22</option>
                  		</select>
                  		시
                  		<select name="end_minute" id="end_minute" 
                        style="height:28px; border: 1px solid #ccc; font-size:12pt;">    	
                  			<option value="">선택</option>
                  			<option value="00">00</option>
                  			<option value="30">30</option>
                  		</select>
                  		분 까지 사용
                  		</p>
                    </td>     
                </tr>	
                <tr class="js_full_click  jq_click click_a">
                    <td class="apply1_title" style="text-align:left;">서비스유형</td>
                    <td class="apply1_content">
                    	<select name='service_type' id='service_type_selectBox' style='height:28px; border: 1px solid #ccc; font-size:12pt; margin-left:10px;'>
                    		<option value=''>선택</option>
                    		<option value='일반형'>일반형</option>
							<option value='종합형'>종합형</option>
                    	</select>
                    </td>
                </tr>
            </tbody>
        </table> 
        <p style="color: #ca3e00; font-size:13pt;">※  조회버튼 클릭시 아동정보 조회 가능합니다.</p>
        <p style="color: #ca3e00; font-size:13pt;">※  돌봄일정 추가시 서비스 신청할 아이를 선택해 주세요.</p>
        <div class="childList_wrapper" style="margin-top:30px;">
    		<button type="button" id="child_list_btn" class="child_select">조회</button>
  		</div>
  		
		</form>
		
		</div> <!-- .jt_board_list -->
		<div id="childList"></div>	
		<div class="childList_wrapper" style="margin-top:30px;">
    		<button type="button" id="dolbom_add_btn" class="dolbom_add_btn">돌봄일정추가</button>
    		<a class="waves-effect waves-light btn modal-trigger" href="#modal1">면접신청</a>
  		</div>
  		<table class='jt_board_list3' id="service_apply_list">
			<colgroup>
			<col width="2%" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			<col width="*" />
			</colgroup>
			<thead>
				<tr>
				<th class='allcheck_apply'><input type='checkbox' name='allCheck_apply' id='allCheck_apply'></th>
				<th class='apply_date'>신청일 요일</th>
				<th class='apply_family'>대상아동</th>
				<th class='service_type'>서비스유형</th>
				<th class='start_time'>시작시간</th>
				<th class='end_time'>종료시간</th>
				<th class='using_time'>이용시간</th> 
				<th class='support_time'>정부지원시간</th>
				<th class='interview_yn'>면접신청여부</th>
				</tr>
			</thead>
			<tbody id='dolbom_list'>
				
			</tbody>	
		</table>
		<div class="service_next_footer" style="margin-top:30px;">
    		<input type="submit" id="service_next_btn" value="다음" class="service_next">
  		</div>  
				</div> <!-- .wrap_narrow -->
			</div> <!-- .article_body -->
		</div>
		<!-- .article -->

	</div>
	<!-- #main_container_inner --> </main>
	     <!-- Modal Trigger -->
  

  <!-- Modal Structure -->
  <div id="modal1" class="modal">
    <div class="modal-content">
      <div class="popHead">
			<h1>돌보미 면접 신청</h1>
			<!-- <div class="btnClose"><button type="button" onclick="javascript:self.close();" class="btn_close"><span>닫기</span></button></div> -->
	</div>
	<div class="popTitle" style="padding:0 10px;">
	<br>
		<h3 style="margin-left:10px; font-weight:bold; color:#ca3e00; margin-bottom:20px;">돌보미 면접 신청</h4>
	<br>
	<div class="jt_board_list_wrap"> 
		<table class="jt_board_list3" id="cardlist">
            <caption>카드 목록</caption>
            <colgroup>
				<col width="40%" />
				<col width="*" />
			</colgroup>
            <tbody>
                <tr>
                    <td class="interview_users">신청자</td>
                    <td class="interview_usersName">${loginIuser.user_name}</td>
                </tr>
                <tr>
                    <td class="interview_date">면접요청일자</td>
                    <td class="interview_date_hour">
                    	<div class="input-field col s2" >
	                        <i class="material-icons prefix">date_range</i>
	                    	<input type="date" name="interview_date_pop" id="interview_date_pop" class="validate" style="width:50%;" />&nbsp;
	                 		<select name="interview_time_pop" id="interview_time_pop" 
	                 		style="width:60px; height:35px; border: 1.5px solid #ccc; font-size:12pt; border-radius:5px 5px 5px 5px; vertical-align: middle;" > 
	                 			<option value="">선택</option>
	                 			<option value="09">09</option>
	                 			<option value="10">10</option>
	                 			<option value="11">11</option>
	                 			<option value="12">12</option>
	                 			<option value="13">13</option>
	                 			<option value="14">14</option>
	                 			<option value="15">15</option>
	                 			<option value="16">16</option>
	                 			<option value="17">17</option>
	                 			<option value="18">18</option>
	                 			<option value="19">19</option> 			
	                 		</select>
	                 		<span style="vertical-align: middle;">시</span>
	                 	</div>
                    </td>
                </tr>
           </tbody>
        </table>
    </div>
    </div>
    </div>
    <div class="modal-footer">
      <span class="modal-close waves-effect waves-green btn-flat" id="interviewPop_close">닫기</span>
      <button type="button" id="interview_send" class="modal-close interview_send">저장</button>
    </div>
  </div>
  
  
  
	<!-- .main_container -->
	<!-- footer ============================================================== -->
	<c:import url="../../common/footer.jsp" />
</body>
</html>
<%-- <h2>이용자 메인페이지</h2>
<h3>안녕하세요!${loginIuser.user_name}님</h3>

<nav>
   <ul>
      <li><a href="${ pageContext.request.contextPath }/admin/adminMain.do">어드민</a></li>
      
      <li><a  href="${ pageContext.request.contextPath }/dolbomi/dolbomi.do">유져</a></li>
      <li><a href="${ pageContext.request.contextPath }/sendEmail.do?email=eunsoo8606@naver.com">이메일 발송</a></li>
      <li><a>모든</a></li>
   </ul>
</nav>
<c:if test="${loginIuser != null}">
<form action="${ pageContext.request.contextPath }/logout" method="post">
	<input type="submit" value="로그아웃">
</form>
</c:if> --%>
