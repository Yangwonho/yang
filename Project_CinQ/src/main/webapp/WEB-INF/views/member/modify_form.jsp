
<!-- board/modify_form.jsp -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>member/modify_form.jsp</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src='<c:url value="/resources/script/js/checkRegister.js"/>'></script>
<style type="text/css">
.modify_title {
	text-align: center;
}
.modify {
	width: 500px;
	margin: auto;
}
</style>
</head>
<body>
	<c:import url="../default/header.jsp"/>
	<h1 class="modify_title">${info.name } 님의 회원정보 수정</h1>
	<div class="modify" align="center">
		<div class="modify_form">
		<form name="modifyForm" action="${contextPath }/member/modify" enctype="multipart/form-data" method="post">
			<input type="hidden" name="id" value="${info.id}">
			<b>이    름</b>
			<input type="text" name="name" value="${info.name}" size="50"><br>
			<b>생년월일</b>
			<input type="text" name="birthday" value="${info.birthday}" size="50"><br>
			<b>이 메 일</b>
			<input type="text" name="email" value="${info.email}" size="50"><br>
			<b>비밀번호</b>
			<input type="text" name="pw" value="${info.pw}" size="50"><br>
			<b>전화번호</b>
			<input type="text" name="tel" value="${info.tel}">
			<b>성 별</b>
			
			<c:if test="${info.gender == 'm'}">
			<input type="radio" name="gender" value="m" checked="checked"> 남성
			<input type="radio" name="gender" value="f"> 여성
			</c:if>
			<c:if test="${info.gender == 'f'}">
			<input type="radio" name="gender" value="m"> 남성
			<input type="radio" name="gender" value="f" checked="checked"> 여성
			</c:if>
			<br>
			<input type="submit" value="수정완료"> &nbsp;
			<input type="button" value="돌아가기" onclick="location.href='${contextPath}/member/myinfo1?id=${loginUser}'"> 
		</form>
		</div>
	</div>
	<c:import url="../default/footer.jsp"/>
</body>
</html>





















