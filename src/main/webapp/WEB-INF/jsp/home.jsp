<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>Twitter Bootstrap Modal Login Popup - Social Login Popup </title>
		<meta name="description" content="Twitter Bootstrap Modal Login Popup - Social Login Popup ">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
		<link href='http://fonts.googleapis.com/css?family=Bree+Serif' rel='stylesheet' type='text/css'>
		<link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'>
		
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css"/>
	
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
		<script src="${pageContext.request.contextPath}/resources/js/modernizr-2.6.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/jquery-1.10.2.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		<style>
		.my{
		width:100%;
		background-color: rgba(0, 137, 255, 0.48);
   			}
		</style>
		
	</head>
	<body>
	<%-- 	${pageContext.request.contextPath}/resources/images/share.jpg --%>

		<!-- Add your site or application content here -->
		<div class="my">
		<%-- <div class="image">
		<img src="${pageContext.request.contextPath}/resources/images/share.jpg" height="120px" width="80px"/> --%>
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
	
	
<div class="upload-form" id="uploader">
 
    <!-- Form Heading -->
    <h1 class="replace-text">Upload Form</h1>
    <a href="#" class="close" title="Close Window"><img src="img/close-button.png" alt="Close"></a>
 
    <p>Laos, alongside many of its Southeast Asian neighbours, is well known for producing.</p>
 
    <!-- Select & Upload Button -->
    <div>
        <a class="button" id="pickfiles" href="#">Select</a>
        <a class="button" id="uploadfiles" href="#">Upload</a>
    </div>
 
    <!-- File List -->
    <div id="filelist" class="cb"></div>
 
    <!-- Progress Bar -->
    <div id="progressbar"></div>
 
    <!-- Close After Upload -->
    <div id="closeAfter">
        <span class="checkbox">
            <input type="checkbox" name="checkbox" id="checkbox">
            <label for="checkbox">Close window after upload</label>
        </span>
    </div>
 
</div>s
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
	        			<div class="form-group">
		              		<input type="text" id="username" placeholder="Enter your name" value="" class="form-control login-field">
		              		<i class="fa fa-user login-field-icon"></i>
		            	</div>
		
		            	<div class="form-group">
		            	  	<input type="password" id="login-pass" placeholder="Password" value="" class="form-control login-field">
		              		<i class="fa fa-lock login-field-icon"></i>
		            	</div>
		
		            	<a href="#" class="btn btn-success modal-login-btn">Login</a>
		            	<a href="#" class="login-link text-center">Lost your password?</a>
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
        			<button class="btn btn-default"> New User Please Register</button>
        		</div>
      		</div>
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		</div>
    	</div>
  	</div>
</div>
