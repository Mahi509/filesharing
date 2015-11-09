<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<style type="text/css">

#glymp {
    padding-left: 20px;
}
.glyphicon {
    position: relative;
    top: 10px;
    display: inline-block;
    font-family: 'Glyphicons Halflings';
    font-style: normal;
    font-weight: 400;
    padding: 15px;
    line-height: 1;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
}

</style>

</head>
<body>

<div id="menu">
<p id="list"> 
<a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp3"><span id="glymp" class="glyphicon glyphicon-headphones"> Music</span></a>
 <a href="${pageContext.request.contextPath}/main/glymph?id=all"><span id="glymp" class="glyphicon glyphicon-file"> Files</span></a><br/>
<a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp4"><span id="glymp" class="glyphicon glyphicon-film"> Video</span></a>   
 <a href="${pageContext.request.contextPath}/main/getByExtn?id=.jpeg"><span id="glymp" class="glyphicon glyphicon-camera"> Photo</span></a><br/>  
<a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp4"><span id="glymp" class="glyphicon glyphicon-facetime-video"> Videos</span></a>
 <a href="${pageContext.request.contextPath}/main/getByExtn?id=.pdf"><span id="glymp" class="glyphicon glyphicon-book"> Books</span></a><br/>
 <a href="${pageContext.request.contextPath}/main/userContent?id=.pdf"><span id="glymp" class="glyphicon glyphicon-bullhorn"> UserContent</span></a>
 
 </p>
</div>
</body>
</html>