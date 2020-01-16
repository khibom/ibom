<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ibom header</title>
</head>
<body>
<header id="header">
        <div class="header_wrap">
            <div id="logo">
                <a href="main.do">
                    <img src="/ibom/resources/images/layout/logo.png" alt="우리아이봄" />
                </a>
            </div><!-- #logo -->

            <nav class="main_menu_container">
                <ul id="menu" class="main_menu">
                    <li class="menu_item_has_children ">
                        <a href="/Introduction" data-font="secondary"><span>처음 오셨나요?</span></a>
                        <ul class="menu_child_group">
                            <li class=""><a href="/Introduction/Friend" ><span>아이돌봄서비스 종류</span></a></li>
                            <li class=""><a href="/Introduction/Teacher"><span>서비스신청방법</span></a></li>
                            <li class=""><a href="/Introduction"        ><span>서비스등급모의계산</span></a></li>
                            <li class=""><a href="/Introduction/Friend" ><span>돌보미지원 방법및 선발</span></a></li>
                            <li class=""><a href="/Introduction/Teacher"><span>돌보미활동안내</span></a></li>
                        </ul><!-- .menu_child_group -->
                    </li>
                   
                </ul><!-- .main_menu -->
            </nav><!-- .main_menu_container -->
            <!-- ======================================================================================-->
            <!-- ======================================================================================-->
            <nav class="other_menu_container">
                <ul class="other_menu" data-font="secondary">
                    <li class="other_menu_point"><a href="${pageContext.servletContext.contextPath}/movenotice.do">공지사항</a></li>

                    <!-- ======================================================================================-->
                    <!-- 로그인 -->
                    <li><a href="${pageContext.servletContext.contextPath}/loginPage.do"><span>로그인</span></a></li>
                    <li><a href="${pageContext.servletContext.contextPath}/joinPage.do"><span>회원가입</span></a></li>
                   </ul><!-- .other_menu -->
            </nav><!-- .other_menu_container -->
        </div><!-- .header_wrap -->
        
        <!-- ======================================================================================-->
        <!-- 모바일 환경 메뉴-->
        <div id="small_menu_btn">
            <span class="small_menu_btn_line small_menu_btn_line_01"></span>
            <span class="small_menu_btn_line small_menu_btn_line_02"></span>
            <span class="small_menu_btn_line small_menu_btn_line_03"></span>
        </div>
        <div id="small_menu_overlay"></div>
        <div id="small_menu_container" class="small_menu_container">
            <div class="small_menu_container_inner">
                <nav class="member_menu_container">
                    <ul class="member_menu" data-font="secondary">

                        <li><a href="${pageContext.servletContext.contextPath}/loginPage.do"><span>로그인</span></a></li>
                        <li><a href="${pageContext.servletContext.contextPath}/joinPage.do"><span>회원가입</span></a></li>
                        
                        <!-- <li><a href="/Contact" style="color:#ffd618;"><span>Contact</span></a></li> -->

                    </ul><!-- .member_menu -->
                </nav><!-- .member_menu_container -->

                <nav class="community_menu_container">
                    <ul class="community_menu" data-font="secondary">
                        <li class="notice"><a href="${pageContext.servletContext.contextPath}/movenotice.do">공지사항</a></li>
                    </ul><!-- .community_menu -->
                </nav><!-- .community_menu_container -->

                <nav class="small_screen_menu_container">
                    <ul class="small_screen_menu">
                        <li class="menu_item_has_children ">
                            <a href="/Introduction" data-font="secondary"><span>처음 오셨나요?</span></a>
                            <ul class="menu_child_group">
                                <li class=""><a href="/Introduction/Friend" ><span>아이돌봄서비스 종류</span></a></li>
                                <li class=""><a href="/Introduction/Teacher"><span>서비스신청방법</span></a></li>
                                <li class=""><a href="/Introduction"        ><span>서비스등급모의계산</span></a></li>
                                <li class=""><a href="/Introduction/Friend" ><span>돌보미지원 방법및 선발</span></a></li>
                                <li class=""><a href="/Introduction/Teacher"><span>돌보미활동안내</span></a></li>
                            </ul><!-- .menu_child_group -->
                        </li>
                     </ul><!-- .small_screen_menu -->
            </nav><!-- .small_screen_menu_container -->
            <!-- 모바일 환경 끝 -->
            <!-- ======================================================================================-->
        </div><!-- .small_menu_container_inner -->
    </div><!-- .small_menu_container -->
</header>
	
</body>
</html>