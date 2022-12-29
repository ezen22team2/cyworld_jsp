# 싸이월드 되살리기 프로젝트 👨‍👧‍👧 JSP TEAM PROJECT 

💡 `#JSP`와 `#JDBC`(mySQL)를 이용하여 만든 **싸이월드 되살리기 프로젝트**  
<br>

## ✔ 프로젝트 소개 
- 개발기간 : 22/12/19 ~ 22/12/30
- 개발환경 : Windows 10
- 개발도구 : <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white">
- 프로젝트 기획배경 : 싸이월드가 다시 부활한 현재, 예전의 웹사이트가 아닌 모바일로만 이용 가능한 점에 아쉬움을 느껴 <br>
  옛날 홈페이지 감성을 다시 되살리고자 했다.
- 프로젝트 목표 : JDBC로 JSP와 데이터베이스와 연결하여 추억의 싸이월드 사이트의 여러가지 기능들을 재현한 홈페이지를 제작한다. 
- 서비스 타겟 : 싸이월드가 전국을 휩쓸었던 그 시절을 기억하고, 또 추억하는 세대들
<br>

## 개발 환경
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/mysql-4479A1?style=for-the-badge&logo=mysql&logoColor=white">  <img src="https://img.shields.io/badge/apache tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=white">  <img src="https://img.shields.io/badge/Eclipse-2C2255?style=for-the-badge&logo=Eclipse&logoColor=white">
<img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"><img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white">  
<br>


## 요구 사항
|기능|기능구현 내용
|:---:|:---:
|로그인|사용자 ID , PW 입력
|회원가입|이름, ID, PW, PW확인, 이메일, 전화번호 입력 및 사진 등록
|회원전용 페이지|메인페이지 이동, 로그아웃 
|로그아웃|사용자 로그아웃
|홈|메인 페이지 구현, 카테고리 구분
|다이어리|글등록, 수정, 삭제, 댓글 작성 
|사진첩|사진 및 글 등록, 수정, 삭제
|방명록|글 등록, 수정, 삭제, 댓글
<br>
<br>

### 🔘클래스 구조
|클래스|상세내용
|:---:|:---:
|Board.java|board 테이블의 한 개의 행(게시물)을 저장하는 클래스
|User.java|Users 테이블의 한 개의 행(가입정보)을 저장하는 클래스
|Main.java|게시물의 목록과 선택 메뉴를 보여주고, 메서드를 구현 및 실행하는 클래스
<br>
<br>

***************
<b> 🖥기능별 구동 예시</b>
* 게시물 등록 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/1_create.png" width="400" height="400">

* 게시물 읽기 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/2_read.png" width="400" height="400">

* 회원가입 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/4_join.png" width="400" height="300">

* 로그인 기능<br> 
&rarr; 로그인을 하면 [게시물 목록] 옆에 로그인한 아이디가 표시된다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/5_login.png" width="450" height="300">

* 프로그램 종료 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/6_exit.png" width="400" height="300">

* 로그인 후 개인 작성글 한정 삭제 기능
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_delete.png" width="400" height="400">

* 로그인 후 개인 작성글 수정 기능<br> 
&rarr; 스스로 작성한 글이므로 글쓴이는 수정이 불가능하다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_update.png" width="400" height="400">
<img src="https://github.com/dhlllllll/java_project/blob/main/img/afterLogin_update2.png" width="400" height="300">

* 로그아웃 기능<br> 
&rarr; 로그아웃을 하면 표시됐던 아이디가 사라진다. 
<img src="https://github.com/dhlllllll/java_project/blob/main/img/logout.png" width="400" height="400">
<br>

***************
<b> 💡프로젝트 회고</b>
```
자바에서 데이터베이스를 연동하는 부분을 몇번의 시행착오를 통해 성공해내면서 
데이터들이 어떤 구조로 연동이 되는지 제대로 이해하고 습득할 수 있었던 
좋은 기회였습니다. 무엇보다 이론적으로만 배웠던 CRUD 기능을 직접 구현해볼 수 있어서 좋았고 
자바 공부에도 큰 도움이 되었던 프로젝트였습니다. 
이 다음에는 데이터베이스를 오라클뿐만 아니라 mySQL로도 연동해보고 
좀 더 다양한 DB를 다룰 수 있도록 노력해야겠다고 생각했습니다.
```
