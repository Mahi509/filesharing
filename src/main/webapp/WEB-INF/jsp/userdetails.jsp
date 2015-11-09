<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Files detail</title>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
#up{
margin-left:20px;
padding-bottom: 50px;


}
.main{
margin-left:20px;
background-color: #D4F1F8;
border-radius:15px;
width: 60%;
}

td, th {
    padding: 10px;
}

#file
{
height: 10px;
width: 30px;
}

#button{
float: left;
padding-left: 5px;
}
</style>

<script type="text/javascript">

	$(document).ready(function(){
	alert("ready");
		$("#drop").click(function(){
			
				$(".root").show();
				
		})
		
		
	});
	

</script>

</head>
<body>

<div id="up">
<span id="button"><button type="button" class="btn btn-default btn-sm">
          <span class="glyphicon glyphicon-cloud-download"></span> Download 
        </button>
</span>
<span id="button">
<button type="button" class="btn btn-default btn-sm">
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
                <td><span class="glyphicon glyphicon-file" id="file"></span>${file.fileName }</td>
                <td><a href="#"><span class="glyphicon glyphicon-share">Share</span></a> 
                &nbsp&nbsp<a href="#" id="drop"><span class="glyphicon glyphicon-collapse-down">
              
                </span>
     			</a></td>
                <td>${file.filesize }</td>
                <td>${file.filedate }</td>
            </tr>
        </tbody>
</c:forEach>

    </table>
 </div>



</body>
<ul class="root" style="display:none;" >
					<li ><a href="#Dashboard" >Dashboard</a></li>
					<li ><a href="#Profile" >Profile</a></li>
					<li ><a href="#settings">Settings</a></li>
					<li ><a href="#feedback">Send Feedback</a></li>
				</ul>
</html>