<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Form</title>
</head>
<body>

	<h1>Edit Form</h1>
	<form method="POST" action="../editok">
		<input type="hidden" name="rid" value="${u.rid}" />
		<table>
			<tr>
				<td>Want:</td>
				<td><input type="text" name="want" value="${u.want}"/></td>
			</tr>
			<tr>
				<td>Have:</td>
				<td><input type="text" name="have" value="${u.have}"/></td>
			</tr>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="${u.name}"/></td>
			</tr>
			<tr>
				<td>Contact:</td>
				<td><input type="text" name="contact" value="${u.contact}"/></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" value="${u.email}"/></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" value="${u.password}"/></td>
			</tr>
			<tr>
				<td>Message:</td>
				<td><textarea cols="50" rows="5" name="message">${u.message}</textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit Post" /> <input
					type="button" value="Cancel" onclick="history.back()" /></td>
			</tr>
		</table>
		</form>
</body>
</html>