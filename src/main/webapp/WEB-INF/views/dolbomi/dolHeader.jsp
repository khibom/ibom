<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<header id="header">
	<div class="header_wrap">
		<div id="logo">
			<a href="${pageContext.request.contextPath}/dolMain.do"><img src="/ibom/resources/images/layout/logo.png"
				alt="우리아이봄" />
			</a>
		</div>
		<!-- #logo -->

		<nav class="main_menu_container">
			<ul id="menu" class="main_menu">
				<li class="menu_item_has_children "><a href="/Introduction"
					data-font="secondary"><span>처음 오셨나요?</span></a>
					<ul class="menu_child_group">
						<li class=""><a href="/Introduction/Friend"><span>아이돌봄서비스
									종류</span></a></li>
						<li class=""><a href="/Introduction/Teacher"><span>서비스신청방법</span></a></li>
						<li class=""><a href="/Introduction"><span>서비스등급모의계산</span></a></li>
						<li class=""><a href="/Introduction/Friend"><span>돌보미지원
									방법및 선발</span></a></li>
						<li class=""><a href="/Introduction/Teacher"><span>돌보미활동안내</span></a></li>
					</ul>
					<!-- .menu_child_group --></li>
				<!-- ======================================================================================-->
				<!-- 돌보미 정보 -->
				<li class="menu_item_has_children "><a href="/Contents/Series"
					data-font="secondary"><span>마이페이지</span></a>
					<ul class="menu_child_group">
						<li class=""><a href="/Contents/Series"><span>돌보미정보변경</span></a></li>
					</ul>
					<!-- .menu_child_group --></li>
				<!-- ======================================================================================-->
				<!-- ======================================================================================-->
				<c:url var="interdol" value="/dolbomi/interList.do">
					<c:param name="dol_id" value="${loginDolbomi.dol_id}"/>
				</c:url>
				<c:url var="assigndol" value="/dolbomi/dolAssignList.do">
					<c:param name="dol_id" value="${loginDolbomi.dol_id}"/> 
				</c:url>
				
				<li class="menu_item_has_children "><a href="${interdol}"
					data-font="secondary"><span>마이서비스</span></a>
					
					<ul class="menu_child_group">
						<li class=""><a href="${interdol}"><span>돌보미
									지정현황</span></a></li>
						<li class=""><a href="${assigndol }"><span>돌보미서비스
									신청현황</span></a></li>
					</ul>
					
					<!-- .menu_child_group --></li>
				<!-- ======================================================================================-->
				<li class="menu_item_has_children "><a
					href="${pageContext.request.contextPath}/loginsuccess.do" data-font="secondary"><span>활동내역</span></a>
					<ul class="menu_child_group">
						<li class=""><a href="${pageContext.request.contextPath}/loginsuccess.do"><span>활동내역</span></a></li>
						<li class=""><a href="${pageContext.request.contextPath}/dolbomi/moveReturnActlist.do?dol_id=${loginDolbomi.dol_id}"><span>일지
									반려 내역</span></a></li>
						<li class=""><a href="${pageContext.request.contextPath}/dolbomi/moveDolSalary.do?dol_id=${loginDolbomi.dol_id}"><span>급여조회</span></a></li>
					</ul>
					<!-- .menu_child_group --></li>
			</ul>
			<!-- .main_menu -->
		</nav>
		<!-- .main_menu_container -->
		<!-- ======================================================================================-->
		<!-- ======================================================================================-->
		<nav class="other_menu_container">
			<ul class="other_menu" data-font="secondary">
				<li class="other_menu_point"><a href="${pageContext.servletContext.contextPath}/movequestions.do" >1:1문의</a></li> 
                <li class="other_menu_point"><a href="${pageContext.servletContext.contextPath}/movenotice.do">공지사항</a></li>

				<!-- ======================================================================================-->
				<!-- 로그인 -->
				<li><a href="#">안녕하세요!&nbsp;<span>${loginDolbomi.dol_name}</span>님</a></li>
				<li>
				<c:if test="${loginDolbomi != null}">
					<a href="${ pageContext.request.contextPath }/logout"><span>로그아웃</span></a>
				</c:if>
				</li>
			</ul>
			<!-- .other_menu -->
		</nav>
		<!-- .other_menu_container -->
	</div>
	<!-- .header_wrap -->

	<!-- ======================================================================================-->
	<!-- 모바일 환경 메뉴-->
	<div id="small_menu_btn">
		<span class="small_menu_btn_line small_menu_btn_line_01"></span> <span
			class="small_menu_btn_line small_menu_btn_line_02"></span> <span
			class="small_menu_btn_line small_menu_btn_line_03"></span>
	</div>
	<div id="small_menu_overlay"></div>
	<div id="small_menu_container" class="small_menu_container">
		<div class="small_menu_container_inner">
			<nav class="member_menu_container">
				<ul class="member_menu" data-font="secondary">

					<li><a href="#">안녕하세요!&nbsp;<span>${loginDolbomi.dol_name}</span>님</a></li>
				<li>
				<c:if test="${loginDolbomi != null}">
					<%-- <form action="${ pageContext.request.contextPath }/logout"
						method="post">
						<input type="submit" value="로그아웃">
					</form> --%>
					<a href="${ pageContext.request.contextPath }/logout"><span>로그아웃</span></a>
				</c:if>
				</li>

					<!-- <li><a href="/Contact" style="color:#ffd618;"><span>Contact</span></a></li> -->

				</ul>
				<!-- .member_menu -->
			</nav>
			<!-- .member_menu_container -->

			<nav class="community_menu_container">
				<ul class="community_menu" data-font="secondary">
					<li class="event"><a href="movequestions.do">1:1문의</a></li>
					<li class="notice"><a href="${pageContext.servletContext.contextPath}/movenotice.do">공지사항</a></li>
				</ul>
				<!-- .community_menu -->
			</nav>
			<!-- .community_menu_container -->

			<nav class="small_screen_menu_container">
				<ul class="small_screen_menu">
					<li class="menu_item_has_children "><a href="/Introduction"
						data-font="secondary"><span>처음 오셨나요?</span></a>
						<ul class="menu_child_group">
							<li class=""><a href="/Introduction/Friend"><span>아이돌봄서비스
										종류</span></a></li>
							<li class=""><a href="/Introduction/Teacher"><span>서비스신청방법</span></a></li>
							<li class=""><a href="/Introduction"><span>서비스등급모의계산</span></a></li>
							<li class=""><a href="/Introduction/Friend"><span>돌보미지원
										방법및 선발</span></a></li>
							<li class=""><a href="/Introduction/Teacher"><span>돌보미활동안내</span></a></li>
						</ul>
						<!-- .menu_child_group --></li>

					<!-- ======================================================================================-->
					<!-- 돌보미 정보 -->
					<li class="menu_item_has_children "><a href="/Project"
						data-font="secondary"><span>마이페이지</span></a>
						<ul class="menu_child_group">
							<li class=""><a href="/Contents/Series"><span>돌보미정보변경</span></a></li>
						</ul>
						<!-- .menu_child_group --></li>
					<!-- ======================================================================================-->
					
					<li class="menu_item_has_children "><a href="${interdol}"
					data-font="secondary"><span>마이서비스</span></a>
						<ul class="menu_child_group">
							<li class=""><a href="${interdol}"><span>돌보미
										지정현황</span></a></li>
							<li class=""><a href="${assigndol }"><span>돌보미서비스
										신청현황</span></a></li>
						</ul>
						<!-- .menu_child_group --></li>
					<!-- ======================================================================================-->
					<li class="menu_item_has_children "><a
						href="${pageContext.request.contextPath}/loginsuccess.do" data-font="secondary"><span>활동내역</span></a>
						<ul class="menu_child_group">
							<li class=""><a href="${pageContext.request.contextPath}/loginsuccess.do"><span>활동내역</span></a></li>
							<li class=""><a href="${pageContext.request.contextPath}/dolbomi/moveReturnActlist.do?dol_id=${loginDolbomi.dol_id}"><span>일지
										반려 내역</span></a></li>
							<li class=""><a href="/Communicate/Event"><span>급여조회</span></a></li>
						</ul>
						<!-- .menu_child_group --></li>

				</ul>
				<!-- .small_screen_menu -->
			</nav>
			<!-- .small_screen_menu_container -->
			<!-- 모바일 환경 끝 -->
			<!-- ======================================================================================-->
		</div>
		<!-- .small_menu_container_inner -->
	</div>
	<!-- .small_menu_container -->
</header>


