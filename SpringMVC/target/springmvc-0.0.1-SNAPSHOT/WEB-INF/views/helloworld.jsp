<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spring MVC My Second WEB app</title>
</head>
<body>
	<h2>${helloWorld.message}</h2>
	<h4>This Time : ${helloWorld.dateTime}</h4>
	<h1>${page}</h1>
</body>
</html>