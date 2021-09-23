<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연습용</title>
</head>
<body>
	<h1>여행갈카 로그인</h1>
	
	<h2><c:out value="${error }"/></h2>
	<h2><c:out value="${logout }"/></h2>
	
	<form id="frm" name="frm" action="login" method="post">
		<div>
			<input type="text" name="username" value="admin">
		</div>
		<div>
			<input type="password" name="password" value="admin">
		</div>
		<div>
			<button type="button" id="loginBtn" name="loginBtn">로그인</button>
		</div>
		<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token}"/>
	</form>

<script>
$(function(){
	$('#loginBtn').on("click",function(){
		frm.submit();
	});
});
</script>	
</body>
</html>