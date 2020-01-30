<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>

<html lang="ko">
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
<link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
<title>404 Error page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- CSS -->
	<link rel="stylesheet" href="/ibom/resources/css/error.css" />
    <link rel="stylesheet" href="/ibom/resources/css/styles.css" />

<script>
  window.console = window.console || function(t) {};
</script>
<script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
</head>
<body translate="no">




<p>오류발생 : ${ requestScope.message }</p>

<a href="${pageContext.servletContext.contextPath }/main.do" class="home_s">홈으로</a> 

</body>

</html>