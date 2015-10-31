<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Twitter Bootstrap Modal Login Popup - Social Login Popup </title>
		<meta name="description" content="Twitter Bootstrap Modal Login Popup - Social Login Popup ">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="jquery-1.2.6.min.js"></script>  	
		<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
		<link href='http://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'>
		
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/styles.css" />
		<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		
	
	</head>
	<body>
	

		<div class="my">
		
		<div class="container-fluid">
		
			<div class="row">
			
				<div class="col-md-offset-4 col-lg-offset-4 col-md-4 col-lg-4">
					<button style="align:left;margin:0 0 0 150%" id='modal-launcher' class="btn btn-primary btn-lg" data-toggle="modal" data-target="#login-modal">
					  Sign In
					</button>
				</div>	
			</div>
		</div>
	</div>
	
	
 
  <form:form id="searchbox" action="">
    <input id="search" type="text" placeholder="Type here">
    <input id="submit" type="submit" value="Search">     
</form:form>
 <p id="list"> 
 <a href="${pageContext.request.contextPath}/main/glymph?id=1"><span id="glymp" class="glyphicon glyphicon-headphones"> Music</span></a>
 <a href="#"><span id="glymp" class="glyphicon glyphicon-file"> Files</span></a>
<a href="#"><span id="glymp" class="glyphicon glyphicon-film"> Video</span>   </a>
 <a href="#"><span id="glymp" class="glyphicon glyphicon-camera"> Photo</span> </a> 
<a href="#"><span id="glymp" class="glyphicon glyphicon-facetime-video"> Videos </span></a>
 <a href="#"><span id="glymp" class="glyphicon glyphicon-book"> Books</span></a>
 </p>  
 
 

    <!-- File List -->
    <div id="filelist" class="cb"></div>
 
    <!-- Progress Bar -->
    <div id="progressbar"></div>
 
    <!-- Close After Upload -->a
    <div id="closeAfter">
        <span class="checkbox">
            <input type="checkbox" name="checkbox" id="checkbox">
            <label for="checkbox">Close window after upload</label>
        </span>
    </div>
 


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
     <td><input type="submit" value="Upload" />  
     </td>  
     <td> </td>  
    </tr>  
   </table>  
  </form:form>  



	</body>
</html>

<div class="modal fade" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
    	<div class="modal-content">
      		<div class="modal-header login_modal_header">
        		<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        		<h2 class="modal-title" id="myModalLabel">Login to Your Account</h2>
      		</div>
      		<div class="modal-body login-modal">
      			<br/>
      			<div class="clearfix"></div>
      			<div id='social-icons-conatainer'>
	        		<div class='modal-body-left'>
	        		<form:form action="${pageContext.request.contextPath}/authenticate" method="POST">
	        			<div class="form-group">
		              		<input type="text" id="username" placeholder="Enter your name" name="username" class="form-control login-field">
		              		<i class="fa fa-user login-field-icon"></i>
		            	</div>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass" placeholder="Password" name="password" class="form-control login-field">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
		
		            	<%-- <a href="${pageContext.request.contextPath}/authenticate?username=password=" class="btn btn-success modal-login-btn">Login</a> --%>
		            	<input type="submit" class="btn btn-success modal-login-btn" value="Login">
		            	<a href="${pageContext.request.contextPath}/forgotpassword" class="login-link text-center">Lost your password?</a>
		            	</form:form>
	        		</div>
	        	
	        		<div class='modal-body-right'>
	        			<div class="modal-social-icons">
	        				<a href='#' class="btn btn-default facebook"> <i class="fa fa-facebook modal-icons"></i> Sign In with Facebook </a>
	        				<a href='#' class="btn btn-default twitter"> <i class="fa fa-twitter modal-icons"></i> Sign In with Twitter </a>
	        				<a href='#' class="btn btn-default google"> <i class="fa fa-google-plus modal-icons"></i> Sign In with Google </a>
	        				<a href='#' class="btn btn-default linkedin"> <i class="fa fa-linkedin modal-icons"></i> Sign In with Linkedin </a>
	        			</div> 
	        		</div>	
	        		<div id='center-line'> OR </div>
	        	</div>																												
        		<div class="clearfix"></div>
        		
        		<div class="form-group modal-register-btn">

        			<%-- <button class="btn btn-default" onclick="document.forms[0].action = '${pageContext.request.contextPath}/WEB-INF/jsp/signup.jsp'; return true;">New User Please Register</button> --%>

        			<a class="btn btn-default" href="${pageContext.request.contextPath}/main/signup">New User Please Register</a>

        		</div>
      		</div>
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		</div>
    	</div>
  	</div>
</div>
