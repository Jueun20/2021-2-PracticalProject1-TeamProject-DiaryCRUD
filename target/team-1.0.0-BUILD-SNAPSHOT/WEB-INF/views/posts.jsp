<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page
	import="com.mycom.team.diary.DiaryDAO, com.mycom.team.diary.DiaryVO, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>오늘, 하루</title>
<style>
@font-face {
	font-family: 'GowunDodum-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'KOTRAHOPE';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/KOTRAHOPE.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
}

#list {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#list td, #list th {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: center;
}

#list tr:nth-child(even) {
	background-color: #f2f2f2;
}

#list tr:hover {
	background-color: #ddd;
}

#list th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: center;
	background-color: #b6d5f9;
	color: white;
}

h1 {
	font-family: 'KOTRAHOPE';
	display: inline-block;
}

th {
	font-family: 'KOTRAHOPE';
}
</style>
<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습니까?");
		if (a)
			location.href = 'deletepost.jsp?id=' + id;
	}
</script>
</head>
<body>
	<h1>&nbsp;&nbsp;오늘, 하루&nbsp;&nbsp;</h1>
	<a href="/team/login/logout">logout</a>
	<table id="list" width="90%">
		<tr>
			<th>Id</th>
			<th>글쓴이</th>
			<th>오늘의 날씨</th>
			<th>오늘의 기분</th>
			<th>제목</th>
			<th>내용</th>
			<th>등록일</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getWriter()}</td>
				<td>${u.getWeather()}</td>
				<td>${u.getMood()}</td>
				<td>${u.getTitle()}</td>
				<td>${u.getContent()}</td>
				<td>${u.getRegdate()}</td>
				<td><a href="/team/diary/editpost/${u.getId()}">글수정</a></td>
				<td><a href="javascript:delete_ok('${u.getId()}')">글삭제</a></td>
			</tr>
		</c:forEach>
	</table>
	<br />
	<button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>

<script>
	function delete_ok(id) {
		var a = confirm("정말로 삭제하겠습까?");
		if (a)
			location.href = 'deleteok/' + id;
	}
</script>