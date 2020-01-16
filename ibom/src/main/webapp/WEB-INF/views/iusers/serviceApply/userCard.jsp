<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--  js -->
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var userid = "${loginIuser.user_id}";
	//alert(userid);
	$.ajax({
		url : "serviceCardList.do",
		type : "post",
		data : {user_id : userid},
		dataType : "json",
		success : function(data){
			// data object를 string으로 바꿈
			var jsonStr = JSON.stringify(data);
			// 문자열을 json 객체로 바꿈
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list){
				console.log(json.list[i].card_number);
				values += "<tr><td class='choose_cont'>" + "<input type='checkbox' name='card_CheckBox' id='card_CheckBox'>"   
							+ "</td><td class='cardType_cont'>" + decodeURIComponent(json.list[i].card_type).replace(/\+/gi, " ") 
							+ "</td><td class='cardName_cont'>" + decodeURIComponent(json.list[i].card_company_name).replace(/\+/gi, " ") 
							+ "</td><td class='cardNum_cont'>" + json.list[i].card_number 
							+ "</td><td class='cardDate_cont'>" + json.list[i].card_issuance_date + "</td></tr>";
			}
			console.log("values" + values);
			// body의 table에 출력 적용
			$("#cardlist").html($("#cardlist").html() + values);
			
		},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : " + jqXHR + ", " + textStatus + ", " + errorThrown);
		}
	});	// serviceCardList.do
	// 회원의 카드 목록 조회 서비스	
	
	
});
</script>
<script type="text/javascript">
$(function(){
	$("#cardSelectBtn").click(function(){
		
		var rowData = new Array(); 
		var tdArr = new Array();
		var checkbox = $("input[name=card_CheckBox]:checked");
		
		// 체크된 체크박스 값을 가져온다
		checkbox.each(function(i){
			var tr = checkbox.parent().parent().eq(i);
			var td = tr.children();
			
			//console.log("checkbox 값 : " + tr.text());
			//체크된 row의 모든 값을 배열에 담는다.
			rowData.push(tr.text());
			
			// td.eq(0)은 체크박스 이므로 td.eq(1)의 값부터 가져온다.
			var cardType = td.eq(1).text();
			var cardCompony = td.eq(2).text();
			var cardNum = td.eq(3).text();
			var cardDate = td.eq(4).text();
			var cardTotal = cardType + " " + cardCompony + " " + cardNum;
			//가져온 값을 배열에 담는다.
			tdArr.push(cardType);
			tdArr.push(cardCompony);
			tdArr.push(cardNum);
			tdArr.push(cardDate);
			//받아온 값 확인
			console.log("cardType = " + cardType);
			console.log("cardCompony = " + cardCompony);
			console.log("cardNum = " + cardNum);
			console.log("cardDate = " + cardDate);
			console.log("cardInfo : " + cardInfo);
		});
		 var cardInfo = tdArr[0] + " " + tdArr[1] + " " + tdArr[2];
		 //alert("cardInfo 값 확인 : " + cardInfo);
		 window.opener.document.getElementById("cardInfo").innerHTML = cardInfo;
		 window.opener.document.getElementById("apply1_card").value = cardInfo;
         window.self.close();
		/* $("#cardlist").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
		$("#cardlist").html(tdArr);	 */
	});
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
	<div class="popTitle" style="padding:0 10px;">
	<br>
		<h4 style="margin-left:10px; font-weight:bold; color:#ca3e00">카드 조회</h4>
	<br>
	<div class="jt_board_list_wrap"> 
		<table class="jt_board_list3" id="cardlist">
            <caption>카드 목록</caption>
            <colgroup>
				<col width="10%" />
				<col width="15%" />
				<col width="20%" />
				<col width="*" />
				<col width="20%" />
			</colgroup>
            <tbody>
                <tr>
                    <th class="choose">선택</td>
                    <th class="cardType">카드종류</td>
                    <th class="cardName">카드사명</td>
                    <th class="cardNum">카드번호</td>
                    <th class="cardDate">발급일자</td>
                </tr>
           </tbody>
        </table>
    </div>
    </div>
    <div class="popfooter" style="padding:0 10px; margin-top:30px;">
    	<button type="button" id="cardSelectBtn" class="cardPop_save">저장</button>
    </div>
    <div class="popTerms_wrap" style="padding:0 10px;">
	    <div class="popTerms" style="margin-top:30px; padding:0 10px;">
	    	<p style="margin-top:10px; ">※ 발급 신청 후 정보가 확인되기까지 업무일 기준 2~4일 정도 소요될 수 있음</p>
	    	<p style="margin-top:5px; ">※ '즉시발급' 카드는 업무일 기준 2일 후부터 정상 결제 가능</p>
	    	<p style="margin-top:5px; margin-bottom:10px; ">※ 카드 수령 후 카드사 콜센터 또는 홈페이지에서 사용등록 필요</p>
	    	
	    </div>
    </div>
    <div class="popbottom">
    	<div class="popbottom_wrap">
    		<button class="cardPop_close" type="button" onclick="popClose();">닫기</button>
    	</div>
    </div>
    <script type="text/javascript">
	    function popClose(){
	    	window.close();
	    };
    </script>

</body>
</html>