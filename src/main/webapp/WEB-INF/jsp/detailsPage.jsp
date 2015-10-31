<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/detailPageCss.css" />

</head>
<body>
<div class="mainclass">
<c:set value="${filename}" var="file"/>
<h1><c:out value="${file.fileName}"></c:out></h1>
<c:out value="${file.fileId}"></c:out>
<c:out value="${file.fileby}"></c:out>
<c:out value="${file.filedate}"></c:out>
<c:choose>
<c:when test="${ext=='mp3'}">
<a  class="btn btn-default" href="${pageContext.request.contextPath}/img/${file.fileName}">Play music </a>
</c:when>
<c:otherwise>

</c:otherwise>
</c:choose>
</div>
</body>
</html>