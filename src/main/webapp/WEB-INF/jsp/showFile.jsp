<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>

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
		
	<style type="text/css">
	
		.upload
		{
		width:45%;
		height:150px;
		}
	
	</style>


</head>
<body>

<center>  
  
  <h2></h2>  
  <%-- <h3>  
   File name : "<strong> ${message}</strong>" uploaded successfully ! <br>
   <br>
   You need to login first to see file in your account 
  </h3>   --%>
  
  <div class="upload" id="login-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="">
    	<div class="">
      		<div class="modal-header login_modal_header">
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

        			<a class="btn btn-default" href="${pageContext.request.contextPath}/main/signup">New User Please Register</a>

        		</div>
      		</div>
      		<div class="clearfix"></div>
      		<div class="modal-footer login_modal_footer">
      		</div>
    	</div>
  	</div>
</div>
  
  
 </center>  


</body>
</html>