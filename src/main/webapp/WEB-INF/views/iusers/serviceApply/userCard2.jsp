<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(function(){
	$.ajax({
		var userid = "${loginIuser.user_id}";,
		url : "cardChoose.do",
		type : "post",
		dataType : {userid_id : userid},
		success : function(data){
			// data object를 string으로 바꿈
			var jsonStr = JSON.stringify(data);
			// 문자열을 json 객체로 바꿈
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				<%-- <% if(loginMember != null) { %> --%>
				<c:if test="${ !empty loginMember }">
				values += "<tr><td>" + json.list[i].bnum + "</td><td><a href='/first/bdetail?bnum=" + json.list[i].bnum + "&page=1'>" +	// %= 사용 불가능 하기 때문에 끊어서 이어준다.
					decodeURIComponent(json.list[i].btitle).replace(/\+/gi, " ")
					+ "</a></td><td>" + json.list[i].rcount + "</td></tr>";
				</c:if>
				<%-- <% } else { %> --%>	
				<c:if test="${empty sessionScope.loginMember}">
				values += "<tr><td>" + json.list[i].bnum + "</td><td>" + 
				decodeURIComponent(json.list[i].btitle).replace(/\+/gi, " ")
				+ "</td><td>" + json.list[i].rcount + "</td></tr>";
				<%-- <% } %> --%>
				</c:if>
			}
			
			// body의 table에 출력 적용
			$("#toplist").html($("#toplist").html() + values);
			
		},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	});	// btop3
	// 회원의 카드 목록 조회 서비스
	
});
</script>
<!-- CSS -->
<link rel="stylesheet" href="/ibom/resources/css/styles.css" />
</head>
<body>
	<div class="popHead">
			<h1>카드 조회</h1>
			<!-- <div class="btnClose"><button type="button" onclick="javascript:self.close();" class="btn_close"><span>닫기</span></button></div> -->
	</div>
	<div class="popTitle">
	<br>
		<h4 style="margin-left:10px; font-weight:bold; color:#ca3e00">카드 조회</h4>
	<br>
		<table class="jt_board_list">
            <caption>카드 목록</caption>
            <thead>
                <tr>
                    <th scope="col" class="choose">선택</th>
                    <th scope="col" class="cardType">카드종류</th>
                    <th scope="col" class="cardName">카드사명</th>
                    <th scope="col" class="cardNum">카드번호</th>
                    <th scope="col" class="cardNum">발급일자</th>
                </tr>
           		<tr>
           			<td>${ loginIuser.user_name }</td>
           			<td>ss</td>
           			<td>ss</td>
           			<td>ss</td>
           			<td>ss</td>
           		</tr>
        </table>
</body>
</html>