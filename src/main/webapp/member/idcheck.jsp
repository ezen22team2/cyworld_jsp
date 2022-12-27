<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 중복 체크</title>
<script type="text/javascript" src="../js/member.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/cyworld_chk_layout.css" />
</head>
<body>
	<p id="img_id" align="center"><img src="../images/logo.png" width="230" height="60"></p>
	<h2 align="center">아이디 중복확인</h2>
	<form action="idCheck.do" method="get" name="frm" align="center">
		아이디 
		<input id="input_id" type=text name="userid" value="${userid}"> <!-- 받아온 유저아이디를 value값에 넣음 -->
		<input class="check_btn" type=submit value="중복 체크"> <br><!-- 중복체크하는 버튼 -->
		<c:if test="${result == 1}"><!-- result값이 1이면 실행 -->
			<script type="text/javascript">
				opener.document.frm.userid.value = "";
			</script>
			${userid}는 이미 사용 중인 아이디입니다.
		</c:if>
		<c:if test="${result==-1}"><!-- result값이 -1이면 실행 -->
		${userid}는 사용 가능한 아이디입니다.
		<input class="check_btn" type="button" value="사용하기" class="cancel" onclick="idok('${userid}')">
		<!-- 중복 체크한 아이디를 사용가능하면 사용하는 버튼 -->
		</c:if>
	</form>
</body>
</html>