<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

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
	width: 100%;
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
	
}

</style>
</head>

<body>
 


<div class="main">

 <div id="content">
 <c:forEach items="${allFiles}" var="file">
 <div class=z>
		
			 <span id="a"><img src="${pageContext.request.contextPath}/resources/images/mp3image.jpg" height="200px" width="200px"></span> 
 			 	<a href="${pageContext.request.contextPath}/detailsPage?name=${file.fileId}">
					<b style="color: blue;">${file.fileName}</b></a><br>  
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

</body>

</html>
