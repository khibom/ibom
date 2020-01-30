<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--Import Google Icon Font-->
 <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script src="/ibom/resources/materialize/js/materialize.js"></script> 
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
<link rel="stylesheet" href="/ibom/resources/materialize/css/materialize10.css" />
</head>
<body style="overflow-y:hidden">
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
	                    	<input type="date" name="stDate" id="stDate" class="validate" style="width:50%;" />&nbsp;
	                 		<select name="interview_time" id="interview_time" 
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
    <div class="popfooter" style="padding:0 10px; margin-top:30px;">
    	<button class="interviewPop_close" type="button" onclick="popClose();">닫기</button>
    	<button type="button" id="interview_send" class="interview_send">제출</button>
    </div>
    <script type="text/javascript">
	    function popClose(){
	    	window.close();
	    };
    </script>
</body>
</html>