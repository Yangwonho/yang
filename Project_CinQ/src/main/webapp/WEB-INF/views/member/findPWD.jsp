<!-- member/findPWD  -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<script src='<c:url value="/resources/script/js/checkPWD.js"/>'></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
<link href="${contextPath}/resources/script/css/findPWD.css" 
	  rel="stylesheet" type="text/css">	  
<body>
 	<c:import url="../default/header.jsp"/>
	<div class="findPWD-wrap">
		<div class="findPWD-html">
			<div class="findPWD-form">
				<form action="${contextPath }/member/PWD_check" method="post" autocomplete="off">
					<div class="group">
						<label for="id" class="label">Id</label>
						<input id="id" name="id" type="text" class="input" onkeyup="javascript:checkID()" onblur="javascript:checkID()">
							<label class="labelFail" id="idLabel1" for="id" >없는 아이디 입니다</label>
							<label class="labelFail" id="idLabel2" for="id"> 아이디를 입력하세요! </label>
		               		<label class="labelOK" id="idLabel3" for="id"> 아이디 확인완료 </label>
					</div>
					<div class="group">
						<label for="email" class="label">E-mail</label>
						<input id="email" name="email" type="text" class="input" onkeyup="javascript:checkEmail()" onblur="javascript:checkEmail()">
							<label class="labelFail" id="emailLabel1" for="email" >일치하지 않는 이메일입니다</label>
							<label class="labelFail" id="emailLabel2" for="email"> 이메일을 입력하세요! </label>
							<label class="labelOK" id="emailLabel3" for="email"> 아이디와 일치하는 이메일입니다 </label>
						<br>
					</div>
					<div class="group">
						<input type="submit" class="button" value="비밀번호 찾기">
					</div>
					<div class="hr"><br></div>
				</form>
			</div>
		</div>
	</div>
	 <c:import url="../default/footer.jsp"/>
</body>
</html>