<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시물 리스트</title>
</head>
<body>
	<h1>게시물 리스트</h1>
	<c:forEach items="${list}" var="article">
		<section>${article.id}, ${article.regDate}, ${article.title} ,${article.contents}</section>
		<hr>
	</c:forEach>
</body>
</html>
