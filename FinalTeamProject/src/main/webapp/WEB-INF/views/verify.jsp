<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->

<title>한동대 학생들을 위한 수강 신청 교환</title>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW"
	crossorigin="anonymous"></script>

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

h1 {
	font-family: 'Hanna', sans-serif;
	border-collapse: collapse;
	width: 100%;
	text-align: center;
	margin-right: 50px;
	margin-bottom: 10px;
}

h5 {
	font-family: 'Hanna', sans-serif;
	/* border-collapse: collapse; */
	width: 100%;
	text-align: center;
	margin-right: 50px;
	font-size: 10px;
	margin-bottom: 20px;
	color: red;
}

table, button {
	margin-left: 35%;
	margin-right: 30px;
}

table {
	font-size: 15px;
}

button {
	margin-top: 10%;
}
</style>
</head>
<body>
	<div style="width: 100%; text-align =center; padding-top: 100px">
		<form method="post" action="../verifyOk">
			<input type="hidden" name="rid" value="${u.rid}" />
			<h1>${u.name}님의수강 교환 신청</h1>
			<h5>편집하시려면 등록하셨을 때 입력한 비밀번호를 입력하세요</h5>
			<table>
				<tr>
					<td>Want [과목명, 과목코드] :</td>
					<td>${u.want}</td>
				</tr>
				<tr>
					<td>Have [과목명, 과목코드] :</td>
					<td>${u.have}</td>
				</tr>
				<tr>
					<td>Name [이름, 학번] :</td>
					<td>${u.name}</td>
				</tr>
				<tr>
					<td>Password :</td>
					<td><input type="password" name="password"></td>
				</tr>
			</table>
			<button type="button" onclick="location.href ='../list'"
				class="btn btn-outline-success">목록</button>
			<button type="submit" class="btn btn-outline-dark">로그인</button>

		</form>
	</div>

</body>
</html>
