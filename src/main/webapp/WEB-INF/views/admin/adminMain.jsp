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

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                <h1 class="page-header">Dashboard</h1>
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
                        <div id="morris-area-chart"></div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
                <!-- =========================================================================================== -->


                <!-- =========================================================================================== -->
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            서비스 신청목록 Top5
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>순번</th>
                                            <th>제목</th>
                                            <th>신청자</th>
                                            <th>신청일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                            <td>@mdo</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                            <td>@fat</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                            <td>@twitter</td>
                                        </tr>
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
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            1:1문의 Top5
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                        </tr>
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
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            공지사항 Top5
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>제목</th>
                                            <th>작성일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Mark</td>
                                            <td>Otto</td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Jacob</td>
                                            <td>Thornton</td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Larry</td>
                                            <td>the Bird</td>
                                        </tr>
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
                            Hover Rows
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">

                         <section class="finedust-live">
                            <h3 class="hd-element">실시간 대기환경정보</h3>
                            <div class="finedust-time-wrap">
                                <div id="air_msrdate" class="finedust-time">${dataTime}(목)</div> <a href="http://cleanair.seoul.go.kr/main.htm" target="_blank" title="새창" class="cleanair">대기환경정보 바로가기</a> </div>
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
                                        <div id="air_cai" class="finedust-info air_blue">
                                            <div class="finedust-title">오존(O<sub>3</sub>)</div>
                                            <ul>
                                                <li class="air-txt-two o3"><span>${ o3Value}</span>ppm</li>
                                                <c:if test="${o3Value <= 0.03}">
                                                <li class="air-txt-one">좋음</li>
                                                </c:if>
                                                <c:if test="${o3Value >= 0.031 && o3Value <= 0.09}">
                                                <li class="air-txt-one">보통</li>
                                                </c:if>
                                                 <c:if test="${o3Value >= 0.091 && o3Value <= 0.15}">
                                                <li class="air-txt-one">나쁨</li>
                                                </c:if>
                                                <c:if test="${o3Value > 0.151}">
                                                <li class="air-txt-one">매우나쁨</li>
                                                </c:if>
                                            </ul>

                                        </div>
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