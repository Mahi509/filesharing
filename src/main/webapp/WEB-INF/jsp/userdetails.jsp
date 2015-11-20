<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Files detail</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
     <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/userdetails.css" />
	

  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>


	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
 	 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script> 
  	<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/userdetails.css" />
	<script type="text/javascript">
	
	$(document).ready(function(){
	
		$('.getlinks').click(function(){
			var div = $("<div><br/> Download Link : <br/> <span>"+$(this).attr('href')+"</span></div>");
			 
			  div.dialog({
			   modal : true,
			   title :'Get Your Link',
			   width : 700,
			   buttons : {
			    Close : function() {
			    
			     $(this).dialog("close"); // closing on Ok click
			    },
			   },
			  });			
		})
		
		$(".edit").click(function(){
			
			$(this).closest('tr').find('.td').hide();
			$(this).closest('tr').find('.td1').show();
			
		})
	
		 
	})
</script>

<style type="text/css">

.td1{
display: none;
}

#box{
border-radius: 5px;
}

#save{
border-radius: 5px;
background: #C1E6F5;
border-color:#C1E6F5;
}
</style>

	
</head>
<body>
<div id="up">
<span id="button"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-cloud-download"></span> Download 
        </button>
</span>
<span id="button">
<button type="button"  class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-cloud-upload"></span> Upload 
        </button>
</span> 

<span id="button">
	<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Trash 
	</button>
</span>
<span id="button">
	<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-share"></span> Share
        </button>
</span>
<span id="button">
	<button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-edit"></span> Edit
        </button>
</span>
<span id="button">
	 <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-copy"></span> Copy 
        </button>
</span>
<span id="button">
	 <button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-scissors"></span> Cut 
        </button>
</span>
</div>

<div class="main">
<table cellpadding="10px" width="100%" border=1 frame=void rules=rows>
            <tr>
                <th align="left">File Name</th>
                <th></th>
                <th align="left">Size</th>
                <th align="left">Last Modified</th>
            </tr>

<c:forEach items="${files}" var="file">
        <tbody>
            <tr style="padding-bottom: 10px;">
                <td class="td"><span class="glyphicon glyphicon-file" id="file" ></span>${file.fileName }</td>
                <td class="td1" >
                <form:form modelAttribute="renameDetails" action="${pageContext.request.contextPath}/renameFile" method="POST"><span class="glyphicon glyphicon-file"></span>
                <input type="hidden" name="fileId" value="${file.fileId}">
                <input id="box" type="text" name="filename"  value="${file.fileName}" size="25">
                <input id="save" type="submit" value="save">
                </form:form></td>
                
                
                
                <td><div align="left"><a href="#/home/webwerks/apache-tomcat-7.0.39/webapps/files/${file.fileName}" class="getlinks"><span class="glyphicon glyphicon-share">Share</span></a> 
                &nbsp&nbsp<span class="dropdown">
    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
    <span class="caret"></span></button>
    <ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/downloadfile?name=${file.fileName }"><span style="color:#6EB7FF;" class="glyphicon glyphicon-cloud-download"></span>&nbsp &nbsp Download</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#/home/webwerks/apache-tomcat-7.0.39/webapps/files/${file.fileName}"  class="getlinks"><span style="color:#6EB7FF;" class="glyphicon glyphicon-share"></span>&nbsp &nbsp Share</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#/home/webwerks/apache-tomcat-7.0.39/webapps/files/${file.fileName}"  class="getlinks"><span style="color:#6EB7FF;" class="glyphicon glyphicon-link"></span>&nbsp &nbsp Get Links</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#" ><span style="color:#6EB7FF;" class="glyphicon glyphicon-scissors"></span>&nbsp &nbsp Cut</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="#"><span style="color:#6EB7FF;" class="glyphicon glyphicon-copy"></span>&nbsp &nbsp Copy</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/deletefile?id=${file.fileId}"><span style="color:#6EB7FF;" class="glyphicon glyphicon-home"></span>&nbsp &nbsp Delete</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a class="edit" role="menuitem" tabindex="-1" href="#"><span style="color:#6EB7FF;" class="glyphicon glyphicon-edit"></span>&nbsp &nbsp Rename</a></li>
      <li role="presentation" class="divider"></li>
      <li role="presentation"><a role="menuitem" tabindex="-1" href="${pageContext.request.contextPath}/editFile?name=${file.fileName }"><span style="color:#6EB7FF;" class="glyphicon glyphicon-pencil"></span>&nbsp &nbsp Edit</a></li>
    </ul>
  </span></div></td>
                <td>${file.filesize }</td>
                <td>${file.filedate }</td>
            </tr>
        </tbody>
</c:forEach>

    </table>    
 
</div>

</body>
</html>
