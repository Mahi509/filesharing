<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
	.bs-example{
    	margin: 20px;
    }
</style>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<script type="text/javascript" src="jquery-1.2.6.min.js"></script>

<link href='http://fonts.googleapis.com/css?family=Bree+Serif'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Philosopher'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/styles.css" />
<script
	src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<style type="text/css">
#searchbox {
	background-color: rgba(0, 137, 255, 0.48);
	background-image: linear-gradient(#fff, #d4e8ec);
	border-radius: 35px;
	border-width: 1px;
	border-style: solid;
	border-color: #c4d9df #a4c3ca #83afb7;
	width: 530px;
	height: 35px;
	padding: 10px;
	margin-top: 5px;
	padding-bottom: 50px;
	overflow: hidden;
	margin-left: 0%;
	float: left;
}

#main {
	background-color: #C1E6F5;
	height: 80px;
}

#mybox {
	margin-left: 250px
}

#glyph {
	font-size: 30px;
	padding: 13px;
}

#comment{
padding-top:2px;
}

#msg {
	font-size: 23px;
	text-decoration: none;
}
#home_img{
	height:57px;
	width:180px;
	margin-top: 5px;
	float:left;
	margin-left: 20px;
  	margin-right: 20px;
}
</style>


</head>




<body>
	<span><a href="${pageContext.request.contextPath}/main/userfiledetails">
	<%-- <img id="home_img" alt="Home" src="${pageContext.request.contextPath}/resources/images/home_img.jpeg"> --%>
	<img id="home_img" alt="Home" src="${pageContext.request.contextPath}/resources/images/logo.png">
	</a></span>
	<div id="main">
		
		<span id="mybox"><form:form id="searchbox" action="${pageContext.request.contextPath}/main/userSearch">
				<input id="search" name="search" type="text" placeholder="Type here">
				<input id="submit" type="submit" value="Search">
			</form:form></span>
			
			 <a id="msg" href="${pageContext.request.contextPath}/main/userfiledetails"> Haider <span class="glyphicon glyphicon-user"></span></a>  
		<span class="bs-example">
   		<span class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">
   		 <b class="caret"></b></a><ul class="dropdown-menu">
            <li><a href="${pageContext.request.contextPath}/main/signout">Sign Out</a></li>
            <li><a href="${pageContext.request.contextPath}/main/userfiledetails">My Account</a></li>
        </ul></span>
        </span> 
			
		  <a href="#"> <span id="glyph" class="glyphicon glyphicon-comment"></span>
		</a> <a href="#"> <span id="glyph" class="glyphicon glyphicon-cog"></span>
		</a>
	</div>

</body>
</html>