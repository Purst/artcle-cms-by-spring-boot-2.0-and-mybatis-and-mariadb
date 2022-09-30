<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>안녕하세요</title>
</head>
<body>
	<c:forEach var="list" items="${list}" varStatus="status">
		${list.id}
		${list.regDate}
		${list.title}
		${list.contents}<br>
	</c:forEach>
</body>
</html>
