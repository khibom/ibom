<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibom admin header</title>
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	var date = new Date();
	var day = date.getDate();
	
	 $.ajax({
			url : "${pageContext.request.contextPath}/admin/checkSalaryDay.do",
			data : {day : day},
			type : "get",
			success : function(data){
				if(data == "ok"){
					
				$("#alram").append("<a href='${pageContext.request.contextPath}/admin/moveSalary.do'>"
		            + "<div>"
		            + "<li><i class='fa fa-comment fa-fw'></i>오늘은 급여일 입니다!</li>"
		            + "</div>"
		            + "</a>");
				
				$("#counts").append("<span class='count bg-danger'>1</span>"
                       + "<i class='fa fa-caret-down'></i>");
				
				}else{
					$("#alram").append("<a href='#'>"
				            + "<div>"
				            + "<li><i class='fa fa-comment fa-fw'></i>메세지가 없습니다.</li>"
				            + "</div>"
				            + "</a>");	
					}
				},
			error : function(jqXHR, textStatus, errorThrown){
				console.log("error : "+jqXHR+", "+textStatus+", "+errorThrown);
			}
			
		});
});
</script>
</head>
<body>
 <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0;">
            <!-- 로고부분 --==================================================================-->
            <div class="navbar-header" style=" background-color: #272c33; width:250px; border:none;">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only" >Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="color: #272c33; cursor: pointer;" href="${pageContext.request.contextPath}/loginsuccess.do"><img src="/ibom/resources/images/layout/logo.png" alt="Logo" style="width:100px;"></a>
            </div>
            <!-- /.navbar-header -->

            <!-- 상단알림 아이콘 ===============================================================--->
            <ul class="nav navbar-top-links navbar-right">

                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#" id="counts" style="color: #272c33;  font-size: 16px;">
                       <i class='fa fa-bell fa-fw'></i>
                    </a>
                    <ul class="dropdown-menu dropdown-alerts">
                       <li id="alram">

                       </li>
                    </ul>
                    <!-- /.dropdown-alerts -->
                </li>
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                   	 안녕하세요!${loginAdmin.emp_name}님
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> 내정보보기</a>
                        </li>
                        <li class="divider"></li>
                        <li>
                        <c:if test="${loginAdmin != null}">
							<a href="${ pageContext.request.contextPath }/logout"><i class="fa fa-sign-out fa-fw"></i><span>로그아웃</span></a>
						</c:if>
                       
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <!--================================================================================-->
                <!-- 메뉴 시작 --============================================================-->
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                       <!--================================================================================-->
                       <!-- 검색 시작 -->
                       <li class="sidebar-search">
                        <!-- <div class="input-group custom-search-form">
                            <input type="text" class="form-control" placeholder="이름 or 생년월일">
                            <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                        /input-group                       
                        <div class="panel-body" style="background-color: #fff; border-radius: 4px;">
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>이름</th>
                                            <th>생년월일</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>김엄마</td>
                                            <td>Mark</td>
                                        </tr>
                                        <tr>
                                            <td>이엄마</td>
                                            <td>Jacob</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            /.table-responsive
                        </div> -->
                    </li>
                    <!--================================================================================-->
                    <c:url var="alldayServlist" value="/admin/alldaySerList.do">
						<c:param name="currentPage" value="1"/>
					</c:url>
                    <c:url var="interlist" value="/admin/interList.do">
						<c:param name="page" value="1"/>
					</c:url>
                    <!--1. 이용자 관리 -->
                    <li class="a-gray">
                        <a href="#" class="btn-github"><i class="fa fa-user fa-fw"></i> 이용자관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-user fa-fw"></i>&nbsp;이용자관리</a>
                            </li>
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-list-alt fa-fw"></i>&nbsp;서비스관리</a>
                            </li>
                            <li>
                                <a href="${alldayServlist }"><i class="fa fa-share-square-o fa-fw"></i>&nbsp;종일제대기관리</a>
                            </li>
                            <li>
                                <a href="${interlist}"><i class="fa fa-eye fa-fw"></i>&nbsp;돌보미면접신청관리</a>
                            </li>
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-list-ol fa-fw"></i>&nbsp;회원등급설정</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/moveDepolist.do"><i class="fa fa-money fa-fw"></i>&nbsp;예치금관리</a>
                            </li>
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-cut fa-fw"></i>&nbsp;탈퇴회원관리</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <!-- =================================================================================-->
                    <!--2. 돌봄이 관리 -->
                    <li class="a-gray">
                        <a href="#"><i class="fa fa-users fa-fw"></i> 돌보미관리<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${pageContext.request.contextPath }/admin/dollist.do"><i class="fa fa-user fa-fw"></i>&nbsp;돌보미관리</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/moveAcloglist.do"><i class="fa fa-edit fa-fw"></i>&nbsp;돌보미일지관리</a>
                            </li>
                            <li>
                             <c:url var="adminAssign" value="/admin/dolAssignList.do">
                            	<c:param name="currentPage" value="1"/>
                            </c:url>
                                <a href="${adminAssign}"><i class="fa fa-puzzle-piece fa-fw"></i>&nbsp;돌보미배치관리</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/dolGradeList.do"><i class="fa fa-list-ol fa-fw"></i>&nbsp;돌보미등급설정</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/moveSalary.do"><i class="fa fa-won fa-fw"></i>&nbsp;급여관리</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <!-- =================================================================================-->
                    <!--3. 헬프데스크 -->
                    <li class="a-gray">
                        <a href="#"><i class="fa fa-exclamation-circle fa-fw"></i> 헬프데스크<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="${pageContext.request.contextPath}/moveadmincomplaint.do"><i class="fa  fa-pencil fa-fw"></i>&nbsp;고객전화서면민원</a>
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/moveadminquestions.do"><i class="fa fa-question-circle fa-fw"></i>&nbsp;1:1문의관리</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <!-- =================================================================================-->
                    <!-- 4.공지사항 관리-->
                    <li class="a-gray">
                        <a href="${pageContext.request.contextPath}/moveadminnotice.do"><i class="fa fa-bullhorn fa-fw"></i> 공지사항관리</a>
                    </li>
                    <!-- =================================================================================-->
                    <!--5. 통계 -->
                    <li class="a-gray">
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 통계<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-users fa-fw"></i>&nbsp;회원수</a>
                            </li>
                            <li>
                                <a href="adminNoPage.do"><i class="fa fa-cut fa-fw"></i>&nbsp;탈퇴사유</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <!-- =================================================================================-->
                    <!-- 6.약관 관리-->
                    <li class="a-gray">
                        <a href="adminNoPage.do"><i class="fa fa-cog fa-fw"></i> 약관관리</a>
                    </li>
                  
                 
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>
</body>
</html>