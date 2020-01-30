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

<!-- jQuery -->
    <script src="https://code.jquery.com/jquery.min.js"></script>
<!-- google charts -->
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
var length = 0;
var total = [];
var iUser = [];
var dolbomi = [];
var month = [];
$(function(){
	var date = new Date().getFullYear();
	$.ajax({
		url : "${pageContext.request.contextPath}/admin/dolAndUser.do",
		data : {date : date},
		type : "get",
		dataType: "json",
		success : function(data){
			
			var jsonStr = JSON.stringify(data);
			var json = JSON.parse(jsonStr);
			length = json.list.length;
			
			 for(var i in json.list){
				 	total.push(json.list[i].total);
		            iUser.push(json.list[i].user);
		            dolbomi.push(json.list[i].dolbom);
		            month.push(json.list[0].month);
		            
		          }
			 
			 google.charts.load('current', {'packages':['line']});
			 google.charts.setOnLoadCallback(drawChart);
	    
			},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
			}
		
		});
	
	
	
	
});
function drawChart() {

var data = new google.visualization.DataTable();
data.addColumn('string', '');
data.addColumn('number', '이용자');
data.addColumn('number', '돌보미');
data.addColumn('number', '합계');
	var tot = 0;
    var bom = 0;
    var use = 0;
	var date = new Date().getFullYear();
	var b = 1;
for(var i = 0; i < 12; i++){ //디비에서 조회해온값 담아넣기
	
	if(total[i] == "undefined" || total[i] == null || total[i] == ""){
		tot = 0;
		bom = 0;
		use = 0;
	}else{
	tot = total[i];
	bom = dolbomi[i];
	use = iUser[i];
	}
	if(b >= 10){
	dataRow = ["" + b++ + "월",use ,bom, tot];
	}else{
	dataRow = ["0" + b++ + "월",use ,bom, tot];
	}
		
	data.addRow(dataRow);

}

var options = {
  chart: {
    title: date + '년 아이돌봄 가입 현황'
  },
  height: 300,
  width: 1100,
  axes: {
    x: {
      0: {side: 'top'}
    }
  },

};

var chart = new google.charts.Line(document.getElementById('line_top_x'));

chart.draw(data, google.charts.Line.convertOptions(options));


}
</script>
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	
	$.ajax({
		url : "${pageContext.request.contextPath}/admin/noticeTop5.do",
		type : "get",
		dataType: "json",
		success : function(data){
			
			var jsonStr = JSON.stringify(data);
			var json = JSON.parse(jsonStr);
			
			 for(var i in json.list){
				 	$("#noticeTop5").append("<tr id='" + json.list[i].notice_no + "'onclick='detailNotice(this.id);'>"
				 		+ "<td>" + json.list[i].notice_no + "</td>"
				 		+ "<td>" + decodeURIComponent(json.list[i].title).replace(/\+/gi, " ") + "</td>"
				 		+ "<td>" + json.list[i].date + "</td></tr>");
		            
		          }
			},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
			}
		
		});
	
	$.ajax({
		url : "${pageContext.request.contextPath}/admin/questionsTop5.do",
		type : "get",
		dataType: "json",
		success : function(data){
			
			var jsonStr = JSON.stringify(data);
			var json = JSON.parse(jsonStr);
			
			 for(var i in json.list){
				 	$("#questionsTop5").append("<tr id='" + json.list[i].no + "'onclick='detailQuestions(this.id);'>"
				 		+ "<td>" + json.list[i].no + "</td>"
				 		+ "<td>" + decodeURIComponent(json.list[i].title).replace(/\+/gi, " ") + "</td>"
				 		+ "<td>" + json.list[i].date + "</td></tr>");
		            
		          }
			},
		error : function(jqXHR, textStatus, errorThrown){
			console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
			}
		
		});
	
});
function detailNotice(event){
	
	location.href="${pageContext.request.contextPath}/admin/adminnoticedetail.do?anum=" + event;
}
function detailQuestions(event){
	
	location.href="${pageContext.request.contextPath}/admin/qnaadmindetail.do?anum=" + event;
}
</script>
</head>
<body>

    <div id="wrapper">

<!-- =================================== -->
<!--  nav 시작 -->
<c:import url="adminHeader.jsp"/> 
<!-- nav 끝  -->      

    <!--===========================================================================-->
    <!-- 본문 -->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">이용자 월별 가입현황</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <!--===========================================================================-->
        <!-- 본문 1.차트 -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
        
                    <div class="panel-heading">
                        <i class="fa fa-bar-chart-o fa-fw"></i> 이용자 통계
                        
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body">
			 		<div id="line_top_x" ></div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
                </div>
                <!-- =========================================================================================== -->


                <!-- =========================================================================================== -->
               
                <!-- =============================================================================================== -->
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            1:1문의 Top5
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="questionsTop5">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                      
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- =============================================================================================== -->
                <div class="col-lg-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            공지사항 Top5
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover" id="noticeTop5">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- =============================================================================================== -->
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                          &nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                         <section class="finedust-live">
                            <h3 class="hd-element">실시간 대기환경정보</h3>
                            <div class="finedust-time-wrap">
                                <div id="air_msrdate" class="finedust-time">${dataTime}(${week})</div> <a href="http://cleanair.seoul.go.kr/main.htm" target="_blank" title="새창" class="cleanair">대기환경정보 바로가기</a> </div>
                                <div class="finedust-cont">

                                    <div class="finedust-wrap">
                                        <div id="air_pm10" class="finedust-info air_green">
                                            <div class="finedust-title two">미세먼지<br>(PM-10)</div>
                                            <ul>
                                                <li class="air-txt-two"><span>${pm10Value}</span>㎍/㎥</li>
                                                <c:if test="${pm10Value <= 30}">
                                                <li class="air-txt-one">좋음</li>
                                                </c:if>
                                                <c:if test="${pm10Value >= 31 && pm10Value <= 80}">
                                                <li class="air-txt-one">보통</li>
                                                </c:if>
                                                 <c:if test="${pm10Value >= 81 && pm10Value <= 150}">
                                                <li class="air-txt-one">나쁨</li>
                                                </c:if>
                                                <c:if test="${pm10Value > 150}">
                                                <li class="air-txt-one">매우나쁨</li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="finedust-wrap">
                                        <div id="air_pm25" class="finedust-info air_green">
                                            <div class="finedust-title two">초미세먼지<br>(PM-2.5)</div>
                                            <ul>
                                                <li class="air-txt-two"><span>${pm25Value}</span>㎍/㎥</li>
                                                <c:if test="${pm25Value <= 15}">
                                                <li class="air-txt-one">좋음</li>
                                                </c:if>
                                                <c:if test="${pm25Value >= 16 && pm25Value <= 35}">
                                                <li class="air-txt-one">보통</li>
                                                </c:if>
                                                 <c:if test="${pm25Value >= 36 && pm25Value <= 75}">
                                                <li class="air-txt-one">나쁨</li>
                                                </c:if>
                                                <c:if test="${pm25Value > 76}">
                                                <li class="air-txt-one">매우나쁨</li>
                                                </c:if>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="finedust-wrap">
                                    <c:if test="${o3Value <= 0.03}">
                                        <div id="air_cai" class="finedust-info air_green">
                                            <div class="finedust-title two">오존(O<sub>3</sub>)</div>
                                            <ul>
                                                <li class="air-txt-two o3"><span>${ o3Value}</span>ppm</li>
                                                <li class="air-txt-one">좋음</li>
                                            </ul>
                                        </div>
                                         </c:if>
                                         <c:if test="${o3Value >= 0.031 && o3Value <= 0.09}">
                                         <div id="air_cai" class="finedust-info air_gray">
                                            <div class="finedust-title two">오존(O<sub>3</sub>)</div>
                                            <ul>
                                                <li class="air-txt-one">보통</li>
                                            </ul>
                                        </div>
                                         </c:if>
                                         <c:if test="${o3Value >= 0.091 && o3Value <= 0.15}">
                                          <div id="air_cai" class="finedust-info air_blue">
                                            <div class="finedust-title two">오존(O<sub>3</sub>)</div>
                                            <ul>
                                                <li class="air-txt-one">나쁨</li>
                                                 <li class="air-txt-one">보통</li>
                                            </ul>
                                        </div>
                                        </c:if>
                                         <c:if test="${o3Value > 0.151}">
                                         <div id="air_cai" class="finedust-info air_red">
                                            <div class="finedust-title two">오존(O<sub>3</sub>)</div>
                                            <ul>
                                                <li class="air-txt-one">매우나쁨</li>
                                               </ul>
                                        </div>
                                        </c:if>
                                    </div>
                                </div>
                            </section>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- =============================================================================================== -->
            </div>
            <!-- /.row -->
       
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