<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style type="text/css">

.main{
float: left;

}
	#a{
	float:left;
	}

	#b{
	float:left;
	margin-right: 550px;
	}
	
	#c{
	padding-left: 500px;
	}
	
	#grid{
	width:180px;
	height:150px;
	margin:10px;
	}
	
</style>
	</head>
	
<body>
<h5> view: 
 <a href="${pageContext.request.contextPath}/main/glymph?id=1"><span id="glymp" class="glyphicon glyphicon-th-list"></span></a>
 <a href="${pageContext.request.contextPath}/main/homeGrid?id=1"><span id="Grid" class="glyphicon glyphicon-th"></span></a>
</h5>

<c:forEach items="${allFiles}" var="file">

<div class="main" id="grid">
			<a href="${pageContext.request.contextPath}/detailsPage?name=${file.fileId}">
					<b style="color: blue;">${file.fileName}</b></a><br>   
 			 <span id="a" ><img src="${pageContext.request.contextPath}/resources/images/${file.fileName}" height="100px" width="100px"></span>
 			 <br><br><br><br><br>	 
 			<a href="#">Add to account</a><br>
</div>


</c:forEach>


</body>
</body>

</html>