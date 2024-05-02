<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import
	url("https://fonts.googleapis.com/css?family=Open+Sans:300,400|Lora");

body {
	background: #CBC0D3;
}

/* div box styling */
.container {
	margin: auto;
	width: 650px;
	height: 550px;
	position: relative;
}

.welcome {
	background: #f6f6f6;
	width: 650px;
	height: 415px;
	position: absolute;
	top: 25%;
	border-radius: 5px;
	box-shadow: 5px 5px 5px rgba(0, 0, 0, 0.1);
}

.pinkbox {
	position: absolute;
	top: -10%;
	left: 5%;
	background: #EAC7CC;
	width: 320px;
	height: 500px;
	border-radius: 5px;
	box-shadow: 2px 0 10px rgba(0, 0, 0, 0.1);
	transition: all 0.5s ease-in-out;
	z-index: 2;
}

.nodisplay {
	display: none;
	transition: all 0.5s ease;
}

.leftbox, .rightbox {
	position: absolute;
	width: 50%;
	transition: 1s all ease;
}

.leftbox {
	left: -2%;
}

.rightbox {
	right: -2%;
}

/* font & button styling */
h1 {
	font-family: "Open Sans", sans-serif;
	text-align: center;
	margin-top: 95px;
	text-transform: uppercase;
	color: #f6f6f6;
	font-size: 2em;
	letter-spacing: 8px;
}

.title {
	font-family: "Lora", serif;
	color: #8E9AAF;
	font-size: 1.8em;
	line-height: 1.1em;
	letter-spacing: 3px;
	text-align: center;
	font-weight: 300;
	margin-top: 20%;
}

.desc {
	margin-top: -8px;
}

.account {
	margin-top: 45%;
	font-size: 10px;
}

p {
	font-family: "Open Sans", sans-serif;
	font-size: 0.7em;
	letter-spacing: 2px;
	color: #8E9AAF;
	text-align: center;
}

span {
	color: #EAC7CC;
}

.flower {
	position: absolute;
	width: 120px;
	height: 120px;
	top: 46%;
	left: 29%;
	opacity: 0.7;
}

.smaller {
	width: 90px;
	height: 100px;
	top: 48%;
	left: 38%;
	opacity: 0.9;
}

button {
	padding: 12px;
	font-family: "Open Sans", sans-serif;
	text-transform: uppercase;
	letter-spacing: 3px;
	font-size: 11px;
	border-radius: 10px;
	margin: auto;
	outline: none;
	display: block;
}

button:hover {
	background: #EAC7CC;
	color: #f6f6f6;
	transition: background-color 1s ease-out;
}

.button {
	margin-top: 3%;
	background: #f6f6f6;
	color: #ce7d88;
	border: solid 1px #EAC7CC;
}

/* form styling */
form {
	display: flex;
	align-items: center;
	flex-direction: column;
	padding-top: 7px;
}

.more-padding {
	padding-top: 35px;
}

.more-padding input {
	padding: 12px;
}

.more-padding .submit {
	margin-top: 45px;
}

.submit {
	margin-top: 25px;
	padding: 12px;
	border-color: #ce7d88;
}

.submit:hover {
	background: #CBC0D3;
	border-color: #bfb1c9;
}

input {
	background: #EAC7CC;
	width: 65%;
	color: #ce7d88;
	border: none;
	border-bottom: 1px solid rgba(246, 246, 246, 0.5);
	padding: 9px;
	margin: 7px;
}

input::placeholder {
	color: #f6f6f6;
	letter-spacing: 2px;
	font-size: 1.3em;
	font-weight: 100;
}

input:focus {
	color: #ce7d88;
	outline: none;
	border-bottom: 1.2px solid rgba(206, 125, 136, 0.7);
	font-size: 1em;
	transition: 0.8s all ease;
}

input:focus::placeholder {
	opacity: 0;
}

label {
	font-family: "Open Sans", sans-serif;
	color: #ce7d88;
	font-size: 0.8em;
	letter-spacing: 1px;
	display: inline-block;
	margin-right: 10px;
}

.checkbox {
	display: inline;
	white-space: nowrap;
	position: relative;
	left: -62px;
	top: 5px;
}

input[type=checkbox] {
	width: 7px;
	background: #ce7d88;
}

.checkbox input[type=checkbox]:checked+label {
	color: #ce7d88;
	transition: 0.5s all ease;
}
</style>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<div class="container">
	<h2 align="center">정보입력</h2>
	<hr style="text-align: left; margin-left: 0">
	<form id="form1" method="post" enctype="multipart/form-data">
		<table>
			<tr>
				<th>이름</th>
			</tr>
			<tr>
				<td><input type="text" name="name" id="name"
					placeholder="이름"></td>
			</tr>
			<tr>
				<th>나이</th>
			</tr>
			<tr>
				<td><input type="number" name="age" id="age"
					placeholder="나이"></td>
			</tr>
			<tr>
				<th>성별</th>
			</tr>
			<tr>
				<td><label for="male"> <input type="radio"
						name="gender" id="male" value="male"> 남자
				</label> <label for="female"> <input type="radio" name="gender"
						id="female" value="female"> 여자
				</label></td>
			</tr>
			<tr>
				<th>키</th>
			</tr>
			<tr>
				<td><input type="number" name="tall" id="tall"
					placeholder="키"></td>
			</tr>
			<tr>
				<th>몸무게</th>
			</tr>
			<tr>
				<td><input type="number" name="weight" id="weight"
					placeholder="몸무게"></td>
			</tr>
			<tr>
				<th>휴대폰번호</th>
			</tr>
			<tr>
				<td><input type="text" name="phone" id="phone"
					placeholder="휴대폰번호(-없이 숫자만 입력해주세요)"></td>
			</tr>
			<tr>
				<th>주소</th>
			</tr>
			<tr>
				<td><input type="text" name="address" id="address"
					placeholder="주소"></td>
			</tr>
			<tr>
				<th>MBTI</th>
			</tr>
			<tr>
				<td><input type="text" name="mbti" id="mbti"
					placeholder="MBTI(cute이런거 안돼요)"></td>
			</tr>
			<tr>
				<th>흡연</th>
			</tr>
			<tr>
				<td><label for="pim"> <input type="radio"
						name="smoking" id="pim" value="pim"> 핀다
				</label> <label for="anpim"> <input type="radio" name="smoking"
						id="anpim" value="anpim"> 안핀다
				</label></td>
			</tr>
			<tr>
				<th>취미</th>
			</tr>
			<tr>
				<td><input type="text" name="hobby" id="hobby"
					placeholder="취미"></td>
			</tr>
			<tr>
				<th>스타일</th>
			</tr>
			<tr>
				<td><input type="text" name="style" id="style"
					placeholder="스타일"></td>
			</tr>
			<tr>
				<th>학력</th>
			</tr>
			<tr>
				<td><input type="text" name="grade" id="grade"
					placeholder="학력"></td>
			</tr>
			<tr>
				<th>종교</th>
			</tr>
			<tr>
				<td><input type="text" name="religion" id="religion"
					placeholder="종교"></td>
			</tr>
			<tr>
				<th>직업</th>
			</tr>
			<tr>
				<td><input type="text" name="job" id="job"
					placeholder="직업"></td>
			</tr>
			<tr>
				<th>상품이미지</th>
			</tr>
			<tr> 
				<td>
					<!-- <input type="file" name="file"> --> <input type="file"
					name="file" id="file"
					accept="image/gif, image/png, image/jpeg, image/jpg"
					multiple="multiple" onchange="upload()"> <img
					src="/resources/images" class="profile-photo" width="150"
					height="150" style="visibility: hidden;">
				</td>

			</tr>
			<tr>
				<th>한마디</th>
			</tr>

			<tr>
				<td><textarea rows="5" cols="60" id="contents" name="contents"></textarea>
					<script>
						CKEDITOR.replace("contents", {
							filebrowserUploadUrl : "/auction/imageUpload.do"
						});
					</script></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="button" value="등록"
					onclick="auction_write()"></td>
			</tr>
		</table>
	</form>
</div>
</body>




</html>