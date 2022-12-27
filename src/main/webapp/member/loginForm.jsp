<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인 폼</title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/cyworld_login_layout.css" />
<script type="text/javascript" src="../js/member.js"></script>
</head>
<body>
<div id="wrap">
	<form action='<c:url value="/member/login.do" />' method="post" name="frm"><!-- 로그인 정보를 확인하는 form 태그 -->
		<table id="login">
			<tr>
				<td align="center"><img src="../images/logo.png" width="220" height="60"></td>
			</tr>
			<tr>
				<td align="center"><input type="text" name="userid" id="id_input" value="${userid}" placeholder="아이디 입력"></td>
			</tr>
			<tr>
				<td align="center"><input type="password" name="pwd" id="pwd_input" placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<c:url value="/member/join.do" var="jurl" />
				<td colspan="2" align="center" id="buttons">
					<!-- form태그에 입력된 데이터를 보내는 버튼 -->
					<input type="submit" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp; 
					<!-- 회원가입페이지로 이동하는 버튼 -->
					<a onclick="location.href='${jurl}'">회원가입</a>
				</td>	
			</tr>
			<tr>
				<td colspan="2">${message}</td>
			</tr>
		</table>
	</form>
	</div>
</body>
</html>