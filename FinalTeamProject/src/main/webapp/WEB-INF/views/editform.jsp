<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
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
	margin-bottom: 50px;
}

table, button {
	margin-left: 27%;
}

table {
	font-size: 15px;
}
</style>
</head>
<body>

	<h1>${u.name}님의수강교환신청편집</h1>
	<form method="POST" action="../editok">
		<input type="hidden" name="rid" value="${u.rid}" />
		<table>
			<tr>
				<td>Want [과목명, 과목코드] :</td>
				<td><input type="text" name="want" value="${u.want}" /></td>
			</tr>
			<tr>
				<td>Have [과목명, 과목코드] :</td>
				<td><input type="text" name="have" value="${u.have}" /></td>
			</tr>
			<tr>
				<td>Name [이름, 학번] :</td>
				<td><input type="text" name="name" value="${u.name}" /></td>
			</tr>
			<tr>
				<td>Contact [연락처] :</td>
				<td><input type="text" name="contact" value="${u.contact}" /></td>
			</tr>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" value="${u.email}" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="text" name="password" value="${u.password}" /></td>
			</tr>
			<tr>
				<td>Message [비고] :</td>
				<td><textarea cols="50" rows="5" name="message">${u.message}</textarea></td>
			</tr>
			<tr>
				<td><button type="button" onclick="history.back()"
						class="btn btn-outline-dark">취소</button></td>
				<td><button type="button" onclick= "location.href ='../deleteok/${u.rid}'"
						class="btn btn-outline-danger">삭제</button></td>
				<td align="right"><input type="submit" value="편집 완료"
					class="btn btn-outline-success" /></td>

			</tr>
		</table>
	</form>
</body>
</html>
