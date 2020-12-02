<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Add New Post</h1>
<form action="addok" method="post">
<table>
<tr><td>Want:</td><td><input type="text" name="want"/></td></tr>
<tr><td>Have:</td><td><input type="text" name="have"/></td></tr>
<tr><td>Name:</td><td><input type="text" name="name"/></td></tr>
<tr><td>Contact:</td><td><input type="text" name="contact"/></td></tr>
<tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
<tr><td>Message:</td><td><textarea cols="50" rows="5" name="message"></textarea></td></tr>
<tr><td>Password:</td><td><input type="text" name="password"/></td></tr>
<tr><td><a href="list">View All Records</a></td><td align="right"><input type="submit" value="Add Post"/></td></tr>
</table>
</form>

</body>
</html>