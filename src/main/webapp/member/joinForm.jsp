<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입 폼</title>
<script type="text/javascript" src="../js/member.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/cyworld_join_layout.css" />
</head>
<body>
<div id="wrap">
	<p id="img_id" align="center"><img src="../images/logo.png" width="320" height="80"></p>
	<h2 align="center" id="title_id">회원 가입</h2>
	<p align="center" id="star"> * 표시 항목은 필수 입력 항목입니다.</p>
	<form method="post" enctype="multipart/form-data" name="frm"><!-- 로그인할때 사진도 함께가기 때문에 enctype="multipart/form-data"를 사용  -->
		<table id="table_id" align="center">
			<tr>
				<td>*이름</td><!-- 이름을 입력하는 텍스트 -->
				<td><input class="input1" type="text" name="name" size="20"></td>
			</tr>
			<tr>
				<td>*아이디</td>	
				<td>
					<input class="input1" type="text" name="userid" size="20"  id="userid"> <!-- 아이디를 입력하는 텍스트 -->
					<input type="hidden" name="reid" size="20"> 
					<input id="button_id" type="button" value="중복 체크" onclick="idCheck()"></td><!-- 아이디를 중복 체크하는 버튼 -->
			</tr>
			<tr>
				<td>*비밀번호</td><!-- 비밀번호를 입력하는 텍스트 -->
				<td><input class="input1" type="password" name="pwd" size="20"></td>
			</tr>
			<tr height="30">
				<td width="80">*비밀번호 확인</td><!-- 입력한 비밀번호가 같은지 확인 -->
				<td><input class="input1" type="password" name="pwd_check" size="20"></td>
			</tr>
			<tr>
				<td>이메일</td><!-- 이메일을 입력하는 텍스트 -->
				<td><input class="input1" type="text" name="email" size="20"></td>
			</tr>
			<tr>
				<td>전화번호</td><!-- 전화번호를 입력하는 텍스트 -->
				<td><input class="input1" type="text" name="phone" size="20"></td>
			</tr>
			<tr>
				<td>프로필 사진</td><!-- 사진을 저장하는 버튼 -->
				<td><input id="button_id2" type="file" name="photoUrl"><br></td>
			</tr>
			<tr>
				<td>등급</td><!-- 유저의 등급을 정하는 래디오 버튼 -->
				<td id="radio_wrap"><input class="radio_btn" type="radio" name="grade" value="0" checked="checked"> 일반회원 
					<input class="radio_btn" type="radio" name="grade" value="1"> 관리자</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input class="input3" type="submit" value="확인" onclick="return joinCheck()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
					<!-- 입력된 데이터를 컨트롤러로 전달하는 버튼 -->
					<input class="input3" type="reset" value="입력취소"><!-- 입력한 데이터를 모두 지우는 버튼 -->
				</td>
			</tr>
			<tr>
				<td align="center" colspan="2">${message}</td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>