<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

button.colorButton {
	border: 0;
	outline: none;
	font-size: 20px;
	margin: 10px;
	background: whitesmoke;
	color: white;
	padding: 5px;
	cursor: pointer;
	border-radius: 10px;
	float: right;
}

#main {
	font-family: 'GowunDodum-Regular';
}

h1 {
	display: inline-block;
}

body {
	line-height: 30px;
}

#saveReset {
	text-align: center;
}

#top {
	border-radius: 4px;
	margin: 5px;
	background-color: #b6d5f9;
	color: #ffffff;
	padding: 10px;
	font-family: 'KOTRAHOPE';
	font-size: larger;
}
</style>
</head>
<body>
	<form action="loginOk" method="post">
		<div id="top">
			<h1>&nbsp;&nbsp;Love the life you live, Live the life you love</h1>
			<button type="button" class="colorButton" onclick="colorChange()">🎨🎨</button>
		</div>
		<div id="blank">
			<br><br>
		</div>
		<div id="main">
			<fieldset style="width: 250px; margin: auto">
				<legend id="login" align="right" >✨ 환영합니다 ✨</legend>
				User ID : <input type="text" name="userid"><br> 
				Password : <input type="text" name="password"><br> 
			</fieldset>
			<div id="saveReset">
				<button type='submit'>login</button>
			</div>
		</div>
	</form>
	<script>
		function colorChange() {
			var color = [ "#b6d5f9", "#afcb3d", "#fccee2", "#fdb7ba",
					"#f7e7b1", "#a9a0fc" ];
			var num = Math.floor(Math.random() * color.length);
			var bodyTag = document.getElementById("top");
			bodyTag.style.backgroundColor = color[num];
		}
	</script>
</body>
</html>