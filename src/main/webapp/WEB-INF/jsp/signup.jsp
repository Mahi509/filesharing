<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signup.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/signup.min.js"></script>



</head>
<body>

	<div class="main">
		<div class="one">

			<div class="register" align="center">

				<h3>Create your account</h3>


				<form id="reg-form">

					<div id="left">

						<label for="firstName">FirstName<sup style="color: red;">*</sup></label>
						<input type="text" id="firstName" name="firstName"
							spellcheck="false" placeholder="firstname"   title="FirstName goes here"  /> <label
							for="firstName" generated="true" class="error" style="color: red"></label>

					</div >
					<div id="left">
						<label for="lastName">LastName<sup style="color: red;">*</sup></label>
						<input type="text" id="lastName" name="lastName"
							spellcheck="false" placeholder="lastname" title="LastName goes here" /> <label
							for="lastName" generated="true" class="error" style="color: red"></label>
					</div>
					
					<div id="left">
						<label for="username">Username<sup style="color: red;">*</sup></label>
						<input type="text" id="username" name="username"
							spellcheck="false" placeholder="eg.Mahi123" title="UserName goes here" /> <label
							for="username" generated="true" class="error" style="color: red"></label>
					</div>
					<div id="left">
						<label for="password">Password<sup style="color: red;">*</sup></label>
						<input type="password" name="password" id="password" title="Password goes here"  /> <label
							for="password" generated="true" class="error" style="color: red"></label>
					</div>
						<div id="right">
						<label for="confirmpassword">Confirm Password <sup
							style="color: red;">*</sup></label> <input type="password"
							name="confirmpassword" id="confirmpassword" title="ConfirmPassword goes here" /> <label
							for="confirmpassword" generated="true" class="error"
							style="color: red"></label>
					</div>
					<div id="email">
						<label for="email">Email<sup style="color: red;">*</sup></label> <input
							type="text" id="email" name="email" spellcheck="false"
							placeholder="abc@xyz.com" title="Email goes here" /> <label for="email" generated="true"
							class="error" style="color: red"></label>
					</div>
				
					<div class="button1" align="center">
						<label> <input type="submit" value="Sign Up"
							id="create-account" class="button" /></label>
					</div>

				</form>

			</div>
		</div>

	</div>






</body>
</html>