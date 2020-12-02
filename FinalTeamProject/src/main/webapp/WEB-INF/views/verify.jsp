<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="width: 100%; text-align =center; padding-top: 100px">
		<form method="post" action="../verifyOk">
			<input type="hidden" name="rid" value="${u.rid}"/>
			<table>
				<tr><td>Want</td><td>${u.want}</td></tr>
				<tr><td>Have</td><td>${u.have}</td></tr>
				<tr><td>Name</td><td>${u.name}</td></tr>
			</table>
			<div>
				<label>Password: </label><input type="password" name="password">
			</div>
			<button type="submit">login</button>
		</form>
	</div>
</body>
</html>