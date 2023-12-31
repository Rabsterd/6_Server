<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학과검색해서 학생 조회</title>
<style>
	table {
		border-collapse: collapse;
	}
</style>
</head>
<body>
	<h1>검색해서 학생 조회</h1>
	
	<table border="1">
		<tr>
			<td>번호</td>
			<td>학번</td>
			<td>이름</td>
			<td>학과</td>
			<td>주소</td>
		</tr>
		
		<c:forEach var="std" items="${stdList}" varStatus="vs">
			<tr>
				<td>${vs.count}</td>
				
				<td>${std.studentNo}</td>
				
				<td>${std.studentName}</td>
				
				<td>${std.departmentName}</td>
				
				<td>${std.studentAddress}</td>
			</tr>
		</c:forEach>
		
		
	</table>
</body>
</html>