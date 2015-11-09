<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
		<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		


</head>
<body>
 <form:form id="searchbox" action="">
    <input id="search" type="text" placeholder="Type here">
    <input id="submit" type="submit" value="Search">     
</form:form>
 <p id="list"> 
 <a href="${pageContext.request.contextPath}/main/glymph?id=all"><span id="glymp" class="glyphicon glyphicon-file">All Files</span></a>
 <a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp3"><span id="glymp" class="glyphicon glyphicon-headphones"> Music</span></a>
<a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp4"><span id="glymp" class="glyphicon glyphicon-film"> Video</span>   </a>
 <a href="${pageContext.request.contextPath}/main/getByExtn?id=.jpeg"><span id="glymp" class="glyphicon glyphicon-camera"> Photo</span> </a> 
<a href="${pageContext.request.contextPath}/main/getByExtn?id=.mp4"><span id="glymp" class="glyphicon glyphicon-facetime-video"> Videos </span></a>
 <a href="${pageContext.request.contextPath}/main/getByExtn?id=.pdf"><span id="glymp" class="glyphicon glyphicon-book"> Books</span></a>
 </p>  


 <form:form method="post" enctype="multipart/form-data"  
   modelAttribute="uploadedFile" action="fileUpload.htm">  
   <table>  
	<tr>  
     <!-- <td><input type="button"  value="UPLOAD YOUR DATA"> </td>  --> 
     <td><input type="file" id="upload" name="file"  >  
    
     </td>  
    </tr>  
    <tr>  
     <td> </td>  
     <td><input id="upl" type="submit" value="Upload" />  
     </td>  
     <td> </td>  
    </tr>  
   </table>  
  </form:form>  

</body>
</html>