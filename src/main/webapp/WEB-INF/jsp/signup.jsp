<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/signUpCss.css" />
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/signup.min.js"></script>

<style type="text/css">
#left {
	padding-bottom: 25px;
}

#right {
	padding-bottom: 35px;
	padding-top: 25px;
	padding-right: 70px;
}

#email {
	margin-left: 15px;
}
</style>

</head>
<body>

	<div class="main">
		<div class="one">

			<div class="register" align="center">

				<h3>Create your account</h3>


				<form:form id="reg-form" action="${pageContext.request.contextPath}/usermain/register" method="Post"
					modelAttribute="userData">

					<div id="left">

						<form:label path="firstName">FirstName<sup
								style="color: red;">*</sup>
						</form:label>
						<form:input path="firstName" id="firstName" name="firstName"
							spellcheck="false" placeholder="firstname"
							title="FirstName goes here" />
						<form:errors path="firstName" cssStyle="color: red;"></form:errors>

					</div>
					<div id="left">
						<form:label path="lastName">LastName<sup
								style="color: red;">*</sup>
						</form:label>
						<form:input path="lastName" id="lastName" name="lastName"
							spellcheck="false" placeholder="lastname"
							title="LastName goes here" />
						<form:errors path="lastName" cssStyle="color:red"></form:errors>
					</div>

					<div id="left">
						<form:label path="userName">UserName<sup
								style="color: red;">*</sup>
						</form:label>
						<form:input path="userName" id="userName" name="userName"
							spellcheck="false" placeholder="eg.Mahi123"
							title="UserName goes here" />
						<form:errors path="userName"></form:errors>
					</div>
					<div id="left">
						<form:label path="password">Password<sup
								style="color: red;">*</sup>
						</form:label>
						<form:password path="password" name="password" id="password"
							title="Password goes here" />
						<form:errors path="password" cssClass="errors"></form:errors>
					</div>
					<div id="left">
						<form:label path="confirmPassword">Confirm Password <sup
								style="color: red;">*</sup>
						</form:label>
						<form:password path="confirmPassword" name="confirmPassword"
							id="confirmpassword" title="ConfirmPassword goes here" />
						<form:errors path="confirmPassword" cssClass="errors"></form:errors>
					</div>
					<div id="left">
						<form:label path="emailId">Email<sup
								style="color: red;">*</sup>
						</form:label>
						<form:input path="emailId" id="emailId" name="emailId"
							spellcheck="false" placeholder="abc@xyz.com"
							title="Email goes here" />
						<form:errors path="emailId" cssClass="errors"></form:errors>
					</div>

					<div class="button1" align="center">
						<input type="submit" value="Sign Up" id="create-account"
							class="button" />
					</div>

				</form:form>

			</div>
		</div>

	</div>

</body>
</html>