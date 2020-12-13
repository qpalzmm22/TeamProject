<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>

</script>

<style>
@import url(//fonts.googleapis.com/earlyaccess/hanna.css);

h1 {
	font-family: 'Hanna', sans-serif;
	border-collapse: collapse;
	width: 100%;
	
	margin-right: 50px;
	margin-bottom: 50px;
}

table, button {
	margin-left: 20px;
	margin-right: 30px;
	
}
table{
	font-size : 15px;
}

.linkToHome{
	text-decoration: none;
	display:block;
	margin: 10 auto;
	text-align: center;
	}
</style>
</head>
<body>
	<a href ="list" class="h1 linkToHome">홈 게시판</a>
	
	<form method="GET" action="list">
	    검색 : <input type="text" name="keyword" size="50" required />
	    &nbsp;
	    <input type="submit" value="Searcj" />
	    &nbsp;
	</form>

	<table id="list" width="90%" class="table table-hover table-borderless">
		<thead class="thead-light">
			<tr>
				<th>Id</th>
				<th>Want</th>
				<th>Have</th>
				<th>Message</th>
				<th>View</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="u">
				<tr>
					<td>${u.rid}</td>
					<td>${u.want}</td>
					<td>${u.have}</td>
					<td>${u.message}</td>
					<td><a href="details/${u.rid}">View</a></td>
				</tr>
			</c:forEach>
		</tbody>

	</table>

	<br />
	<button type = "button" onclick ="location.href ='add'" class="btn btn-outline-dark">Add New Post</button>
	<!-- <a href="add">Add New Post</a> -->
</body>
</html>
