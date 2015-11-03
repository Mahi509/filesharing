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
 <span class="glyphicon glyphicon-th"></span>
</h5>
<!-- <img src="img/Cisco.jpg"  height="200px" width="200px"/> -->
<%-- <c:forEach items="${allFiles}" var="file"> --%>
<%-- <c:url var="imgUrl" value="/resources/images/${items.itemId}.jpg"/> --%>
<!-- <div id ="a"> -->
<%-- 	<form method="get" action="${pageContext.request.contextPath}/main/Login" class="submit"> --%>
<!-- 	<table> -->
			
<!-- 			<tr><td><img src="img/Puma.jpg" height="200px" width="200px"></td></tr>	 -->
<%-- 			<tr><td><b><c:out val ue="${file.fileName}"/></b></td></tr> --%>
<%-- 			<tr><td><c:out value="${file.fileby}"/></td></tr> --%>
<!-- 			<tr><td><input type="submit" value="Add to my account"></td></tr> -->
			
<!-- 	</table> -->
<%-- 	</form> --%>



<c:forEach items="${allFiles}" var="file">




<c:url var="imgUrl" value="/resources/images/${items.itemId}.jpg"/>

<div class="main">
	<form method="get" action="#" id="grid">	
			<b style="color:blue;">${file.fileName}</b><br>		 
 			 <span id="a" ><img src="img/${file.fileName}" height="100px" width="100px"></span>
 			 <br><br><br><br><br>	 
			<%-- <b><span >File :<c:out value="${file.fileName}"/></span></b><br>
			<span> By :<c:out value="${file.fileby}"/></span><br>
			<span>Last Modified :<c:out value="${file.filedate}"/></span><br>
			<span>Size :<c:out value="${file.filesize} MB"/></span><br> --%>
 			<a href="#">Add to account</a><br>
 			<!-- <div id="d"><span>...................................................................................................................................................................</span></div>
			 -->
	</form>
</div>


</c:forEach>


</body>
</body>

</html>