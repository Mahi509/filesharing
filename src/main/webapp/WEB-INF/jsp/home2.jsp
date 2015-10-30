<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
.main {
	float: left;
}

#a {
	float: left;
}

#b {
	float: left;
	margin-right: 550px;
}

#c {
	padding-left: 500px;
}
</style>
</head>

<body>

	<c:forEach items="${allFiles}" var="file">
		<c:url var="imgUrl" value="/resources/images/${items.itemId}.jpg" />
		<div class="main">
			<form method="get" action="#" class="submit">


				<span id="a"><img
					src="${pageContext.request.contextPath}/resources/images/mp3image.jpg"
					height="200px" width="200px"></span> <a href="${pageContext.request.contextPath}/detailsPage?name=${file.fileId}"><b
					style="color: blue;">${file.fileName}</b></a><br> <b><span>File
						:<c:out value="${file.fileName}" />
				</span></b><br> <span> By :<c:out value="${file.fileby}" /></span><br>
				<span>Last Modified :<c:out value="${file.filedate}" /></span><br>
				<span>Size :<c:out value="${file.filesize} MB" /></span><br>
				<span>Size :<c:out value="${file.fileId} ID" /></span> <a
					href="#"><span id="c">Add to my account</span></a><br>
				<div id="d">
					<span>...................................................................................................................................................................</span>
				</div>

			</form>
		</div>
	</c:forEach>
</body>
</body>

</html>