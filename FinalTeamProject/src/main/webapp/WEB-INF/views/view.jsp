<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	rid :  ${u.rid}</br>
	want : ${u.want}</br>
	have : ${u.have}</br>
	name : ${u.name}</br>
	contact : ${u.contact}</br>
	email : ${u.email} </br>
	message : ${u.message}</br>
	<a href="../">See the List</a>
	<a href="../verify/${u.rid}">Edit</a>
</body>
</html>