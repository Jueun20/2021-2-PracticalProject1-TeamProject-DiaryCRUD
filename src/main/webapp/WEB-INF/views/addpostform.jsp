<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>πNice to Meet Uπ</title>
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
	<form action="addok" method="post">
		<div id="top">
			<h1>&nbsp;&nbsp;Love the life you live, Live the life you love</h1>
			<button type="button" class="colorButton" onclick="colorChange()">π¨π¨</button>
		</div>
		<div id="blank">
			<br><br>
		</div>
		<div id="main">
			<fieldset style="width: 470px; margin: auto">
				<legend id="iam" align="right" onmouseover="mouseOver()" onmouseout="mouseOut()">ποΈ μ€λ νλ£¨λ₯Ό κΈ°λ‘νμΈμ π</legend>
				Title : <input type="text" name="title"><br> 
				Writer : <input type="text" name="writer"><br> 
				<label for="fweather">Today's weather : </label> 
				<input type="checkbox" id="fweather" name="weather" value="λ§μοΈ"> βοΈ&nbsp;&nbsp;
				<input type="checkbox" id="fweather" name="weather" value="κ΅¬λ¦ λ§μ"> βοΈ&nbsp;&nbsp; 
				<input type="checkbox" id="fweather" name="weather" value="νλ¦ΌοΈ"> βοΈ&nbsp;&nbsp; 
				<input type="checkbox" id="fweather" name="weather" value="λΉ"> π§&nbsp;&nbsp;
				<input type="checkbox" id="fweather" name="weather" value="μ²λ₯λ²κ°"> π©&nbsp;&nbsp; 
				<input type="checkbox" id="fweather" name="weather" value="λ"> π¨<br> 
				<label for="ffeeling">Today's feeling : </label> 
				<input type="checkbox" id="ffeeling" name="mood" value="λ§€μ° κΈ°μ¨οΈ"> ποΈ&nbsp;&nbsp;
				<input type="checkbox" id="ffeeling" name="mood" value="κΈ°μ¨"> ποΈ&nbsp;&nbsp; 
				<input type="checkbox" id="ffeeling" name="mood" value="μ’μ"> ποΈ&nbsp;&nbsp; 
				<input type="checkbox" id="ffeeling" name="mood" value="soso"> π&nbsp;&nbsp;
				<input type="checkbox" id="ffeeling" name="mood" value="μμν¨"> π&nbsp;&nbsp; 
				<input type="checkbox" id="ffeeling" name="mood" value="μ¬ν"> π’<br>
				 Content : <br>
                <textarea name="content" cols=55 rows=5></textarea>
			</fieldset>
			<div id="saveReset">
				<button type="submit">μ μ₯</button> 
				<button type="button" onclick="location.href='list'">λͺ©λ‘λ³΄κΈ°</button>
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

		function mouseOver() {
			iam.innerText = "β¨How was your dayβ¨";
		}

		function mouseOut() {
			iam.innerText = "ποΈ μ€λ νλ£¨λ₯Ό κΈ°λ‘νμΈμ π";
		}
	</script>
</body>
</html>