<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<style type="text/css">
.main {
	float: left;
}

#a {
	float: left;
}


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pagination.css" type="text/css" />

<script src="js/jquery.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/pagination.js"></script>



<script type="text/javascript">

var pager = new Imtech.Pager();

$(document).ready(function() {

    pager.paragraphsPerPage = 5; // set amount elements per page

    pager.pagingContainer = $('#content'); // set of main container

    pager.paragraphs = $('div.z', pager.pagingContainer); // set of required containers

    pager.showPage(1);

});

</script>


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

<script type="text/javascript">
$(document).ready(function(){
	$("#Grid").click(function(){
		
		
	})
	
})

</script>

</head>

<body>
	<h5>
		view: <a href="${pageContext.request.contextPath}/main/glymph?id=1"><span
			id="glymp" class="glyphicon glyphicon-th-list"></span></a> <a
			href="${pageContext.request.contextPath}/main/homeGrid?id=1"><span
			id="Grid" class="glyphicon glyphicon-th"></span></a>
	</h5>
	<!-- <img src="img/Cisco.jpg"  height="200px" width="200px"/> -->
	<%-- <c:forEach items="${allFiles}" var="file"> --%>
	<%-- <c:url var="imgUrl" value="/resources/images/${items.itemId}.jpg"/> --%>
	<!-- <div id ="a"> -->
	<%-- 	<form method="get" action="${pageContext.request.contextPath}/main/Login" class="submit"> --%>
	<!-- 	<table> -->

	<!-- 			<tr><td><img src="img/Puma.jpg" height="200px" width="200px"></td></tr>	 -->
	<%-- 			<tr><td><b><c:out value="${file.fileName}"/></b></td></tr> --%>
	<%-- 			<tr><td><c:out value="${file.fileby}"/></td></tr> --%>
	<!-- 			<tr><td><input type="submit" value="Add to my account"></td></tr> -->

	<!-- 	</table> -->
	<%-- 	</form> --%>

	<c:forEach items="${allFiles}" var="file">

		<c:url var="imgUrl" value="/resources/images/${items.itemId}.jpg" />


		<div class="main">
			<form method="get" action="#" class="submit">
				<span id="a"><img src="img/${file.fileName}" height="200px"
					width="200px"></span> <b style="color: blue;">${file.fileName}</b><br>
				<b><span>File :<c:out value="${file.fileName}" /></span></b><br>
				<span> By :<c:out value="${file.fileby}" /></span><br> <span>Last
					Modified :<c:out value="${file.filedate}" />
				</span><br> <span>Size :<c:out value="${file.filesize} MB" /></span><br>
				<a href="#"><span id="c">Add to my account</span></a><br>

	</form>
	</c:forEach>
	


</style>
</head>

<body>
 


<div class="main">

 <div id="content">
 <c:forEach items="${allFiles}" var="file">
 <div class=z>
		
			 <span id="a" ><img src="img/${file.fileName}" height="200px" width="200px"></span>
 			 	<b style="color:blue;">${file.fileName}</b><br>	 
				<b><span >File :<c:out value="${file.fileName}"/></span></b><br>
				<span> By :<c:out value="${file.fileby}"/></span><br>
				<span>Last Modified :<c:out value="${file.filedate}"/></span><br>
				<span>Size :<c:out value="${file.filesize} MB"/></span><br>
 				<a href="#"><span id="c">Add to my account</span></a><br>
 				<div id="d"><span>...................................................................................................................................................................</span></div>
	</div>
	</c:forEach>

</div>
</div>		
<div id="pagingControls"></div>


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
					<a href="#"><span id="c">Add to my account</span></a><br>

				<div id="d">
					<span>...................................................................................................................................................................</span>
				</div>

			</form>
		</div>
	</c:forEach>
</body>

</body>

</html>
