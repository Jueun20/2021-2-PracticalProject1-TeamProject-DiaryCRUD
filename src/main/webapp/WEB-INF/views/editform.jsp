<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.mycom.team.diary.DiaryDAO, com.mycom.team.diary.DiaryVO"%>
 
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
<style>
@font-face {
	font-family: 'GowunDodum-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunDodum-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

#main {
	font-family: 'GowunDodum-Regular';
}

body {
	line-height: 30px;
}

#saveReset {
	text-align: center;
}

</style>
</head>
<body>

<form:form commandName="diaryVO" method="POST" action="../editok">
	<form:hidden path="id" />
	<div id="main">
	<br><br>
		<fieldset style="width: 470px; margin: auto">
			<legend id="edit" align="right" >✏️ 기록을 수정합니다 ✏️</legend>
				Title : <form:input path="title" /><br> 
				Writer : <form:input path="writer" /><br> 
				Today's weather : <form:checkbox path="weather" value="맑음️" /> ☀️&nbsp;&nbsp;
				<form:checkbox path="weather" value="구름 많음️" /> ⛅️&nbsp;&nbsp; 
				<form:checkbox path="weather" value="흐림️" /> ☁️&nbsp;&nbsp; 
				<form:checkbox path="weather" value="비" /> 🌧&nbsp;&nbsp;
				<form:checkbox path="weather" value="천둥번개" /> 🌩&nbsp;&nbsp; 
				<form:checkbox path="weather" value="눈" /> 🌨<br> 
				Today's feeling : <form:checkbox path="mood" value="매우 기쁨️" /> 😄️&nbsp;&nbsp;
				<form:checkbox path="mood" value="기쁨️" /> 😊️&nbsp;&nbsp; 
				<form:checkbox path="mood" value="좋음️" /> 🙂️&nbsp;&nbsp; 
				<form:checkbox path="mood" value="soso" /> 😐&nbsp;&nbsp;
				<form:checkbox path="mood" value="속상함" /> 🙁&nbsp;&nbsp; 
				<form:checkbox path="mood" value="슬픔" /> 😢<br>
				 Content : <br>
                <form:textarea cols="55" rows="5" path="content" />
		</fieldset>
		<div id="saveReset">
			<input type="submit" value="수정" /> 
			<input type="button" value="취소" onclick="history.back()" />
		</div>
	</div>
</form:form>

</body>
</html>