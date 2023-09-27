<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>투 두 리스트</title>
    <link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
    <main>
    
    <c:choose>
    	<c:when test="${empty sessionScope.loginMember}">
	    	<form action="/login" method="post" name="login-form" id="loginFrm">
		        <div class="login-title">투 두 리스트 로그인</div>
		        <div class="login-box">
		            <div>아이디</div>
		            <input type="text" name="inputId">
		            <div>패스워드</div>
		            <input type="password" name="inputPw">
		            <button class="login-button">로그인</button>
		            <a href="/signup">회원가입</a>
		        </div>
		    </form>
		    <c:if test="${not empty sessionScope.message}" >
	
	<script>

		alert('${message}') // ${message}
	</script>
	
	 <c:remove var="message" scope="session"/>
	
</c:if>
		</c:when>
		<c:otherwise>
			<form name="logon-form">
				<div class="list-title">"${sessionScope.loginMember}"의 투 두 리스트</div>
				<div class="list"></div>
				<button class="register">등록하기</button>
				<div><a href="/logout" class="logout"> 로그아웃</a></div>
			</form>
		</c:otherwise>
       </c:choose>
	        
    </main>
</body>
</html>