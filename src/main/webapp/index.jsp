<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>홈 페이지</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/cyworld_index_layout.css?after" />
</head>
<body>
<div>
	<a id="img_id" href="member/login.do"><img src="images/logo.png" width="350" height="100"></a><!-- 로그인 페이지로 이동 -->
	<a id="login_btn" href="member/login.do">로그인하기</a>
</div>
</body>
</html>