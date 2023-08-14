<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>마이페이지</title>
		<link rel="stylesheet" href="../resources/css/main.css">
	</head>
	<body>
		<h1>마이페이지</h1>
		<form action="" method="post">
			<fieldset>
				<legend>마이페이지</legend>
				<ul>
					<li>
						<label>* 아이디</label>
						${member.memberId }		
					</li>
					<li>
						<label>* 이름</label>
						${member.memberName }		
					</li>
					<li>
						<label>* 나이</label>
						${member.memberAge }	
					</li>
					<li>
						<label>* 성별</label>
						<input type="hidden" id="" name="memberGender" value="${member.memberGender}">	
						<c:if test="${member.memberGender eq 'M'}">남자</c:if>
						<c:if test="${member.memberGender eq 'F'}">여자</c:if>	
					</li>
					<li>
						<label>* 이메일</label>
						${member.memberEmail }	
					</li>	
					<li>
						<label>* 전화번호</label>
						${member.memberPhone }	
					</li>	
					<li>
						<label>* 주소</label>
						${member.memberAddress }	
					</li>	
					<li>
						<label>* 취미</label>
						${member.memberHobby }
					</li>	
				</ul>
			</fieldset>
			<div>
				<a href="/index.jsp">메인으로 이동</a>
				<a href="/member/update.do?memberId=${member.memberId }">수정하기</a>
				<a href="/member/delete.do?memberId=${member.memberId }" >삭제하기</a>
				<a href="/member/allMembers.do">전체 회원 조회</a>
			</div>
		</form>
	</body>
</html>