<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/ibom/resources/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
alert("[동시접속 발생] 다른 브라우저에서 해당 계정의 접속이 감지되어 로그아웃 됩니다.")
location.href="${pageContext.request.contextPath}/main.do";
</script>
</head>
<body>

</body>
</html>