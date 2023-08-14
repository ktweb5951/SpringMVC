<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>회원 전체 정보 조회</title>
	<style>
	table {
		border-collapse: collapse;
		text-align : center;
	}
	th, td {
		border : 1px solid black;
	}
	</style>
	</head>
	<body>
	
		<h1>전체 회원 정보</h1>
		<table>
			<collgroup>		
			</collgroup>
			<tr>
				<th>아이디</th>
				<th>이름</th>
				<th>나이</th>
				<th>성별</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>주소</th>
				<th>취미</th>
				<th>가입일</th>
			</tr>
			<c:forEach items="${mList}" var="member">
				<tr>
					<td>${member.memberId }</td>
					<td>${member.memberName }</td>
					<td>${member.memberAge }</td>
					<td>${member.memberGender }</td>
					<td>${member.memberEmail }</td>
					<td>${member.memberPhone }</td>
					<td>${member.memberAddress }</td>
					<td>${member.memberHobby }</td>
					<td>${member.memberDate }</td>
				</tr>
			</c:forEach>
		</table>
		<div>
			<a href="/index.jsp">메인 페이지로 이동</a>
		</div>
		
	</body>
</html>