<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>free board</title>
<style>
#list {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #006bb3;
  color: white;
}
</style>
</head>
<body>
<h1>자유게시판</h1>
<table id="list" width="90%">
<tr>
	<th>Id</th>
	<th>Want</th>
	<th>Have</th>
	<th>Message</th>
	<th>View</th>
</tr>

<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.rid}</td>
		<td>${u.want}</td>
		<td>${u.have}</td>
		<td>${u.message}</td>
		<td><a href="details/${u.rid}">View</a></td>
	</tr>
</c:forEach>
</table>

<br/><a href="add">Add New Post</a>
</body>
</html>