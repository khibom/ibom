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
	/* var checkData = /[1-9]{1,3}$/;
	
	var bodytemp1 = $(".bodytemp1").val();
	var bodytemp2 = $(".bodytemp2").val();
	var bodytemp3 = $(".bodytemp3").val();
	var bodytemp4 = $(".bodytemp4").val();
	var dosage1 = $(".dosage1").val();
	var dosage2 = $(".dosage2").val();
	var dosage3 = $(".dosage3").val();
	var dosage4 = $(".dosage4").val();
	var ven_temp1 = $(".ven_temp1").val();
	var ven_temp2 = $(".ven_temp2").val();
	var ven_temp3 = $(".ven_temp3").val();
	var ven_temp4 = $(".ven_temp4").val();
	var ven_humidity1 = $(".ven_humidity1").val();
	var ven_humidity2 = $(".ven_humidity2").val();
	var ven_humidity3 = $(".ven_humidity3").val();
	var ven_humidity4 = $(".ven_humidity4").val();
	 
	if(!checkData.test(bodytemp1)){
		alert("숫자만입력하세요.")
		$(".bodytemp1").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(bodytemp2)){
		alert("숫자만입력하세요.")
		$(".bodytemp2").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(bodytemp3)){
		alert("숫자만입력하세요.")
		$(".bodytemp3").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(bodytemp4)){
		alert("숫자만입력하세요.")
		$(".bodytemp4").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(dosage1)){
		alert("숫자만입력하세요.")
		$(".dosage1").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(dosage2)){
		alert("숫자만입력하세요.")
		$(".dosage2").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(dosage3)){
		alert("숫자만입력하세요.")
		$(".dosage3").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	if(!checkData.test(dosage4)){
		alert("숫자만입력하세요.")
		$(".dosage4").focus();
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
	
	if(!checkData.test(ven_temp1)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_temp1").focus();
		return false;
	}
	if(!checkData.test(ven_temp2)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_temp2").focus();
		return false;
	}
	if(!checkData.test(ven_temp3)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_temp3").focus();
		return false;
	}
	if(!checkData.test(ven_temp4)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_temp4").focus();
		return false;
	}
	
	if(!checkData.test(ven_humidity1)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_humidity1").focus();
			return false;
	}
 if(!checkData.test(ven_humidity2)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_humidity2").focus();
			return false;
	} 
 if(!checkData.test(ven_humidity3)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_humidity3").focus();
			return false;
	} 
 if(!checkData.test(ven_humidity4)){
		alert("숫자만입력하세요.")
		event.stopPropagation();
		event.preventDefault();
		$(".ven_humidity4").focus();
			return false;
	}  */

	if(confirm("지금 전송하시면 수정 하실수 없습니다. 수정하시겠습니까?")){
		return true;
	
	}else{
		event.stopPropagation();
		event.preventDefault();
		return false;
	}
}
function back(event){
	javascript:history.back();
	event.stopPropagation();
	event.preventDefault();
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
                    <h1 data-font="secondary" class="article_title">종일제 활동일지 페이지</h1>
                </div><!-- .wrap_narrow -->
            </div><!-- .article_header -->

            <div class="article_body">
                <div class="wrap_narrow" id="result_wrap">
                    
	<form action="${pageContext.request.contextPath}/dolbomi/inAlldayAct.do" onsubmit="return fromDataCheck(event);" method="post" >		
	<ul style=" display:inline-block; postion:relative; width:100%;">
		<li style="float:left; width:49%; margin-left:5px; color:rgb(243, 114, 51);"><h5>종일제 활동일지</h5></li>
	</ul>				
	<div class="jt_board_list_wrap">
	<input type="hidden" name="service1_no" value="${ap1.service1_no}">
	<input type="hidden" name="service2_no" value="${ap2.service2_no}">
	<input type="hidden" name="dol_id" value="${loginDolbomi.dol_id}">
	<input type="hidden" name="family_code" value="${uFm.family_code}">
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
          		<tr id="dosageTime">
                   <th >시간</th>
					<td scope="col" class="type">
					<select name="dosage_time" class="jt_selectric search_data"id="id-lang"style="width:60px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     			</select>
                     </td>
					<td scope="col" class="type">
					<select name="dosage_time" class="jt_selectric search_data"id="id-lang"style="width:60px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     			</select>
                     </td>
                     <td scope="col" class="type">
					<select name="dosage_time" class="jt_selectric search_data"id="id-lang"style="width:60px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     			</select>
                     </td>
                     <td scope="col" class="type">
					<select name="dosage_time" class="jt_selectric search_data"id="id-lang"style="width:60px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
					</tr>
					<tr id="dosage">
					<th >용량</th>
					<td scope="col" class="type"><input type="text"class="dosage1"style="width:30%;" name="dosage"></td>
					<td scope="col" class="type"><input type="text"class="dosage2"style="width:30%;" name="dosage"></td>
					<td scope="col" class="type"><input type="text"class="dosage3"style="width:30%;" name="dosage"></td>
					<td scope="col" class="type"><input type="text"class="dosage4"style="width:30%;" name="dosage"></td>
					</tr>
					<tr>
						<th>증상</th>
						<td colspan="4" scope="col" class="type"><textarea name="symotom" rows="2" style="border:none; height:80px;"></textarea></td>
					</tr>
					<tr>
						<th>복용방법</th>
						<td colspan="4" scope="col" class="type"><textarea name="dos_method" rows="2" style="border:none;height:80px;"></textarea></td>
					</tr>
					<tr>
						<th>보관상태</th>
						<td colspan="4" scope="col" class="type"><textarea name="stg_condition" rows="2" style="border:none;height:80px;"></textarea></td>
					</tr>
					<tr>
						<th>특이사항</th>
						<td colspan="4" scope="col" class="type"><textarea name="etc" rows="2" style="border:none; height:80px;"></textarea></td>
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
                    <th scope="col" class="type">체온측정시간</th>
                   	<td scope="col" class="type">
					<select name="bodytemp_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="bodytemp_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="bodytemp_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="bodytemp_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                </tr>
                <tr>
                    <th scope="col" class="type">체온<font color="orange">*</font></th>
                   	<td class="type"><input type="text"class="bodytemp1" name="bodytemp" style="width:25%;" >℃</td>
                   	<td class="type"><input type="text"class="bodytemp2" name="bodytemp" style="width:25%;">℃</td>
                   	<td class="type"><input type="text"class="bodytemp3" name="bodytemp" style="width:25%;">℃</td>
                   	<td class="type"><input type="text"class="bodytemp4" name="bodytemp" style="width:25%;">℃</td>
                    
                </tr>
                 <tr>
                    <th scope="col" class="type">건강및심리상태<font color="orange">*</font></th>
                    <td class="type" colspan="4"><textarea name="healhandpsy" style="border:none; height:100px;" required></textarea></td>
                </tr>
           </tbody>
        </table>
          		</div>
          		<div style="width:100%; height:100px; position:relative;"></div>
          		<div class="jt_board_list_wrap">
          		<table class="jt_board_list">
            <tbody>
				<tr>
                    <th scope="col" class="type">배변내용<font color="orange">*</font></th>
                   	<td class="type"><textarea name="poop_cnt" style="border:none; height:100px;" required></textarea></td>
                   	<th scope="col" class="type">수유내용<font color="orange">*</font></th>
                   	<td class="type"><textarea name="rice_cnt" style="border:none; height:100px;" required></textarea></td>
                </tr>
                <tr>
                    <th scope="col" class="type">수면내용<font color="orange">*</font></th>
                   	<td class="type"><textarea name="sleep_cnt" style="border:none; height:100px;" required></textarea></td>
                   	<th scope="col" class="type">활동내용<font color="orange">*</font></th>
                   	<td class="type"><textarea name="ac_cnt" style="border:none; height:100px;" required></textarea></td>
                </tr>
                 <tr>
                   <tr>
                    <th scope="col" class="type">관찰내용</th>
                   	<td class="type"><textarea name="observe_cnt" style="border:none; height:100px;" ></textarea></td>
                   	<th scope="col" class="type">전달사항</th>
                   	<td class="type"><textarea name="pass_cnt" style="border:none; height:100px;" ></textarea></td>
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
                    <td class="type" colspan="5"><textarea name="ventiration" style="border:none; height:100px;"></textarea></td>
                </tr>
           </tbody>
        </table>
          		</div>
         
          <div class="jt_board_list_wrap" style="margin-top:3%;">
		<table class="jt_board_list">
            <thead>
                <tr>
                    <th scope="col" class="type">시간</th>
                    <td scope="col" class="type">
					<select name="ven_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="ven_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="ven_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                     <td scope="col" class="type">
					<select name="ven_time" class="jt_selectric search_data"id="id-lang"style="width:80px;height:49px;margin:0 49px 0 18px; line-height:49px;">
                    			<option disabled selected>--시간--</option>
                                <option value="08">08시</option>
                                <option value="09">09시</option>
                                <option value="10">10시</option>
                                <option value="11">11시</option>
                                <option value="12">12시</option>
                                <option value="13">13시</option>
                                <option value="14">14시</option>
                                <option value="15">15시</option>
                                <option value="16">16시</option>
                                <option value="17">17시</option>
                                <option value="18">18시</option>
                                <option value="19">19시</option>
                                <option value="20">20시</option>
                     	</select>
                     </td>
                </tr>
            </thead>
            <tbody>
				<tr class="js_full_click  jq_click click_a">
				  <th scope="col" class="type">온도</th>
                  <td class="type"><input type="text" name="ven_temp"class="ven_temp1" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_temp"class="ven_temp2" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_temp"class="ven_temp3" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_temp"class="ven_temp4" style="width:30%;">℃</td>
                </tr>
                <tr class="js_full_click  jq_click click_a">
				  <th scope="col" class="type">습도</th>
                  <td class="type"><input type="text" name="ven_humidity"class="ven_humidity" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_humidity"class="ven_humidity" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_humidity"class="ven_humidity" style="width:30%;">℃</td>
                  <td class="type"><input type="text" name="ven_humidity"class="ven_humidity" style="width:30%;">℃</td>
                </tr>       
            </tbody>
        </table>
        </div>
          <ul style=" display:inline-block; postion:relative; width:100%;">
			<li style="float:left; width:49%; margin-left:5px; margin-top:5px;">
				<p style=" color:rgb(243, 114, 51); font-size:10pt;">"*"항목은 필수 입력 항목입니다.<br/>
					체온 , 실내환기, 실내환경, 습도 항목은 최소 1 이상 입력해야 합니다.</p>
			</li>
			<li style="float:right;margin-top:5px;">
				 <button onclick="back();" class="btn waves-effect orange darken-3">목록</button>
      			 <input type="submit"value="제출" class="btn waves-effect orange darken-3" >		
			</li>
		 </ul>
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